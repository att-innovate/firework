// fsm_3b.v

module fsm_3b (
		// global signals
		input  wire  clk,
		input  wire  reset,

		// FIFO control signals
		input  wire  raw_data_out_fifo_empty,
		output reg   raw_data_out_pop,

		// FSM handshake signals
		input  wire  raw_data_accepted,
		output reg   raw_data_valid
	);

	// state definitions (one-hot encoding)
	parameter INIT    = 3'b001,
	          R_FETCH = 3'b010,
	          R_READY = 3'b100;

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
		raw_data_out_pop = 1'b0;
		raw_data_valid = 1'b0;

		case (state)
			INIT:
				next_state = R_FETCH;

			R_FETCH:
				begin
					raw_data_out_pop = 1'b1;
					
					if (raw_data_out_fifo_empty)
						next_state = R_FETCH;
					else
						next_state = R_READY;
				end

			R_READY:
				begin
					raw_data_valid = 1'b1;
					
					if (raw_data_accepted && raw_data_out_fifo_empty)
						next_state = R_FETCH;
					else
						next_state = R_READY;
				end

			default:
				next_state = INIT;
		endcase
	end
endmodule
