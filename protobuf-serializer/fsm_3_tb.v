// fsm_3_tb.v

`timescale 1 ps / 1 ps

module fsm_3_tb ();
	reg clk;
	reg reset;
	reg out_fifo_full;
	reg [9:0] varint_in_index_q;
	reg [9:0] varint_out_index_q;
	reg [9:0] raw_data_in_index_q;
	reg [9:0] raw_data_out_index_q;
	reg varint_data_valid;
	reg raw_data_valid;
	reg raw_data_encoding;
	reg varint_encoding;
	
	wire out_fifo_clr;
	wire out_fifo_push;
	wire varint_enable;
	wire raw_data_enable;
	wire varint_data_accepted;
	wire raw_data_accepted;
	
	// instantiate our design under test (DUT)
	fsm_3 f3 (
		.clk                  (clk),
		.reset                (reset),
		.out_fifo_full        (out_fifo_full),
		.varint_in_index_q    (varint_in_index_q),
		.varint_out_index_q   (varint_out_index_q),
		.raw_data_in_index_q  (raw_data_in_index_q),
		.raw_data_out_index_q (raw_data_out_index_q),
		.varint_data_valid    (varint_data_valid),
		.raw_data_valid       (raw_data_valid),
		.raw_data_encoding    (raw_data_encoding),
		.varint_encoding      (varint_encoding),
		.out_fifo_clr         (out_fifo_clr),
		.out_fifo_push        (out_fifo_push),
		.varint_enable        (varint_enable),
		.raw_data_enable      (raw_data_enable),
		.varint_data_accepted (varint_data_accepted),
		.raw_data_accepted    (raw_data_accepted)
	);
		
   // generate the clock signal
	initial begin
		clk = 1'b0;
		forever #1 clk = ~clk;
	end
	
	// assert reset for 2 cycles (initialize the FSM)
	initial begin
		reset = 1'b1;
		@(negedge clk);
		reset = 1'b0;
	end
	
	// simulate the DUT
	initial begin
		// initialize input vectors
		out_fifo_full = 1'b0;
		varint_out_index_q = 10'd0;   // encode varint first
		raw_data_out_index_q = 10'd1; // raw data on deck
		varint_data_valid = 1'b0;
		raw_data_valid = 1'b0;
		raw_data_encoding = 1'b0;
		varint_encoding = 1'b0;
		
		// wait for reset to deassert
		@(negedge reset);
		
		// @(posedge clk): transitions from INIT to WAIT_DATA
		@(negedge clk);
		
		// push 2 bytes of varint data
		// @(posedge clk): transitions from WAIT_DATA to V_PUSH
		varint_data_valid = 1'b1;
		raw_data_valid = 1'b1;
		repeat (4) @(posedge clk);

		/* push 2 bytes of raw data: transitions from WAIT_DATA to
		   R_PUSH_INC --> WAIT_DATA --> R_PUSH --> WAIT_DATA */
		varint_out_index_q = 10'd2;
		repeat (4) @(posedge clk);
		
		// push 1 byte of varint data:
		// V_PUSH_INC --> WAIT_DATA
		raw_data_out_index_q = 10'd4;
		repeat (2) @(posedge clk);

		// push 2 bytes of varint data
		// V_PUSH_INC --> WAIT_DATA --> V_PUSH --> WAIT_DATA
		varint_out_index_q = 10'd3;
		repeat (4) @(posedge clk);
		
		/* simulate varint data encoding in progress: should stall
		   in WAIT_DATA and raw_data_eq_next should be disabled */
		varint_data_valid = 1'b0;
		varint_in_index_q = 10'd3;
		varint_encoding = 1'b1;
		repeat (2) @(negedge clk);
		
		/* simulate encoding of varint data with index 3 completion.
		   Push last encoded varint byte with index 3 */
		varint_encoding = 1'b0;
		varint_data_valid = 1'b1;
		repeat (2) @(posedge clk);

		// @ (posedge clk): raw_data_eq_next should be enabled and taken
		varint_out_index_q = 10'd6;
		repeat (2) @(posedge clk);

		/* push next raw data and simulate encoding in progress.
		   varint_eq_next should be disabled */
		raw_data_out_index_q = 10'd5;
		raw_data_in_index_q = 10'd5;
		raw_data_encoding = 1'b1;
		repeat (2) @(posedge clk);
		
		raw_data_valid = 1'b0;
		repeat (2) @(negedge clk);
		
		/* simulate encoding of raw data with index 5 completion.
		   varint_eq_next should be enabled and high, although we still 
		   push encoded raw data byte(s) with index 5 */
		raw_data_encoding = 1'b0;
		raw_data_valid = 1'b1;
		repeat (2) @(posedge clk);
		
		/* simulate previously pushed raw data byte was the last one: 
		   raw_data_valid becomes low and raw_data_in_index_q displays 5 
		   indefinitely. */
		raw_data_valid = 1'b0;
		
		// @(posedge clk): transitions from WAIT_DATA to OF_FULL
		out_fifo_full = 1'b1;
		repeat (2) @(negedge clk);
		
		/* @(posedge clk): transitions from OF_FULL to V_PUSH_INC
		   @(posedge clk): transitions from V_PUSH_INC to WAIT_DATA */
		out_fifo_full = 1'b0;
		repeat (2) @(negedge clk);
		
		/* final values -- out_index: 6, out_index_plus1: 7
		   terminate the simulaiton */
		$stop;
	end
endmodule
