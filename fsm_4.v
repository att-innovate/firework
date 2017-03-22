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

endmodule
