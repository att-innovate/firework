// fsm_3a_tb.v

`timescale 1 ps / 1 ps

module fsm_3a_tb ();
	reg clk;
	reg reset;
	reg varint_out_fifo_empty;
	reg varint_data_accepted;
	
	wire varint_out_pop;
	wire varint_data_valid;
	
	// instantiate our design under test (DUT)
	fsm_3a f3a (
		.clk                   (clk),
		.reset                 (reset),
		.varint_out_fifo_empty (varint_out_fifo_empty),
		.varint_data_accepted  (varint_data_accepted),
		.varint_out_pop        (varint_out_pop),
		.varint_data_valid     (varint_data_valid)
	);
	
   // generate the clock signal
	initial begin
		clk = 1'b0;
		forever #1 clk = ~clk;
	end
	
	// assert reset for 2 cycles (initialize the FSM)
	initial begin
		reset = 1'b1;
		repeat (2) @(negedge clk);
		reset = 1'b0;
	end
	
	// simulate the DUT
	initial begin
		// initialize input vectors
		varint_out_fifo_empty = 1'b1;
		varint_data_accepted = 1'b0;
		
		// wait for reset to deassert
		@(negedge reset);
		
		// @(posedge clk): transitions from INIT to V_FETCH
		repeat (2) @(negedge clk);
		
		// @(posedge clk): transitions from V_FETCH to V_READY
		varint_out_fifo_empty = 1'b0;
		repeat (2) @(negedge clk);
		
		// stays in V_READY
		varint_data_accepted = 1'b1;
		@(negedge clk);
		
		// @(posedge clk): transitions from V_READY to V_FETCH
		varint_out_fifo_empty = 1'b1;
		@(negedge clk);
		
		// @(posedge clk): transitions from V_FETCH to V_READY
		varint_out_fifo_empty = 1'b0;
		varint_data_accepted = 1'b0;
		@(negedge clk);
		varint_data_accepted = 1'b1;
		
		// stays in V_READY as long as varint_out_fifo_empty is low
		repeat (2) @(negedge clk);
		
		// terminate the simulaiton
		$stop;
	end
endmodule
