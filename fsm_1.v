// fsm_1.v

module fsm_1 (
		// global signals
		input  wire       clk,
		input  wire       reset,

		// datapath control signals
		input  wire       raw_data_in_fifo_empty,
		output reg        raw_data_in_fifo_pop,
		output reg        raw_data_in_index_pop,
		output reg        raw_data_in_wstrb_pop,

		input  wire       raw_data_out_fifo_full,
		output reg        raw_data_out_fifo_clr,
		output reg        raw_data_out_index_clr,

		output reg  [1:0] raw_data_sel
	);

	

endmodule
