// fsm_4_tb.v

`timescale 1 ps / 1 ps

module fsm_4_tb ();
	reg        clk;
	reg        reset;
	reg [3:0]  axs_s0_arid;
	reg [31:0] axs_s0_araddr;
	reg [7:0]  axs_s0_arlen;
	reg [2:0]  axs_s0_arsize;
	reg [1:0]  axs_s0_arburst;
	reg        axs_s0_arvalid;
	reg        axs_s0_rready;
	reg        out_fifo_empty;
	
	wire       axs_s0_arready;
	wire [3:0] axs_s0_rid;
	wire       axs_s0_rlast;
	wire       axs_s0_rvalid;
	wire       out_fifo_pop;
	wire [1:0] out_fifo_pop_sel;

	// instantiate our design under test (DUT)
	fsm_4 f4 (
		.clk              (clk),
		.reset            (reset),
		.axs_s0_arid      (axs_s0_arid),
		.axs_s0_araddr    (axs_s0_araddr),
		.axs_s0_arlen     (axs_s0_arlen),
		.axs_s0_arsize    (axs_s0_arsize),
		.axs_s0_arburst   (axs_s0_arburst),
		.axs_s0_arvalid   (axs_s0_arvalid),
		.axs_s0_rready    (axs_s0_rready),
		.out_fifo_empty   (out_fifo_empty),
		.axs_s0_arready   (axs_s0_arready),
		.axs_s0_rid       (axs_s0_rid),
		.axs_s0_rlast     (axs_s0_rlast),
		.axs_s0_rvalid    (axs_s0_rvalid),
		.out_fifo_pop     (out_fifo_pop),
		.out_fifo_pop_sel (out_fifo_pop_sel)
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
		axs_s0_arvalid = 1'b0; // master: read address data not valid
		axs_s0_rready = 1'b0;  // master: not ready to accept read data
		out_fifo_empty = 1'b1; // slave: read data FIFO initially empty
		
		// wait for reset to deassert
		@(negedge reset);
		
		// @(posedge clk): transitions from INIT to AR_READY
		repeat (2) @(negedge clk);
		
		// set read address channel signals
		// @(posedge clk): transitions from AR_READY to OF_EMPTY
		axs_s0_arid = 4'b0101;
		axs_s0_araddr = 32'h0000_3f00;
		axs_s0_arlen = 8'b00000011;    // request 4 transfers of data
		axs_s0_arsize = 3'b000;        // each transfer is 1 byte wide
		axs_s0_arburst = 2'b00;        // burst type FIXED
		axs_s0_arvalid = 1'b1;
		repeat (2) @(negedge clk);
		
		// @(posedge clk): transitions from OF_EMPTY to MASTER_WAIT
		axs_s0_arvalid = 1'b0;
		out_fifo_empty = 1'b0;
		repeat (2) @(negedge clk);
		
		// @(posedge clk): transitions from MASTER_WAIT to R_VALID
		// 2 cycles in R_VALID, 1 cycle in R_VALID_LAST, 1 cycle: AR_READY 
		axs_s0_rready = 1'b1;
		repeat (4) @(negedge clk);
		
		// @(posedge clk): transitions from AR_READY to R_VALID_LAST
		axs_s0_arid = 4'b0110;
		axs_s0_arlen = 8'b00000000; // request 1 transfer of data this time
		axs_s0_arvalid = 1'b1;
				
		// stall and terminate the simulaiton
		repeat (2) @(negedge clk);
		$stop;
	end
endmodule
