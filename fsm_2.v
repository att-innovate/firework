// fsm_2.v

module fsm_2 (
		// global signals
		input  wire clk,
		input  wire reset,
		
		// datapath control signals
		input  wire varint_in_fifo_empty,
		output reg  varint_in_fifo_pop,
		output reg  varint_in_index_pop,
		
		input  wire varint_out_fifo_full,
		output reg  varint_out_fifo_clr,
		output reg  varint_out_fifo_push,
		output reg  varint_out_index_clr,
		output reg  varint_out_index_push,
		
		// TODO: figure out where to build the datapath
		// hi
	);

endmodule
