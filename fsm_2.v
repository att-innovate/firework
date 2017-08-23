// fsm_2.v

module fsm_2 (
		// global signals
		input  wire       clk,
		input  wire       reset,

		// FIFO control signals
		input  wire       varint_in_fifo_empty,
		input  wire       varint_in_size_q,
		output reg        varint_in_fifo_pop,
		output reg        varint_in_index_pop,
		output reg        varint_in_size_pop,

		input  wire       varint_out_fifo_full,
		output reg        varint_out_fifo_clr,
		output reg        varint_out_fifo_push,
		output reg        varint_out_index_clr,
		output reg        varint_out_index_push,

		// FIFO data signals
		input wire [31:0] varint_data_in,
		output reg [7:0]  varint_data_out,

		// inter-FSM communication signals
		output reg        encoding
	);

	// datapath registers
	reg varint64;
	reg varint_in_sel;
	reg [31:0] lsb;
	reg [63:0] varint_data;

	// datapath control signals
	reg varint64_clr, varint64_ld;
	reg varint_in_sel_clr, varint_in_sel_ld;
	reg lsb_clr, lsb_ld;
	reg varint_data_clr, varint_data_ld;
	reg varint_out_sel;

	// datapath data signals
	reg [31:0] lower32_mux, upper32_mux;
	reg [63:0] varint_data_in64, varint_shifted, varint_in_mux, check_cond_mux;
	reg varint_out_mux;

	// state definitions (one-hot encoding)
	parameter INIT       = 8'h01,
	          V_READY    = 8'h02,
	          LOAD_COND  = 8'h04,
				 POP_64     = 8'h08,
	          VF_FULL    = 8'h10,
	          ENCODE_N   = 8'h20,
	          ENCODE_L   = 8'h40;

	// state memory logic
	reg [7:0] state;
	reg [7:0] next_state;

	always @(posedge clk)
	begin
		if (reset)
			state <= INIT;
		else begin
			varint64      <= (varint64_ld) ? 1'b1 : ((varint64_clr) ? 1'b0 : varint64);

			varint_in_sel <= (varint_in_sel_ld) ? 1'b1 :
			                 ((varint_in_sel_clr) ? 1'b0 : varint_in_sel);

			lsb           <= (lsb_ld) ? varint_data_in : ((lsb_clr) ? 32'd0 : lsb);

			varint_data   <= (varint_data_ld) ? varint_in_mux : 
			                 ((varint_data_clr) ? 32'd0 : varint_data);

			state <= next_state;
		end
	end

	// datapath, next state, output logic
	always @*
	begin
		// default values (may be overwritten)
		varint_in_fifo_pop = 1'b0;
		varint_in_index_pop = 1'b0;
		varint_in_size_pop = 1'b0;
		varint_out_fifo_clr = 1'b0;
		varint_out_fifo_push = 1'b0;
		varint_out_index_clr = 1'b0;
		varint_out_index_push = 1'b0;

		varint64_clr = 1'b0;
		varint64_ld = 1'b0;
		varint_in_sel_clr = 1'b0;
		varint_in_sel_ld = 1'b0;
		lsb_clr = 1'b0;
		varint_data_clr = 1'b0;
		varint_data_ld = 1'b0;
		varint_out_sel = 1'b0;

		encoding = 1'b0;

		// datapath logic
		lower32_mux = (varint64) ? lsb : varint_data_in;
		upper32_mux = (varint64) ? varint_data_in : 32'd0;
		varint_data_in64 = {upper32_mux, lower32_mux};
		
		varint_shifted = varint_data >> 7;

		varint_in_mux  = (varint_in_sel) ? varint_shifted : varint_data_in64;
		
		check_cond_mux = varint_in_mux;

		case (state)
			INIT:
				begin
					varint_out_fifo_clr = 1'b1;
					varint_out_index_clr = 1'b1;
					varint64_clr = 1'b1;
					varint_in_sel_clr = 1'b1;
					lsb_clr = 1'b1;
					varint_data_clr = 1'b1;

					next_state = V_READY;
				end

			V_READY:
				begin
					varint_in_fifo_pop = 1'b1;
					varint_in_index_pop = 1'b1;
					varint_in_size_pop = 1'b1;

					if (varint_in_fifo_empty)
						next_state = V_READY;
					else
						next_state = LOAD_COND;
				end

			LOAD_COND:
				begin
					varint_in_sel_ld = 1'b1;
					varint_data_ld = 1'b1;
					varint_out_sel = 1'b1;
					encoding = 1'b1;

					if (varint_in_size_q)
						next_state = POP_64;
					else if (~varint_in_size_q && varint_out_fifo_full)
						next_state = VF_FULL;
					else if (~varint_in_size_q && ~varint_out_fifo_full && check_cond_mux >= 128)
						next_state = ENCODE_N;
					else
						next_state = ENCODE_L;
				end

			POP_64:
				begin
					varint_in_fifo_pop = 1'b1;
					varint_in_index_pop = 1'b1;
					varint_in_size_pop = 1'b1;

					varint_in_sel_clr = 1'b1;
					varint64_ld = 1'b1;
					encoding = 1'b1;

					if (varint_in_fifo_empty)
						next_state = POP_64;
					else
						next_state = LOAD_COND;
				end

			VF_FULL:
				begin
					check_cond_mux = varint_data;
					encoding = 1'b1;

					if (varint_out_fifo_full)
						next_state = VF_FULL;
					else if (~varint_out_fifo_full && check_cond_mux >= 128)
						next_state = ENCODE_N;
					else
						next_state = ENCODE_L;
				end

			ENCODE_N:
				begin
					varint_out_sel = 1'b1;
					varint_out_fifo_push = 1'b1;
					varint_out_index_push = 1'b1;
					encoding = 1'b1;

					next_state = LOAD_COND;
				end

			ENCODE_L:
				begin
					varint_out_fifo_push = 1'b1;
					varint_out_index_push = 1'b1;
					varint64_clr = 1'b1;
					varint_in_sel_clr = 1'b1;
					encoding = 1'b1;

					next_state = V_READY;
				end

			default:
				next_state = INIT;
		endcase

		// datapath logic
		lsb_ld = varint_in_size_q && varint_data_ld;

		varint_data_out[6:0] = varint_data[6:0];

		varint_out_mux = (varint_out_sel) ? 1'b1 : varint_data[7];
		varint_data_out[7] = varint_out_mux;
	end
endmodule
