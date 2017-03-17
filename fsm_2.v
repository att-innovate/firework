// fsm_2.v

module fsm_2 (
		// global signals
		input  wire       clk,
		input  wire       reset,
		
		// datapath control signals
		input  wire       varint_in_fifo_empty,
		output reg        varint_in_fifo_pop,
		output reg        varint_in_index_pop,
		
		input  wire       varint_out_fifo_full,
		output reg        varint_out_fifo_clr,
		output reg        varint_out_fifo_push,
		output reg        varint_out_index_clr,
		output reg        varint_out_index_push,
		
		// datapath data signals
		input wire [31:0] varint_data_in,
		output reg [7:0]  varint_data_out
	);
	
	// internal wires, registers
	reg varint_in_sel, check_cond_sel, varint_out_sel;
	reg [31:0] varint_data;
	
	// state definitions (one-hot encoding)
	parameter INIT       = 8'h01,
	          V_READY    = 8'h02,
	          LOAD_COND  = 8'h04,
	          VF_FULL    = 8'h08,
	          ENCODE_N   = 8'h10,
	          ENCODE_L   = 8'h20;

	// state memory logic
	reg [7:0] state;
	reg [7:0] next_state;
	
	always @(posedge clk)
	begin
		if (reset)
			state <= INIT;
		else
			state <= next_state;
	end

endmodule
