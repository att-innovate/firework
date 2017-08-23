// fsm_1.v

module fsm_1 (
		// global signals
		input  wire       clk,
		input  wire       reset,

		// FIFO control signals
		input  wire       raw_data_in_fifo_empty,
		output reg        raw_data_in_fifo_pop,
		output reg        raw_data_in_index_pop,
		output reg        raw_data_in_wstrb_pop,

		input  wire       raw_data_out_fifo_full,
		output reg        raw_data_out_fifo_clr,
		output reg        raw_data_out_index_clr,

		output reg  [1:0] raw_data_sel,
		output reg        push_enable,

		// inter-FSM communication signals
		output reg        encoding
	);

	// datapath registers
	reg [1:0] index;

	// datapath control signals
	reg index_inc, index_clr;

	// state definitions (one-hot encoding)
	parameter INIT      = 8'h01,
	          RD_READY  = 8'h02,
	          RF_FULL   = 8'h04,
	          PUSH_0    = 8'h08,
	          PUSH_1    = 8'h10,
	          PUSH_2    = 8'h20,
	          PUSH_3    = 8'h40;

	// state memory logic
	reg [7:0] state;
	reg [7:0] next_state;
	
	always @(posedge clk)
	begin
		if (reset)
			state <= INIT;
		else begin
			index <= (index_inc) ? index + 2'b01 : ((index_clr) ? 2'b00 : index);
					  
			state <= next_state;
		end
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

		push_enable = 1'b0;
		encoding = 1'b0;

		index_inc = 1'b0;
		index_clr = 1'b0;

		// datapath logic
		raw_data_sel = index;

		case (state)
			INIT:
				begin
					raw_data_out_fifo_clr = 1'b1;
					raw_data_out_index_clr = 1'b1;
					index_clr = 1'b1;

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
						next_state = PUSH_0;
				end
			
			RF_FULL:
				begin
					encoding = 1'b1;

					if (raw_data_out_fifo_full)
						next_state = RF_FULL;
					else if (~raw_data_out_fifo_full && index == 2'b00)
						next_state = PUSH_0;
					else if (~raw_data_out_fifo_full && index == 2'b01)
						next_state = PUSH_1;
					else if (~raw_data_out_fifo_full && index == 2'b10)
						next_state = PUSH_2;
					else if (~raw_data_out_fifo_full && index == 2'b11)
						next_state = PUSH_3;
					else // error
						next_state = INIT;
				end

			PUSH_0:
				begin
					// raw_data_sel == 2'b00
					index_inc = 1'b1;
					push_enable = 1'b1;
					encoding = 1'b1;

					if (raw_data_out_fifo_full)
						next_state = RF_FULL;
					else
						next_state = PUSH_1;
				end

			PUSH_1:
				begin
					// raw_data_sel == 2'b01
					index_inc = 1'b1;
					push_enable = 1'b1;
					encoding = 1'b1;

					if (raw_data_out_fifo_full)
						next_state = RF_FULL;
					else
						next_state = PUSH_2;
				end

			PUSH_2:
				begin
					// raw_data_sel == 2'b10
					index_inc = 1'b1;
					push_enable = 1'b1;
					encoding = 1'b1;

					if (raw_data_out_fifo_full)
						next_state = RF_FULL;
					else
						next_state = PUSH_3;
				end

			PUSH_3:
				begin 
					// raw_data_sel == 2'b11
					index_clr = 1'b1;
					push_enable = 1'b1;
					encoding = 1'b1;

					next_state = RD_READY;
				end

			default:
				next_state = INIT;
		endcase
	end
endmodule
