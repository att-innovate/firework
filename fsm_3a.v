// fsm_3a.v

module fsm_3a (
		// global signals
		input  wire  clk,
		input  wire  reset,

		// FIFO control signals
		input  wire  varint_out_fifo_empty,
		output reg   varint_out_fifo_pop,
		output reg   varint_out_index_pop,

		// FSM handshake signals
		input  wire  varint_data_accepted,
		output wire  varint_data_valid
	);
	
endmodule
