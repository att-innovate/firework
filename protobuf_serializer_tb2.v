// protobuf_serializer_tb2.v

`timescale 1 ps / 1 ps

module protobuf_serializer_tb2 ();
	reg         clk;
	reg         reset;
	reg [3:0]   axs_s0_awid;
	reg [15:0]  axs_s0_awaddr;
	reg [7:0]   axs_s0_awlen;
	reg [2:0]   axs_s0_awsize;
	reg [1:0]   axs_s0_awburst;
	reg         axs_s0_awvalid;
	reg [31:0]  axs_s0_wdata;
	reg [3:0]   axs_s0_wstrb;
	reg         axs_s0_wvalid;
	reg         axs_s0_bready;
	reg [3:0]   axs_s0_arid;
	reg [15:0]  axs_s0_araddr;
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

		// ------------------------------------------------------- //
		// Write a string with the value: "mario admon"            //
		//   encoding:   raw data                                  //
		//   size:       11 bytes                                  //
		//   output:     Ox6d 61 72 69 6f 20 61 64 6d 6f 6e        //
		// ------------------------------------------------------- //

		// AXI master: set Write Address channel signals
		axs_s0_awid = 4'b0011;
		axs_s0_awaddr = 16'hf0; // raw data, not last transfer of payload
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1;

		// AXI master: set Write Data channel signals
		axs_s0_wdata = 32'h6972616d;
		axs_s0_wstrb = 4'b1111;
		axs_s0_wvalid = 1'b1;

		// AXI master: set Write Response channel signals
		axs_s0_bready = 1'b1;

		// wait for write transaction to complete
		@(negedge axs_s0_bvalid);
		@(negedge clk);

		// ------------------------------------------------------- //

		// AXI master: set Write Address channel signals
		axs_s0_awid = 4'b0011;
		axs_s0_awaddr = 16'hf0;
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1;

		// AXI master: set Write Data channel signals
		axs_s0_wdata = 32'h6461206f;
		axs_s0_wstrb = 4'b1111;
		axs_s0_wvalid = 1'b1;

		// AXI master: set Write Response channel signals
		axs_s0_bready = 1'b1;

		// wait for write transaction to complete
		@(negedge axs_s0_bvalid);
		@(negedge clk);

		// ------------------------------------------------------- //

		// AXI master: set Write Address channel signals
		axs_s0_awid = 4'b0011;
		axs_s0_awaddr = 16'hf1; // raw data, last transfer of payload
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1;

		// AXI master: set Write Data channel signals
		axs_s0_wdata = 32'h006e6f6d;
		axs_s0_wstrb = 4'b0111; // indicates 3 bytes of valid data: bits [23:0]
		axs_s0_wvalid = 1'b1;

		// AXI master: set Write Response channel signals
		axs_s0_bready = 1'b1;

		// wait for write transaction to complete
		@(negedge axs_s0_bvalid);
		@(negedge clk);

		// ------------------------------------------------------- //
		// Write a string with the value: " "                      //
		//   encoding:   raw data                                  //
		//   size:       1 byte                                    //
		//   output:     0x20                                      //
		// ------------------------------------------------------- //

		// AXI master: set Write Address channel signals
		axs_s0_awid = 4'b0011;
		axs_s0_awaddr = 16'hf1; // raw data, last transfer of payload
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1;

		// AXI master: set Write Data channel signals
		axs_s0_wdata = 32'h70a2f520;
		axs_s0_wstrb = 4'b0001; // indicates 1 byte of valid data: bits [7:0]
		axs_s0_wvalid = 1'b1;

		// AXI master: set Write Response channel signals
		axs_s0_bready = 1'b1;

		// wait for write transaction to complete
		@(negedge axs_s0_bvalid);
		@(negedge clk);

		// ------------------------------------------------------- //
		// Write a string with the value: "Firework"               //
		//   encoding:   raw data                                  //
		//   size:       8 bytes                                   //
		//   output:     0x46 69 72 65 77 6f 72 6b                 //
		// ------------------------------------------------------- //

		// AXI master: set Write Address channel signals
		axs_s0_awid = 4'b0011;
		axs_s0_awaddr = 16'hf0; // raw data, not last transfer of payload
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1;

		// AXI master: set Write Data channel signals
		axs_s0_wdata = 32'h65726946;
		axs_s0_wstrb = 4'b1111;
		axs_s0_wvalid = 1'b1;

		// AXI master: set Write Response channel signals
		axs_s0_bready = 1'b1;

		// wait for write transaction to complete
		@(negedge axs_s0_bvalid);
		@(negedge clk);

		// ------------------------------------------------------- //

		// AXI master: set Write Address channel signals
		axs_s0_awid = 4'b0011;
		axs_s0_awaddr = 16'hf1; // raw data, last transfer of payload
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1;

		// AXI master: set Write Data channel signals
		axs_s0_wdata = 32'h6b726f77;
		axs_s0_wstrb = 4'b1111; // indicates 4 bytes of valid data: bits [31:0]
		axs_s0_wvalid = 1'b1;

		// AXI master: set Write Response channel signals
		axs_s0_bready = 1'b1;

		// wait for write transaction to complete
		@(negedge axs_s0_bvalid);
		@(negedge clk);

		// ------------------------------------------------------- //
		// Write a string with the value: " "                      //
		//   encoding:   raw data                                  //
		//   size:       1 byte                                    //
		//   output:     0x20                                      //
		// ------------------------------------------------------- //

		// AXI master: set Write Address channel signals
		axs_s0_awid = 4'b0011;
		axs_s0_awaddr = 16'hf1; // raw data, last transfer of payload
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1;

		// AXI master: set Write Data channel signals
		axs_s0_wdata = 32'h70a2f520;
		axs_s0_wstrb = 4'b0001; // indicates 1 byte of valid data: bits [7:0]
		axs_s0_wvalid = 1'b1;

		// AXI master: set Write Response channel signals
		axs_s0_bready = 1'b1;

		// wait for write transaction to complete
		@(negedge axs_s0_bvalid);
		@(negedge clk);

		// ------------------------------------------------------- //
		// Write a string with the value: "Go"                     //
		//   encoding:   raw data                                  //
		//   size:       2 bytes                                   //
		//   output:     0x47 6f                                   //
		// ------------------------------------------------------- //

		// AXI master: set Write Address channel signals
		axs_s0_awid = 4'b0011;
		axs_s0_awaddr = 16'hf1; // raw data, last transfer of payload
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1;

		// AXI master: set Write Data channel signals
		axs_s0_wdata = 32'h1a846f47;
		axs_s0_wstrb = 4'b0011; // indicates 2 bytes of valid data: bits [15:0]
		axs_s0_wvalid = 1'b1;

		// AXI master: set Write Response channel signals
		axs_s0_bready = 1'b1;

		// wait for write transaction to complete
		@(negedge axs_s0_bvalid);
		@(negedge clk);
		
		// ------------------------------------------------------- //
		// Write a string with the value: " Blue!"                 //
		//   encoding:   raw data                                  //
		//   size:       6 bytes                                   //
		//   output:     0x20 42 6c 75 65 21                       //
		// ------------------------------------------------------- //

		// AXI master: set Write Address channel signals
		axs_s0_awid = 4'b0011;
		axs_s0_awaddr = 16'hf0; // raw data, not last transfer of payload
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1;

		// AXI master: set Write Data channel signals
		axs_s0_wdata = 32'h756c4220;
		axs_s0_wstrb = 4'b1111;
		axs_s0_wvalid = 1'b1;

		// AXI master: set Write Response channel signals
		axs_s0_bready = 1'b1;

		// wait for write transaction to complete
		@(negedge axs_s0_bvalid);
		@(negedge clk);

		// ------------------------------------------------------- //

		// AXI master: set Write Address channel signals
		axs_s0_awid = 4'b0011;
		axs_s0_awaddr = 16'hf1; // raw data, last transfer of payload
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1;

		// AXI master: set Write Data channel signals
		axs_s0_wdata = 32'h00002165;
		axs_s0_wstrb = 4'b0011; // indicates 2 bytes of valid data: bits [15:0]
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

		// ------------------------------------------------------- //
		// Read 29 bytes of data                                   //
		// ------------------------------------------------------- //

		// AXI master: set Read Address channel signals
		axs_s0_arid = 4'b0000;  // arbitrary, axs_s0_rid must reflect this value
		axs_s0_araddr = 16'h00; // read address will be defined in Qsys
		axs_s0_arlen = 8'h1c;   // burst length = ARLEN+1 = 28+1 = 29 transfers
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

		// wait a couple cycles and terminate simulation
		repeat (2) @(negedge clk);
		$stop;
	end
endmodule
