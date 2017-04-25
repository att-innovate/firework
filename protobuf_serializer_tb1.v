// protobuf_serializer_tb1.v

`timescale 1 ps / 1 ps

module protobuf_serializer_tb1 ();
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

		// ------------------------------------------------------- //
		// Write a 32-bit integer with the value 10                //
		//   encoding:   varint                                    //
		//   size:       1 byte                                    //
		//   output:     0x0a                                      //
		// ------------------------------------------------------- //

		// AXI master: set Write Address channel signals
		axs_s0_awid = 4'b1111;  // arbitrary, axs_s0_bid must reflect this value
		axs_s0_awaddr = 32'h01; // indicates incoming 32-bit varint data
		axs_s0_awlen = 8'h00;   // burst length = AWLEN+1 = 0+1 = 1 transfer
		axs_s0_awsize = 3'b010; // burst size = 2^AWSIZE = 2^2 = 4 bytes
		axs_s0_awburst = 2'b00; // burst type: FIXED (ideal for accessing FIFOs)
		axs_s0_awvalid = 1'b1;  // indicates write address data valid

		// AXI master: set Write Data channel signals
		axs_s0_wdata = 32'd10;  // 32-bit write data bus
		axs_s0_wstrb = 4'b1111; // indicates which byte lanes contain valid data
		axs_s0_wvalid = 1'b1;   // indicates write data valid

		// AXI master: set Write Response channel signals
		axs_s0_bready = 1'b1;   // indicates master is ready for a response

		// wait for write transaction to complete
		@(negedge axs_s0_bvalid);
		@(negedge clk);

		// ------------------------------------------------------- //
		// Write a 32-bit integer with the value 127               //
		//   encoding:   varint                                    //
		//   size:       1 byte                                    //
		//   output:     0x7f                                      //
		// ------------------------------------------------------- //

		// AXI master: set Write Address channel signals
		axs_s0_awid = 4'b1101;
		axs_s0_awaddr = 32'h01;
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1;

		// AXI master: set Write Data channel signals
		axs_s0_wdata = 32'd127;
		axs_s0_wstrb = 4'b1111;
		axs_s0_wvalid = 1'b1;

		// AXI master: set Write Response channel signals
		axs_s0_bready = 1'b1;	

		// wait for write transaction to complete
		@(negedge axs_s0_bvalid);
		@(negedge clk);

		// ------------------------------------------------------- //
		// Write a 32-bit integer with the value 128               //
		//   encoding:   varint                                    //
		//   size:       2 bytes                                   //
		//   output:     0x80, 01                                  //
		// ------------------------------------------------------- //

		// AXI master: set Write Address channel signals
		axs_s0_awid = 4'b1101;
		axs_s0_awaddr = 32'h01;
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1;

		// AXI master: set Write Data channel signals
		axs_s0_wdata = 32'd128;
		axs_s0_wstrb = 4'b1111;
		axs_s0_wvalid = 1'b1;

		// AXI master: set Write Response channel signals
		axs_s0_bready = 1'b1;	

		// wait for write transaction to complete
		@(negedge axs_s0_bvalid);
		@(negedge clk);

		// ------------------------------------------------------- //
		// Write a 32-bit integer with the value -1,363,898,486    //
		//   encoding:   varint                                    //
		//   size:       5 bytes                                   //
		//   output:     0x8a, 9f, d2, f5, 0a                      //
		// ------------------------------------------------------- //

		// AXI master: set Write Address channel signals
		axs_s0_awid = 4'b1001;
		axs_s0_awaddr = 32'h01;
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1;

		// AXI master: set Write Data channel signals
		axs_s0_wdata = 32'd2931068810;
		axs_s0_wstrb = 4'b1111;
		axs_s0_wvalid = 1'b1;

		// AXI master: set Write Response channel signals
		axs_s0_bready = 1'b1;	

		// wait for write transaction to complete
		@(negedge axs_s0_bvalid);
		@(negedge clk);

		// ------------------------------------------------------- //
		// Write a 32-bit integer with the value -1                //
		//   encoding:   varint                                    //
		//   size:       5 bytes                                   //
		//   output:     0xff, ff, ff, ff, 0f                      //
		// ------------------------------------------------------- //

		// AXI master: set Write Address channel signals
		axs_s0_awid = 4'b1001;
		axs_s0_awaddr = 32'h01;
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1;

		// AXI master: set Write Data channel signals
		axs_s0_wdata = -32'd1;
		axs_s0_wstrb = 4'b1111;
		axs_s0_wvalid = 1'b1;

		// AXI master: set Write Response channel signals
		axs_s0_bready = 1'b1;	

		// wait for write transaction to complete
		@(negedge axs_s0_bvalid);
		@(negedge clk);

		// ------------------------------------------------------- //
		// Write a 64-bit integer with the value 8,824,793,894,794 //
		//   encoding:   varint                                    //
		//   size:       7 bytes                                   //
		//   output:     0x8a, 9f, d2, f5, ea, 80, 02              //
		//   output:     0x8a, 9f, d2, f5, 0a, 86, 10              //
		// ------------------------------------------------------- //

		// AXI master: set Write Address channel signals
		axs_s0_awid = 4'b1001;
		axs_s0_awaddr = 32'h00;
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1;

		// AXI master: set Write Data channel signals
		axs_s0_wdata = 32'haeb48f8a;
		axs_s0_wstrb = 4'b1111;
		axs_s0_wvalid = 1'b1;

		// AXI master: set Write Response channel signals
		axs_s0_bready = 1'b1;	

		// wait for write transaction to complete
		@(negedge axs_s0_bvalid);
		@(negedge clk);

		// ------------------------------------------------------- //

		// AXI master: set Write Address channel signals
		axs_s0_awid = 4'b1001;
		axs_s0_awaddr = 32'h01;
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1;

		// AXI master: set Write Data channel signals
		axs_s0_wdata = 32'h00000806;
		axs_s0_wstrb = 4'b1111;
		axs_s0_wvalid = 1'b1;

		// AXI master: set Write Response channel signals
		axs_s0_bready = 1'b1;	

		// wait for write transaction to complete
		@(negedge axs_s0_bvalid);
		@(negedge clk);

		// TODO: 64-bit varint value -5

		// done writing: disable write transaction channels
		axs_s0_awvalid = 1'b0;
		axs_s0_wvalid = 1'b0;
		axs_s0_bready = 1'b0;

		// ------------------------------------------------------- //
		// Read 21 bytes of data                                   //
		// ------------------------------------------------------- //

		// AXI master: set Read Address channel signals
		axs_s0_arid = 4'b0000;  // arbitrary, axs_s0_rid must reflect this value
		axs_s0_araddr = 32'h00; // read address will be defined in Qsys
		axs_s0_arlen = 8'h14;   // burst length = ARLEN+1 = 20+1 = 21 transfers
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
