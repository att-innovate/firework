// fsm_3.v

module fsm_3 (
		// global signals
		input  wire      clk,
		input  wire      reset,

		// FIFO control signals
		input wire       out_fifo_full,
		output reg       out_fifo_clr,
		output reg       out_fifo_push,

		// FIFO data signals
		input wire [7:0] varint_out_fifo_q,
		input wire [9:0] varint_out_index_q,
		input wire [7:0] raw_data_out_fifo_q,
		input wire [9:0] raw_data_out_index_q,
		output reg [7:0] out_fifo_data,

		// FSM handshake signals
		input wire       varint_data_valid,
		input wire       raw_data_valid,
		output reg       varint_data_accepted,
		output reg       raw_data_accepted
	);
	
	// datapath registers
	reg [9:0] out_index;
	
	// datapath control signals
	wire out_index_ld, out_index_clr;
	wire varint_eq_index, varint_eq_next;
	wire raw_data_eq_index, raw_data_eq_next;
	
	// datapath data signals
	reg [9:0] out_index_plus1;

endmodule
