// fsm_2_tb.v

`timescale 1 ps / 1 ps

module fsm_2_tb ();
	reg clk;
	reg reset;
	reg varint_in_fifo_empty;
	reg varint_in_size_q;
	reg varint_out_fifo_full;
	reg [31:0] varint_data_in;

	wire varint_in_fifo_pop;
	wire varint_in_index_pop;
	wire varint_in_size_pop;
	wire varint_out_fifo_clr;
	wire varint_out_fifo_push;
	wire varint_out_index_clr;
	wire varint_out_index_push;
	wire [7:0] varint_data_out;
	wire encoding;

	// instantiate our design under test (DUT)
	fsm_2 f2 (
		.clk                   (clk),
		.reset                 (reset),
		.varint_in_fifo_empty  (varint_in_fifo_empty),
		.varint_in_size_q      (varint_in_size_q),
		.varint_in_fifo_pop    (varint_in_fifo_pop),
		.varint_in_index_pop   (varint_in_index_pop),
		.varint_in_size_pop    (varint_in_size_pop),
		.varint_out_fifo_full  (varint_out_fifo_full),
		.varint_out_fifo_clr   (varint_out_fifo_clr),
		.varint_out_fifo_push  (varint_out_fifo_push),
		.varint_out_index_clr  (varint_out_index_clr),
		.varint_out_index_push (varint_out_index_push),
		.varint_data_in        (varint_data_in),
		.varint_data_out       (varint_data_out),
		.encoding              (encoding)
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
		varint_in_fifo_empty = 1'b1;
		varint_out_fifo_full = 1'b0;
		varint_in_size_q = 1'b0;
	
		// wait for reset to deassert
		@(negedge reset);
		
		/* @(posedge clk): transitions from INIT to V_READY
		   stall in V_READY for 2 cycles */
		repeat (2) @(negedge clk);
		
		/* varint input data '0xAEB48F8A' should produce the following 5-byte 
		   encoded output: 10001010 10011111 11010010 11110101 00001010 */
		varint_in_fifo_empty = 1'b0;
		varint_data_in = 32'hAEB4_8F8A;
		repeat (10) @(negedge clk);
		
		/* varint input data '0x00000081' should produce the following 2-byte 
		   encoded output: 10000001 00000001 */
		varint_data_in = 32'h0000_0081;
		
		// stall after encoding 1st byte: transitions from LOAD_COND to VF_FULL
		repeat (4) @(negedge clk);
		varint_out_fifo_full = 1'b1;
		
		// wait in VF_FULL for 2 cycles then resume varint encoding
		repeat (2) @(negedge clk);
		varint_out_fifo_full = 1'b0; // transitions from VF_FULL to ENCODE_L
		varint_data_in = 32'h1234_5678; // changing input shouldn't affect encoding
		
		// stall and terminate the simulaiton
		repeat (3) @(negedge clk);
		$stop;
	end
endmodule
