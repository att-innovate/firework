// fsm_4.v

module fsm_4 (
		// global signals
		input  wire        clk,
		input  wire        reset,

		// AXI4 read address, read data channel signals
		input  wire [3:0]  axs_s0_arid,
		input  wire [31:0] axs_s0_araddr,
		input  wire [7:0]  axs_s0_arlen,
		input  wire [2:0]  axs_s0_arsize,
		input  wire [1:0]  axs_s0_arburst,
		input  wire        axs_s0_arvalid,
		output reg         axs_s0_arready,

		output reg  [3:0]  axs_s0_rid,
		output reg         axs_s0_rlast,
		output reg         axs_s0_rvalid,
		input  wire        axs_s0_rready,

		// FIFO control signals
		input wire         out_fifo_empty,
		output reg         out_fifo_pop,
		output reg  [1:0]  out_fifo_pop_sel
	);

	// datapath registers
	reg [3:0]  arid;
	reg [31:0] araddr;
	reg [7:0]  arlen;
	reg [2:0]  arsize;
	reg [1:0]  arburst;

	// datapath control signals
	reg arid_clr, araddr_clr, arlen_clr, arsize_clr, arburst_clr;
	reg arid_ld, araddr_ld, arlen_ld, arsize_ld, arburst_ld;
	reg arlen_ld_sel, arlen_data_sel;
	reg arlen_ld_mux;
	
	// datapath data signals
	reg [7:0] arlen_data_mux;
	
	// state definitions (one-hot encoding)
	parameter INIT         = 8'h01,
	          AR_READY     = 8'h02,
	          OF_EMPTY     = 8'h04,
	          R_VALID_LAST = 8'h08,
	          MASTER_WAIT  = 8'h10,
	          R_VALID      = 8'h20;

	// state memory logic
	reg [7:0] state;
	reg [7:0] next_state;
	
	always @(posedge clk)
	begin
		if (reset)
			state <= INIT;
		else begin
			arid    <= (arid_ld) ? axs_s0_arid : ((arid_clr) ? 4'h0 : arid);
			araddr  <= (araddr_ld) ? axs_s0_araddr : 
			           ((araddr_clr) ? 32'h0000_0000 : araddr);
			arlen   <= (arlen_ld_mux) ? arlen_data_mux : ((arlen_clr) ? 8'h00 : arlen);
			arsize  <= (arsize_ld) ? axs_s0_arsize : ((arsize_clr) ? 3'b000 : arsize);
			arburst <= (arburst_ld) ? axs_s0_arburst : ((arburst_clr) ? 2'b00 : arburst);

			state <= next_state;
		end
	end
	
	always @*
	begin
		// default values (may be overwritten)
		axs_s0_arready = 1'b0;
		axs_s0_rlast = 1'b0;
		axs_s0_rvalid = 1'b0;
		
		out_fifo_pop = 1'b0;
		out_fifo_pop_sel = 2'b00;
		
		arid_clr = 1'b0;
		arid_ld = 1'b0;
		araddr_clr = 1'b0;
		araddr_ld = 1'b0;
		arlen_clr = 1'b0;
		arlen_ld = 1'b0;
		arsize_clr = 1'b0;
		arsize_ld = 1'b0;
		arburst_clr = 1'b0;
		arburst_ld = 1'b0;
		
		arlen_ld_sel = 1'b0;
		arlen_data_sel = 1'b0;

		// datapath logic
		axs_s0_rid = arid;

		case (state)
			INIT:
				begin
					arid_clr = 1'b1;
					araddr_clr = 1'b1;
					arlen_clr = 1'b1;
					arsize_clr = 1'b1;
					arburst_clr = 1'b1;

					next_state = AR_READY;
				end

			AR_READY:
				begin
					axs_s0_rlast = 1'b0;
					axs_s0_rvalid = 1'b0;
					axs_s0_arready = 1'b1;

					arid_ld = 1'b1;
					araddr_ld = 1'b1;
					arlen_ld = 1'b1;
					arsize_ld = 1'b1;
					arburst_ld = 1'b1;
					
					out_fifo_pop_sel = 2'b01;
					
					if (~axs_s0_arvalid)
						next_state = AR_READY;
					else if (axs_s0_arvalid && out_fifo_empty)
						next_state = OF_EMPTY;
					else if (axs_s0_arvalid && ~out_fifo_empty && axs_s0_arlen == 0)
						next_state = R_VALID_LAST;
					else if (axs_s0_arvalid && ~out_fifo_empty && 
					            axs_s0_arlen != 0 && ~axs_s0_rready)
						next_state = MASTER_WAIT;
					else if (axs_s0_arvalid && ~out_fifo_empty && 
					            axs_s0_arlen != 0 && axs_s0_rready)
						next_state = R_VALID;
					else // error
						next_state = INIT;
				end

			OF_EMPTY:
				begin
					axs_s0_arready = 1'b0;
					axs_s0_rvalid = 1'b0;
					out_fifo_pop_sel = 2'b00;
					// TODO: own this shit
				end

			R_VALID_LAST:
				begin
					
				end

			MASTER_WAIT:
				begin
					
				end

			R_VALID:
				begin
					
				end

			default:
				next_state = INIT;
		endcase

		// datapath logic
		arlen_ld_mux = (arlen_ld_sel) ? axs_s0_rready : arlen_ld;
		
		arlen_data_mux = (arlen_data_sel) ? arlen - 1 : axs_s0_arlen;
		
	end
endmodule
