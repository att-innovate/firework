// fsm_3b_tb.v

`timescale 1 ps / 1 ps

module fsm_3b_tb ();
	reg clk;
	reg reset;
	reg raw_data_out_fifo_empty;
	reg raw_data_accepted;
	
	wire raw_data_out_pop;
	wire raw_data_valid;
	
	// instantiate our design under test (DUT)
	fsm_3b f3b (
		.clk                     (clk),
		.reset                   (reset),
		.raw_data_out_fifo_empty (raw_data_out_fifo_empty),
		.raw_data_accepted       (raw_data_accepted),
		.raw_data_out_pop        (raw_data_out_pop),
		.raw_data_valid          (raw_data_valid)
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
		raw_data_out_fifo_empty = 1'b1;
		raw_data_accepted = 1'b0;
		
		// wait for reset to deassert
		@(negedge reset);
		
		// @(posedge clk): transitions from INIT to V_FETCH
		repeat (2) @(negedge clk);
		
		// @(posedge clk): transitions from V_FETCH to V_READY
		raw_data_out_fifo_empty = 1'b0;
		repeat (2) @(negedge clk);
		
		// stays in V_READY
		raw_data_accepted = 1'b1;
		repeat (4) @(negedge clk);
		
		// terminate the simulaiton
		$stop;
	end
endmodule