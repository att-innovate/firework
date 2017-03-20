// fsm_3b.v

module fsm_3b (
		// global signals
		input  wire  clk,
		input  wire  reset,

		// FIFO control signals
		input  wire  raw_data_out_fifo_empty,
		output reg   raw_data_out_fifo_pop,
		output reg   raw_data_out_index_pop,

		// FSM handshake signals
		input  wire  raw_data_accepted,
		output wire  raw_data_valid
	);

endmodule
