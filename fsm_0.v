// fsm_0.v

module fsm_0 (
		// global signals (clock, reset)
		input  wire        clock_clk,
		input  wire        reset_reset,

		// AXI4 write address, write data, write response handshake signals
		input  wire        axs_s0_awvalid,
		output wire        axs_s0_awready,

		input  wire        axs_s0_wvalid,
		output wire        axs_s0_wready,

		input  wire        axs_s0_bready,
		output wire        axs_s0_bvalid,		
		
		// datapath control signals
		input  wire        varint_in_fifo_full,
		output wire        varint_in_fifo_clr,
		output wire        varint_in_fifo_push,
		output wire        varint_in_index_clr,
		output wire        varint_in_index_push,

		input  wire        raw_data_in_fifo_full,
		output wire        raw_data_in_fifo_clr,
		output wire        raw_data_in_fifo_push,
		output wire        raw_data_in_index_clr,
		output wire        raw_data_in_index_push,
		output wire        raw_data_in_wstrb_clr,
		output wire        raw_data_in_wstrb_push,

		output wire        awid_reg_clr,
		output wire        awid_reg_ld,
		output wire        awaddr_reg_clr,
		output wire        awaddr_reg_ld,
		output wire        awlen_reg_clr,
		output wire        awlen_reg_ld,
		output wire        awsize_reg_clr,
		output wire        awsize_reg_ld,
		output wire        awburst_reg_clr,
		output wire        awburst_reg_ld,

		output wire        wdata_reg_clr,
		output wire        wdata_reg_ld,
		output wire        wstrb_reg_clr,
		output wire        wstrb_reg_ld,

	);

endmodule
