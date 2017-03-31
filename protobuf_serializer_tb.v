// fsm_0_tb.v

`timescale 1 ps / 1 ps

module protobuf_serializer_tb ();
		reg        clk;
		reg        reset;
		reg [3:0]  axs_s0_awid;
		reg [31:0] axs_s0_awaddr;
		reg [7:0]  axs_s0_awlen;
		reg [2:0]  axs_s0_awsize;
		reg [1:0]  axs_s0_awburst;
		reg        axs_s0_awvalid;
		reg [31:0] axs_s0_wdata;
		reg [3:0]  axs_s0_wstrb;
		reg        axs_s0_wvalid;
		reg        axs_s0_bready;
		reg [3:0]  axs_s0_arid;
		reg [31:0] axs_s0_araddr;
		reg [7:0]  axs_s0_arlen;
		reg [2:0]  axs_s0_arsize;
		reg [1:0]  axs_s0_arburst;
		reg        axs_s0_arvalid;
		reg        axs_s0_rready;

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

	// assert reset for 4 cycles (initialize the FSM)
	initial begin
		reset = 1'b1;
		repeat (4) @(negedge clk);
		reset = 1'b0;
	end

	// simulate the DUT
	initial begin
		// initial input values
		axs_s0_awid = 4'b0000;
		axs_s0_awaddr = 32'h0000_0000;
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b000;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b0;
		axs_s0_wdata = 32'h0000_0000;
		axs_s0_wstrb = 4'b0000;
		axs_s0_wvalid = 1'b0;
		axs_s0_bready = 1'b0;

		// wait for reset to deassert
		@(negedge reset);
		
		// @posedge clk: FSM transitions from INIT to AW_READY
		repeat (4) @(negedge clk);

		// set write address channel signals (sim. AXI master)
		axs_s0_awid = 4'b1111;
		axs_s0_awaddr = 32'h01; // address indicates incoming 32-bit varint data
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1; // @posedge clk: transitions to W_READY_VL

		repeat (4) @(negedge clk);
		
		// set write data channel signals (sim. AXI master)
		axs_s0_wdata = 32'h1234_5678;
		axs_s0_wstrb = 4'b1111;
		axs_s0_wvalid = 1'b1; // @posedge clk: transitions to B_READY_VL
		
		// @posedge clk: transitions from B_READY_VL to MASTER_WAIT
		repeat (4) @(negedge clk);
		
		// set write response channel handshake signal (sim. AXI master)
		axs_s0_bready = 1'b1; // @posedge clk: transitions back to AW_READY
		
		// wait a couple cycles and terminate simulation
		#10 $stop;
	end
endmodule
