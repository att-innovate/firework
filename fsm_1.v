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

	// internal registers
	reg [1:0] index;

	// state definitions (one-hot encoding)
	parameter INIT      = 8'h01,
	          RD_READY  = 8'h02,
	          RF_FULL   = 8'h04,
	          ENCODE_0  = 8'h08,
	          ENCODE_1  = 8'h10,
	          ENCODE_2  = 8'h20,
	          ENCODE_3  = 8'h40;

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
	
	// next state, output logic
	always @*
	begin
		// default values (may be overwritten)
		raw_data_in_fifo_pop = 1'b0;
		raw_data_in_index_pop = 1'b0;
		raw_data_in_wstrb_pop = 1'b0;

		raw_data_out_fifo_clr = 1'b0;
		raw_data_out_index_clr = 1'b0;
		
		raw_data_sel = index;

		case (state)
			INIT:
				begin
					raw_data_out_fifo_clr = 1'b1;
					raw_data_out_index_clr = 1'b1;
					index = 2'b00;

					next_state = RD_READY;
				end

			RD_READY:
				begin
					raw_data_in_fifo_pop = 1'b1;
					raw_data_in_index_pop = 1'b1;
					raw_data_in_wstrb_pop = 1'b1;
					
					if (raw_data_in_fifo_empty)
						next_state = RD_READY;
					else if (~raw_data_in_fifo_empty && raw_data_out_fifo_full)
						next_state = RF_FULL;
					else
						next_state = ENCODE_0;
				end
			
			RF_FULL:
				begin
					if (raw_data_out_fifo_full)
						next_state = RF_FULL;
					else if (~raw_data_out_fifo_full && index == 2'b00)
						next_state = ENCODE_0;
					else if (~raw_data_out_fifo_full && index == 2'b01)
						next_state = ENCODE_1;
					else if (~raw_data_out_fifo_full && index == 2'b10)
						next_state = ENCODE_2;
					else if (~raw_data_out_fifo_full && index == 2'b11)
						next_state = ENCODE_3;
					else // error
						next_state = INIT;
				end

			ENCODE_0:
				begin
					// raw_data_sel == 2'b00
					index = index + 1;
					
					next_state = RF_FULL;
				end

			ENCODE_1:
				begin
					// raw_data_sel == 2'b01
					index = index + 1;
					
					next_state = RF_FULL;
				end

			ENCODE_2:
				begin
					// raw_data_sel == 2'b10
					index = index + 1;
					
					next_state = RF_FULL;
				end

			ENCODE_3:
				begin 
					// raw_data_sel == 2'b11
					index = 2'b00;
					
					next_state = RD_READY;
				end

			default:
				next_state = INIT;
		endcase
	end
endmodule
