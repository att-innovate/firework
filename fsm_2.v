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

	// internal wires
	reg [31:0] varint_shifted, varint_in_mux, check_cond_mux;
	reg varint_out_mux;
	
	reg varint_in_sel_ld, varint_in_sel_clr;
	reg check_cond_sel_ld, check_cond_sel_clr;
	reg varint_out_sel_ld, varint_out_sel_clr;
	reg varint_data_ld, varint_data_clr;

	// internal registers
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
		else begin
			varint_in_sel  <= (varint_in_sel_ld) ? 1'b1 :
			                  ((varint_in_sel_clr) ? 1'b0 : varint_in_sel);
			check_cond_sel <= (check_cond_sel_ld) ? 1'b1 :
			                  ((check_cond_sel_clr) ? 1'b0 : check_cond_sel);
			varint_out_sel <= (varint_out_sel_ld) ? 1'b1 :
			                  ((varint_out_sel_clr) ? 1'b0 : varint_out_sel);
			varint_data    <= (varint_data_ld) ? varint_in_mux : 
			                  ((varint_data_clr) ? 32'h0000_0000 : varint_data);
				
			state <= next_state;
		end
	end
	
	// next state, output logic
	always @*
	begin
		// default values (may be overwritten)
		varint_in_fifo_pop = 1'b0;
		varint_in_index_pop = 1'b0;

		varint_out_fifo_clr = 1'b0;
		varint_out_fifo_push = 1'b0;
		varint_out_index_clr = 1'b0;
		varint_out_index_push = 1'b0;
		
		varint_in_sel_ld = 1'b0;
		varint_in_sel_clr = 1'b0;
		check_cond_sel_ld = 1'b0;
		check_cond_sel_clr = 1'b0;
		varint_out_sel_ld = 1'b0;
		varint_out_sel_clr = 1'b0;
		varint_data_ld = 1'b0;
		varint_data_clr = 1'b0;
		
		varint_shifted = varint_data >> 7;

		case (state)
			INIT:
				begin
					varint_out_fifo_clr = 1'b1;
					varint_out_index_clr = 1'b1;
					varint_data_clr = 1'b1;
					
					next_state = V_READY;
				end

			V_READY:
				begin
					varint_in_fifo_pop = 1'b1;
					varint_in_index_pop = 1'b1;
					varint_in_sel_clr = 1'b1;
					check_cond_sel_clr = 1'b1;
					
					if (varint_in_fifo_empty)
						next_state = V_READY;
					else
						next_state = LOAD_COND;
				end

			LOAD_COND:
				begin
					varint_data_ld = 1'b1;
					// TODO: finish output, next state logic
				end

			VF_FULL:
				begin
					// TODO: finish output, next state logic
				end

			ENCODE_N:
				begin
					// TODO: finish output, next state logic
				end

			ENCODE_L:
				begin
					// TODO: finish output, next state logic
				end

			default:
				next_state = INIT;
		endcase
		
		// evaluate datapath internal wires 
		varint_in_mux  = /*TODO: implement muc logic*/;
		
		check_cond_mux = /*TODO: implement muc logic*/;
		
		varint_out_mux = /*TODO: implement muc logic*/;
		
		varint_data_out [6:0] = varint_data [6:0];
		varint_data_out [7]   = varint_out_mux;
		
	end
endmodule
