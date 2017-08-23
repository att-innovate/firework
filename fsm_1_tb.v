// fsm_1_tb.v

`timescale 1 ps / 1 ps

module fsm_1_tb ();
	reg  clk;
	reg  reset;
	reg  raw_data_in_fifo_empty;
	reg  raw_data_out_fifo_full;
	
	wire raw_data_in_fifo_pop;
	wire raw_data_in_index_pop;
	wire raw_data_in_wstrb_pop;
	wire raw_data_out_fifo_clr;
	wire raw_data_out_index_clr;
	wire [1:0] raw_data_sel;
	wire push_enable;
	wire encoding;

	// instantiate our design under test (DUT)
	fsm_1 f1 (
		.clk                    (clk),
		.reset                  (reset),
		.raw_data_in_fifo_empty (raw_data_in_fifo_empty),
		.raw_data_in_fifo_pop   (raw_data_in_fifo_pop),
		.raw_data_in_index_pop  (raw_data_in_index_pop),
		.raw_data_in_wstrb_pop  (raw_data_in_wstrb_pop),
		.raw_data_out_fifo_full (raw_data_out_fifo_full),
		.raw_data_out_fifo_clr  (raw_data_out_fifo_clr),
		.raw_data_out_index_clr (raw_data_out_index_clr),
		.raw_data_sel           (raw_data_sel),
		.push_enable            (push_enable),
		.encoding               (encoding)
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
		raw_data_in_fifo_empty = 1'b1;
		raw_data_out_fifo_full = 1'b0;
	
		// wait for reset to deassert
		@(negedge reset);
		
		/* @(posedge clk): transitions from INIT to RD_READY
		   stall in RD_READY for 2 cycles */
		repeat (2) @(negedge clk);
		
		/* @(posedge clk): transitions from RD_READY to ENCODE_0
		   FSM should cycle through all ENCODE states and return to RD_READY */
		raw_data_in_fifo_empty = 1'b0;
		repeat (8) @(negedge clk);
		
		// @(posedge clk): transitions from RD_READY to RF_FULL
		raw_data_out_fifo_full = 1'b1;
		repeat (2) @(negedge clk);
		
		// allow the FSM to resume encoding activity
		raw_data_out_fifo_full = 1'b0;
		repeat (5) @(negedge clk);
		
		// stall the FSM in RF_FULL after ENCODE_2 state
		raw_data_out_fifo_full = 1'b1;
		repeat (2) @(negedge clk);
		
		// @(posedge clk): resume encoding activity
		raw_data_out_fifo_full = 1'b0;
		
		// stall and terminate the simulaiton
		repeat (3) @(negedge clk);
		$stop;
	end
endmodule
