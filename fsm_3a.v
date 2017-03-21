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

	// state definitions (one-hot encoding)
	parameter INIT    = 3'b001,
	          V_FETCH = 3'b010,
				 V_READY = 3'b100;
				 
	// state memory logic
	reg [2:0] state;
	reg [2:0] next_state;
	
	always @(posedge clk)
	begin
		if (reset)
			state <= INIT;
		else
			state <= next_state;
	end

	// next state, output logic
	always @*
	begin
		// default values (may be overwritten)
		varint_out_fifo_pop = 1'b0;
		varint_out_index_pop = 1'b0;
		varint_data_valid = 1'b0;
		
		case (state)
			INIT:
				next_state = V_FETCH;

			V_FETCH:
				begin
					varint_out_fifo_pop = 1'b1;
					varint_out_index_pop = 1'b1;
					
					if (varint_out_fifo_empty)
						next_state = V_FETCH;
					else
						next_state = V_READY;
				end

			V_READY:
				begin
					varint_data_valid = 1'b1;
					
					if (varint_data_accepted)
						next_state = V_FETCH;
					else
						next_state = V_READY;
				end

			default:
				next_state = INIT;
		endcase
	end
endmodule
