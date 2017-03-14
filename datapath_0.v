// datapath_0.v

module datapath_0 (
		// clock, reset inputs
		input  wire        clk,
		input  wire        reset,

		// Data signals
		input  wire [3:0]  axs_s0_awid,
		input  wire [31:0] axs_s0_awaddr,
		input  wire [7:0]  axs_s0_awlen,
		input  wire [2:0]  axs_s0_awsize,
		input  wire [1:0]  axs_s0_awburst,

		input  wire [31:0] axs_s0_wdata,
		input  wire [3:0]  axs_s0_wstrb,
		
		output wire [3:0]  axs_s0_bid,


		// Control signals
		input  wire        varint_in_sel,
		input  wire        varint_clr,
		input  wire        varint_ld,
		input  wire        varint_out_sel,
		output wire        gt_eq_128,

		input  wire        raw_data_clr,
		input  wire        raw_data_ld,
		input  wire [1:0]  raw_data_sel,

		input  wire        byte_sel
	);

	// TODO: implement datapath logic

endmodule
