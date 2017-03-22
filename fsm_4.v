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
	
	// state definitions (one-hot encoding)
	parameter INIT        = 8'h01,
	          AR_READY    = 8'h02,
	          OF_EMPTY    = 8'h04,
	          R_VALID_N   = 8'h08,
	          R_VALID_L   = 8'h10,
	          MASTER_WAIT = 8'h20;

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
			arlen   <= (arlen_ld) ? axs_s0_arlen : ((arlen_clr) ? 8'h00 : arlen);
			arsize  <= (arsize_ld) ? axs_s0_arsize : ((arsize_clr) ? 3'b000 : arsize);
			arburst <= (arburst_ld) ? axs_s0_arburst : ((arburst_clr) ? 2'b00 : arburst);

			state <= next_state;
		end
	end

endmodule
