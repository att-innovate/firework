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

		// datapath control signals
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

		// datapath registers
		output reg  [31:0] wdata,
		output reg  [3:0]  wstrb,
		output reg  [9:0]  index
	);

		// internal registers
		reg [3:0]  awid;
		reg [31:0] awaddr;
		reg [7:0]  awlen;
		reg [2:0]  awsize;
		reg [1:0]  awburst;
	
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
			else
				state <= next_state;
		end

		// next state, output logic
		always @*
		begin
			axs_s0_awready = 1'b0;
			axs_s0_wready = 1'b0;
			axs_s0_bvalid = 1'b0;
			axs_s0_bid = awid;

			varint_in_fifo_clr = 1'b0;
			varint_in_index_clr = 1'b0;
			raw_data_in_fifo_clr = 1'b0;
			raw_data_in_index_clr = 1'b0;
			raw_data_in_wstrb_clr = 1'b0;

			varint_in_fifo_push = 1'b0;
			varint_in_index_push = 1'b0;
			raw_data_in_fifo_push = 1'b0;
			raw_data_in_index_push = 1'b0;
			raw_data_in_wstrb_push = 1'b0;
			
			case (state)
				INIT:		
					begin
						varint_in_fifo_clr = 1'b1;
						varint_in_index_clr = 1'b1;
						raw_data_in_fifo_clr = 1'b1;
						raw_data_in_index_clr = 1'b1;
						raw_data_in_wstrb_clr = 1'b1;

						awid = 4'h0;
						awaddr = 32'h0000_0000;
						awlen = 8'h00;
						awsize = 3'b000;
						awburst = 2'b00;
						wdata = 32'h0000_0000;
						wstrb = 4'h0;
						index = 10'b0000000000;

						next_state = AW_READY;
					end

				AW_READY:
					begin
						axs_s0_bvalid = 1'b0;
						axs_s0_awready = 1'b1;
						
						awid = axs_s0_awid;
						awaddr = axs_s0_awaddr;
						awlen = axs_s0_awlen;
						awsize = axs_s0_awsize;
						awburst = axs_s0_awburst;
					
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
						else 
							next_state = INIT;
					end

				W_READY_VN:
					begin
						axs_s0_awready = 1'b0;
						axs_s0_wready = 1'b1;
						
						wdata = axs_s0_wdata;
						wstrb = axs_s0_wstrb;
					
						if (~axs_s0_wvalid)
							next_state = W_READY_VN;
						else
							next_state = B_READY_VN;
					end
				
				W_READY_VL:
					begin
						axs_s0_awready = 1'b0;
						axs_s0_wready = 1'b1;
						
						wdata = axs_s0_wdata;
						wstrb = axs_s0_wstrb;
					
						if (~axs_s0_wvalid)
							next_state = W_READY_VL;
						else
							next_state = B_READY_VL;
					end
				
				W_READY_RN:
					begin
						axs_s0_awready = 1'b0;
						axs_s0_wready = 1'b1;
						
						wdata = axs_s0_wdata;
						wstrb = axs_s0_wstrb;
					
						if (~axs_s0_wvalid)
							next_state = W_READY_RN;
						else
							next_state = B_READY_RN;
					end
				
				W_READY_RL:
					begin
						axs_s0_awready = 1'b0;
						axs_s0_wready = 1'b1;
						
						wdata = axs_s0_wdata;
						wstrb = axs_s0_wstrb;
					
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
						else
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
						else
							next_state = INIT;
					end
				
				B_READY_VN:
					begin
						axs_s0_wready = 1'b0;
						axs_s0_bvalid = 1'b1;
						axs_s0_bid = awid;

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
						axs_s0_bid = awid;

						varint_in_fifo_push = 1'b1;
						varint_in_index_push = 1'b1;
						
						index = (index == 1023) ? 0 : index + 1;
					
						if (~axs_s0_bready)
							next_state = MASTER_WAIT;
						else
							next_state = AW_READY;
					end

				B_READY_RN:
					begin
						axs_s0_wready = 1'b0;
						axs_s0_bvalid = 1'b1;
						axs_s0_bid = awid;

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
						axs_s0_bid = awid;

						raw_data_in_fifo_push = 1'b1;
						raw_data_in_index_push = 1'b1;
						raw_data_in_wstrb_push = 1'b1;
						
						index = (index == 1023) ? 0 : index + 1;
					
						if (~axs_s0_bready)
							next_state = MASTER_WAIT;
						else
							next_state = AW_READY;
					end
				
				MASTER_WAIT:
					begin
						axs_s0_bvalid = 1'b1;
						axs_s0_bid = awid;
					
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
