// fsm_0.v

module fsm_0 (
		// global signals
		input  wire        clk,
		input  wire        reset,

		// AXI4 write address, write data, write response channel signals
		input  wire [3:0]  axs_s0_awid,
		input  wire [31:0] axs_s0_awaddr,
		input  wire [7:0]  axs_s0_awlen,
		input  wire [2:0]  axs_s0_awsize,
		input  wire [1:0]  axs_s0_awburst,
		input  wire        axs_s0_awvalid,
		output reg         axs_s0_awready,

		input  wire [31:0] axs_s0_wdata,
		input  wire [3:0]  axs_s0_wstrb,
		input  wire        axs_s0_wvalid,
		output reg         axs_s0_wready,

		input  wire        axs_s0_bready,
		output reg [3:0]   axs_s0_bid,
		output reg         axs_s0_bvalid,

		// FIFO control signals
		input  wire        varint_in_fifo_full,
		output reg         varint_in_fifo_clr,
		output reg         varint_in_fifo_push,
		output reg         varint_in_index_clr,
		output reg         varint_in_index_push,

		input  wire        raw_data_in_fifo_full,
		output reg         raw_data_in_fifo_clr,
		output reg         raw_data_in_fifo_push,
		output reg         raw_data_in_index_clr,
		output reg         raw_data_in_index_push,
		output reg         raw_data_in_wstrb_clr,
		output reg         raw_data_in_wstrb_push,

		// FIFO data signals
		output reg  [9:0]  index,
		
		output reg  [31:0] wdata,
		output reg  [3:0]  wstrb
	);

	// datapath registers
	reg [3:0]  awid;
	reg [31:0] awaddr;
	reg [7:0]  awlen;
	reg [2:0]  awsize;
	reg [1:0]  awburst;
	
	// datapath control signals
	reg index_clr, index_inc;
	reg awid_clr, awaddr_clr, awlen_clr, awsize_clr, awburst_clr;
	reg awid_ld, awaddr_ld, awlen_ld, awsize_ld, awburst_ld;
	reg wdata_clr, wdata_ld, wstrb_clr, wstrb_ld;

	// state definitions (one-hot encoding)
	parameter INIT        = 16'h0001,
				 AW_READY    = 16'h0002,
				 W_READY_VN  = 16'h0004,
				 W_READY_VL  = 16'h0008,
				 W_READY_RN  = 16'h0010,
				 W_READY_RL  = 16'h0020,
				 VF_FULL     = 16'h0040,
				 RF_FULL     = 16'h0080,
				 B_READY_VN  = 16'h0100,
				 B_READY_VL  = 16'h0200,
				 B_READY_RN  = 16'h0400,
				 B_READY_RL  = 16'h0800,
				 MASTER_WAIT = 16'h1000;

	// state memory logic
	reg [15:0] state;
	reg [15:0] next_state;
	
	always @(posedge clk)
	begin
		if (reset)
			state <= INIT;
		else begin
			index   <= (index_inc) ? ((index == 10'd1023) ? 10'b0000000000 : index + 10'd1) : 
			                      ((index_clr) ? 10'b0000000000 : index);

			awid    <= (awid_ld) ? axs_s0_awid : ((awid_clr) ? 4'h0 : awid);
			awaddr  <= (awaddr_ld) ? axs_s0_awaddr :
			           ((awaddr_clr) ? 32'h0000_0000 : awaddr);
			awlen   <= (awlen_ld) ? axs_s0_awlen : ((awlen_clr) ? 8'h00 : awlen);
			awsize  <= (awsize_ld) ? axs_s0_awsize : ((awsize_clr) ? 3'b000 : awsize);
			awburst <= (awburst_ld) ? axs_s0_awburst : ((awburst_clr) ? 2'b00 : awburst);

			wdata   <= (wdata_ld) ? axs_s0_wdata : ((wdata_clr) ? 32'h0000_0000 : wdata);
			wstrb   <= (wstrb_ld) ? axs_s0_wstrb : ((wstrb_clr) ? 4'h0 : wstrb);

			state <= next_state;
		end
	end

	// next state, output logic
	always @*
	begin
		// default values (may be overwritten)
		axs_s0_awready = 1'b0;
		axs_s0_wready = 1'b0;
		axs_s0_bvalid = 1'b0;

		varint_in_fifo_clr = 1'b0;
		varint_in_fifo_push = 1'b0;
		varint_in_index_clr = 1'b0;
		varint_in_index_push = 1'b0;
		raw_data_in_fifo_clr = 1'b0;
		raw_data_in_fifo_push = 1'b0;
		raw_data_in_index_clr = 1'b0;
		raw_data_in_index_push = 1'b0;
		raw_data_in_wstrb_clr = 1'b0;
		raw_data_in_wstrb_push = 1'b0;

		index_clr = 1'b0;
		index_inc = 1'b0;

		awid_clr = 1'b0;
		awid_ld = 1'b0;
		awaddr_clr = 1'b0;
		awaddr_ld = 1'b0;
		awlen_clr = 1'b0;
		awlen_ld = 1'b0;
		awsize_clr = 1'b0;
		awsize_ld = 1'b0;
		awburst_clr = 1'b0;
		awburst_ld = 1'b0;
		
		wdata_clr = 1'b0;
		wdata_ld = 1'b0;
		wstrb_clr = 1'b0;
		wstrb_ld = 1'b0;

		// datapath logic
		axs_s0_bid = awid;

		case (state)
			INIT:		
				begin
					varint_in_fifo_clr = 1'b1;
					varint_in_index_clr = 1'b1;
					raw_data_in_fifo_clr = 1'b1;
					raw_data_in_index_clr = 1'b1;
					raw_data_in_wstrb_clr = 1'b1;

					index_clr = 1'b1;

					awid_clr = 1'b1;
					awaddr_clr = 1'b1;
					awlen_clr = 1'b1;
					awsize_clr = 1'b1;
					awburst_clr = 1'b1;
					
					wdata_clr = 1'b1;
					wstrb_clr = 1'b1;

					next_state = AW_READY;
				end

			AW_READY:
				begin
					axs_s0_bvalid = 1'b0;
					axs_s0_awready = 1'b1;
					
					awid_ld = 1'b1;
					awaddr_ld = 1'b1;
					awlen_ld = 1'b1;
					awsize_ld = 1'b1;
					awburst_ld = 1'b1;
				
					if (~axs_s0_awvalid)
						next_state = AW_READY;
					else if (axs_s0_awvalid && axs_s0_awaddr[7:0] == 8'h0x
									&& varint_in_fifo_full)
						next_state = VF_FULL;
					else if (axs_s0_awvalid && axs_s0_awaddr[7:0] == 8'h00 
									&& ~varint_in_fifo_full)
						next_state = W_READY_VN;
					else if (axs_s0_awvalid && axs_s0_awaddr[7:0] == 8'h01
									&& ~varint_in_fifo_full)
						next_state = W_READY_VL;
					else if (axs_s0_awvalid && axs_s0_awaddr[7:0] == 8'hFx
									&& raw_data_in_fifo_full)
						next_state = RF_FULL;
					else if (axs_s0_awvalid && axs_s0_awaddr[7:0] == 8'hF0
									&& ~raw_data_in_fifo_full)
						next_state = W_READY_RN;
					else if (axs_s0_awvalid && axs_s0_awaddr[7:0] == 8'hF1
									&& ~raw_data_in_fifo_full)
						next_state = W_READY_RL;
					else // error
						next_state = INIT;
				end

			W_READY_VN:
				begin
					axs_s0_awready = 1'b0;
					axs_s0_wready = 1'b1;
					
					wdata_ld = 1'b1;
					wstrb_ld = 1'b1;
				
					if (~axs_s0_wvalid)
						next_state = W_READY_VN;
					else
						next_state = B_READY_VN;
				end
			
			W_READY_VL:
				begin
					axs_s0_awready = 1'b0;
					axs_s0_wready = 1'b1;
					
					wdata_ld = 1'b1;
					wstrb_ld = 1'b1;
				
					if (~axs_s0_wvalid)
						next_state = W_READY_VL;
					else
						next_state = B_READY_VL;
				end
			
			W_READY_RN:
				begin
					axs_s0_awready = 1'b0;
					axs_s0_wready = 1'b1;
					
					wdata_ld = 1'b1;
					wstrb_ld = 1'b1;
				
					if (~axs_s0_wvalid)
						next_state = W_READY_RN;
					else
						next_state = B_READY_RN;
				end
			
			W_READY_RL:
				begin
					axs_s0_awready = 1'b0;
					axs_s0_wready = 1'b1;
					
					wdata_ld = 1'b1;
					wstrb_ld = 1'b1;
				
					if (~axs_s0_wvalid)
						next_state = W_READY_RL;
					else
						next_state = B_READY_RL;
				end
			
			VF_FULL:
				begin
					axs_s0_awready = 1'b0;
					axs_s0_wready = 1'b0;
				
					if (varint_in_fifo_full)
						next_state = VF_FULL;
					else if (~varint_in_fifo_full && awaddr[7:0] == 8'h00)
						next_state = W_READY_VN;
					else if (~varint_in_fifo_full && awaddr[7:0] == 8'h01)
						next_state = W_READY_VL;
					else // error
						next_state = INIT;
				end
			
			RF_FULL:
				begin
					axs_s0_awready = 1'b0;
					axs_s0_wready = 1'b0;
				
					if (raw_data_in_fifo_full)
						next_state = RF_FULL;
					else if (~raw_data_in_fifo_full && awaddr[7:0] == 8'hF0)
						next_state = W_READY_RN;
					else if (~raw_data_in_fifo_full && awaddr[7:0] == 8'hF1)
						next_state = W_READY_RL;
					else // error
						next_state = INIT;
				end
			
			B_READY_VN:
				begin
					axs_s0_wready = 1'b0;
					axs_s0_bvalid = 1'b1;

					varint_in_fifo_push = 1'b1;
					varint_in_index_push = 1'b1;
				
					if (~axs_s0_bready)
						next_state = MASTER_WAIT;
					else
						next_state = AW_READY;
				end
			
			B_READY_VL:
				begin
					axs_s0_wready = 1'b0;
					axs_s0_bvalid = 1'b1;

					varint_in_fifo_push = 1'b1;
					varint_in_index_push = 1'b1;
					
					index_inc = 1'b1;
				
					if (~axs_s0_bready)
						next_state = MASTER_WAIT;
					else
						next_state = AW_READY;
				end

			B_READY_RN:
				begin
					axs_s0_wready = 1'b0;
					axs_s0_bvalid = 1'b1;

					raw_data_in_fifo_push = 1'b1;
					raw_data_in_index_push = 1'b1;
					raw_data_in_wstrb_push = 1'b1;
				
					if (~axs_s0_bready)
						next_state = MASTER_WAIT;
					else
						next_state = AW_READY;
				end
			
			B_READY_RL:
				begin
					axs_s0_wready = 1'b0;
					axs_s0_bvalid = 1'b1;

					raw_data_in_fifo_push = 1'b1;
					raw_data_in_index_push = 1'b1;
					raw_data_in_wstrb_push = 1'b1;
					
					index_inc = 1'b1;
				
					if (~axs_s0_bready)
						next_state = MASTER_WAIT;
					else
						next_state = AW_READY;
				end
			
			MASTER_WAIT:
				begin
					axs_s0_bvalid = 1'b1;
				
					if (~axs_s0_bready)
						next_state = MASTER_WAIT;
					else
						next_state = AW_READY;
				end

			default:
				next_state = INIT;
		endcase
	end
endmodule
