// fsm_3.v

module fsm_3 (
		// global signals
		input  wire      clk,
		input  wire      reset,

		// FIFO control signals
		input wire       out_fifo_full,
		output reg       out_fifo_clr,
		output reg       out_fifo_push,
		output reg       varint_enable,
		output reg       raw_data_enable,

		// FIFO data signals
		input wire [9:0] varint_out_index_q,
		input wire [9:0] raw_data_out_index_q,

		// FSM handshake signals
		input wire       varint_data_valid,
		input wire       raw_data_valid,
		output reg       varint_data_accepted,
		output reg       raw_data_accepted
	);

	// datapath registers
	reg [9:0] out_index;
	
	// datapath control signals
	reg out_index_ld, out_index_clr;
	reg varint_eq_index, varint_eq_next;
	reg raw_data_eq_index, raw_data_eq_next;
	
	// datapath data signals
	reg [9:0] out_index_plus1;
	
	// state definitions (one-hot encoding)
	parameter INIT       = 8'h01,
	          WAIT_DATA  = 8'h02,
	          R_PUSH     = 8'h04,
	          R_PUSH_INC = 8'h08,
	          V_PUSH     = 8'h10,
	          V_PUSH_INC = 8'h20,
	          OF_FULL    = 8'h40;
	
	// state memory logic
	reg [7:0] state;
	reg [7:0] next_state;

	always @(posedge clk)
	begin
		if (reset)
			state <= INIT;
		else begin
			out_index <= (out_index_ld) ? out_index_plus1 : 
			             ((out_index_clr) ? 10'b0000000000 : out_index);

			state <= next_state;
		end
	end

	// datapath, next state, output logic
	always @*
	begin
		// default values (may be overwritten)
		out_fifo_clr = 1'b0;
		out_fifo_push = 1'b0;
		varint_enable = 1'b0;
		raw_data_enable = 1'b0;
		varint_data_accepted = 1'b0;
		raw_data_accepted = 1'b0;

		out_index_ld = 1'b0;		
		out_index_clr = 1'b0;

		// datapath logic
		out_index_plus1 = out_index + 1;
		
		varint_eq_index = (varint_out_index_q == out_index) ? 1'b1 : 1'b0;
		varint_eq_next = (varint_out_index_q == out_index_plus1) ? 1'b1 : 1'b0;
		raw_data_eq_index = (raw_data_out_index_q == out_index) ? 1'b1 : 1'b0;
		raw_data_eq_next = (raw_data_out_index_q == out_index_plus1) ? 1'b1 : 1'b0;
		
		case (state)
			INIT:
				begin
					
				end

			WAIT_DATA:
			

			R_PUSH:
			

			R_PUSH_INC:
			

			V_PUSH:
			

			V_PUSH_INC:
			

			OF_FULL:
			

			default:
				next_state = INIT;
		endcase
	end
endmodule
