// protobuf_serializer_tb3.v

`timescale 1 ps / 1 ps

module protobuf_serializer_tb3 ();
	reg         clk;
	reg         reset;
	reg [3:0]   axs_s0_awid;
	reg [31:0]  axs_s0_awaddr;
	reg [7:0]   axs_s0_awlen;
	reg [2:0]   axs_s0_awsize;
	reg [1:0]   axs_s0_awburst;
	reg         axs_s0_awvalid;
	reg [31:0]  axs_s0_wdata;
	reg [3:0]   axs_s0_wstrb;
	reg         axs_s0_wvalid;
	reg         axs_s0_bready;
	reg [3:0]   axs_s0_arid;
	reg [31:0]  axs_s0_araddr;
	reg [7:0]   axs_s0_arlen;
	reg [2:0]   axs_s0_arsize;
	reg [1:0]   axs_s0_arburst;
	reg         axs_s0_arvalid;
	reg         axs_s0_rready;

	wire        axs_s0_awready;
	wire        axs_s0_wready;
	wire [3:0]  axs_s0_bid;
	wire        axs_s0_bvalid;
	wire        axs_s0_arready;
	wire [3:0]  axs_s0_rid;
	wire [31:0] axs_s0_rdata;
	wire        axs_s0_rlast;
	wire        axs_s0_rvalid;

	// instantiate our design under test (DUT)
	protobuf_serializer p0 (
		.clock_clk      (clk),
		.reset_reset    (reset),
		.axs_s0_awid    (axs_s0_awid),
		.axs_s0_awaddr  (axs_s0_awaddr),
		.axs_s0_awlen   (axs_s0_awlen),
		.axs_s0_awsize  (axs_s0_awsize),
		.axs_s0_awburst (axs_s0_awburst),
		.axs_s0_awvalid (axs_s0_awvalid),
		.axs_s0_awready (axs_s0_awready),
		.axs_s0_wdata   (axs_s0_wdata),
		.axs_s0_wstrb   (axs_s0_wstrb),
		.axs_s0_wvalid  (axs_s0_wvalid),
		.axs_s0_wready  (axs_s0_wready),
		.axs_s0_bready  (axs_s0_bready),
		.axs_s0_bid     (axs_s0_bid),
		.axs_s0_bvalid  (axs_s0_bvalid),
		.axs_s0_arid    (axs_s0_arid),
		.axs_s0_araddr  (axs_s0_araddr),
		.axs_s0_arlen   (axs_s0_arlen),
		.axs_s0_arsize  (axs_s0_arsize),
		.axs_s0_arburst (axs_s0_arburst),
		.axs_s0_arvalid (axs_s0_arvalid),
		.axs_s0_arready (axs_s0_arready),
		.axs_s0_rid     (axs_s0_rid),
		.axs_s0_rdata   (axs_s0_rdata),
		.axs_s0_rlast   (axs_s0_rlast),
		.axs_s0_rvalid  (axs_s0_rvalid),
		.axs_s0_rready  (axs_s0_rready)
	);

	// generate the clock signal
	initial begin
		clk = 1'b0;
		forever #1 clk = ~clk;
	end

	// assert reset for 2 cycles (initialize AXI slave)
	initial begin
		reset = 1'b1;
		repeat (2) @(negedge clk);
		reset = 1'b0;
	end

	// simulate the DUT
	initial begin
		// initialize AXI master (set handshake signals low)
		axs_s0_awvalid = 1'b0;
		axs_s0_wvalid = 1'b0;
		axs_s0_bready = 1'b0;
		axs_s0_arvalid = 1'b0;
		axs_s0_rready = 1'b0;

		// wait for reset to deassert
		@(negedge reset);

		/* The output FIFO is 8KB in size. Let's write 1024 8-byte words 
		 * to fill it completely. 
		 */
		repeat (1024) begin
			// ------------------------------------------------------- //
			// Write a string with the value: "Go Blue!"               //
			//   encoding:   raw data                                  //
			//   size:       8 bytes                                   //
			//   output:     0x47 6f 20 42 6c 75 65 21                 //
			// ------------------------------------------------------- //

			// AXI master: set Write Address channel signals
			axs_s0_awid = 4'b1010;
			axs_s0_awaddr = 32'hf0; // raw data, not last transfer of payload
			axs_s0_awlen = 8'h00;
			axs_s0_awsize = 3'b010;
			axs_s0_awburst = 2'b00;
			axs_s0_awvalid = 1'b1;

			// AXI master: set Write Data channel signals
			axs_s0_wdata = 32'h42206f47;
			axs_s0_wstrb = 4'b1111;
			axs_s0_wvalid = 1'b1;

			// AXI master: set Write Response channel signals
			axs_s0_bready = 1'b1;

			// wait for write transaction to complete
			@(negedge axs_s0_bvalid);
			@(negedge clk);

			// ------------------------------------------------------- //

			// AXI master: set Write Address channel signals
			axs_s0_awid = 4'b1010;
			axs_s0_awaddr = 32'hf1; // raw data, last transfer of payload
			axs_s0_awlen = 8'h00;
			axs_s0_awsize = 3'b010;
			axs_s0_awburst = 2'b00;
			axs_s0_awvalid = 1'b1;

			// AXI master: set Write Data channel signals
			axs_s0_wdata = 32'h2165756c;
			axs_s0_wstrb = 4'b1111; // indicates 4 bytes of valid data: bits [31:0]
			axs_s0_wvalid = 1'b1;

			// AXI master: set Write Response channel signals
			axs_s0_bready = 1'b1;

			// wait for write transaction to complete
			@(negedge axs_s0_bvalid);
			@(negedge clk);
		end

		// halt write transactions temporarily
		axs_s0_awvalid = 1'b0;
		axs_s0_wvalid = 1'b0;
		axs_s0_bready = 1'b0;
		
		/* It takes 10,248 cycles for 8KB worth of write transaction data (where 
		 * transactions occur consecutively) to propagate through our protobuf 
		 * serializer circuit and fill the output FIFO to capacity. You'll just 
		 * have to take my word for it.
		 */
		repeat (10250) @(negedge clk);
		
		/* Let's write one more 8-byte phrase: We'll perform 1 write transaction
		 * of 4 bytes while the output FIFO is full, wait 13 cycles for the data
		 * to propagate through the circuit and stall in the OF_FULL state of fsm3
		 * (ready to be written to the output FIFO when space becomes available),
		 * perform 1 read transaction of 8 bytes, and conclude with 1 final write
		 * transaction of 4 bytes. We should observe the output FIFO's full signal
		 * toggle high, low, then high as its final state. 
		 */

		// ------------------------------------------------------- //
		// Write a string with the value: "Go B"                   //
		//   encoding:   raw data                                  //
		//   size:       4 bytes                                   //
		//   output:     0x47 6f 20 42                             //
		// ------------------------------------------------------- //
	 
		// AXI master: set Write Address channel signals
		axs_s0_awid = 4'b1010;
		axs_s0_awaddr = 32'hf0; // raw data, not last transfer of payload
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1;

		// AXI master: set Write Data channel signals
		axs_s0_wdata = 32'h42206f47;
		axs_s0_wstrb = 4'b1111;
		axs_s0_wvalid = 1'b1;

		// AXI master: set Write Response channel signals
		axs_s0_bready = 1'b1;		

		// halt write transaction and stall for 13 cycles total
		repeat (2) @(negedge clk);
		axs_s0_awvalid = 1'b0;
		@(negedge clk);
		axs_s0_wvalid = 1'b0;
				
		repeat (10) @(negedge clk);
	
		// ------------------------------------------------------- //
		// Read 8 bytes of data                                    //
		// ------------------------------------------------------- //

		// AXI master: set Read Address channel signals
		axs_s0_arid = 4'b0000;  // arbitrary, axs_s0_rid must reflect this value
		axs_s0_araddr = 32'h00; // read address will be defined in Qsys
		axs_s0_arlen = 8'h07;   // burst length = ARLEN+1 = 7+1 = 8 transfers
		axs_s0_arsize = 3'b000; // burst size = 2^ARSIZE = 2^0 = 1 byte
		axs_s0_arburst = 2'b00; // burst type: FIXED (ideal for accessing FIFOs)
		axs_s0_arvalid = 1'b1;  // indicates read address data valid

		// AXI master: set Read Data channel signals
		axs_s0_rready = 1'b1;   // indicates master is ready to accept read data

		// wait for read transaction to complete
		@(negedge axs_s0_rlast);
		@(negedge clk);

		// done reading: disable read transaction channels
		axs_s0_arvalid = 1'b0;
		axs_s0_rready = 1'b0;

		// ------------------------------------------------------- //
		// Write a string with the value: "lue!"                   //
		//   encoding:   raw data                                  //
		//   size:       4 bytes                                   //
		//   output:     0x6c 75 65 21                             //
		// ------------------------------------------------------- //

		// AXI master: set Write Address channel signals
		axs_s0_awid = 4'b1010;
		axs_s0_awaddr = 32'hf1; // raw data, last transfer of payload
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1;

		// AXI master: set Write Data channel signals
		axs_s0_wdata = 32'h2165756c;
		axs_s0_wstrb = 4'b1111; // indicates 4 bytes of valid data: bits [31:0]
		axs_s0_wvalid = 1'b1;

		// AXI master: set Write Response channel signals
		axs_s0_bready = 1'b1;
		
		// wait for write transaction to complete
		@(negedge axs_s0_bvalid);
		@(negedge clk);
		
		// done writing: disable write transaction channels
		axs_s0_awvalid = 1'b0;
		axs_s0_wvalid = 1'b0;
		axs_s0_bready = 1'b0;		
		
		// wait 13 cycles and terminate simulation
		repeat (13) @(negedge clk);
		$stop;
	end
endmodule
