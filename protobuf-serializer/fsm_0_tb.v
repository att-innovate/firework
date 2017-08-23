// fsm_0_tb.v

`timescale 1 ps / 1 ps

module fsm_0_tb ();
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
	reg         varint_in_fifo_full;
	reg         raw_data_in_fifo_full;

	wire        axs_s0_awready;
	wire        axs_s0_wready;
	wire [3:0]  axs_s0_bid;
	wire        axs_s0_bvalid;
	wire        varint_in_fifo_clr;
	wire        varint_in_fifo_push;
	wire        varint_in_index_clr;
	wire        varint_in_index_push;
	wire        varint_in_size_clr;
	wire        varint_in_size_push;
	wire        raw_data_in_fifo_clr;
	wire        raw_data_in_fifo_push;
	wire        raw_data_in_index_clr;
	wire        raw_data_in_index_push;
	wire        raw_data_in_wstrb_clr;
	wire        raw_data_in_wstrb_push;
	wire [31:0] wdata;
	wire [3:0]  wstrb;
	wire [9:0]  index;
	wire        varint64;

	// instantiate our design under test (DUT)
	fsm_0 f0 (
		.clk                    (clk),
		.reset                  (reset),
		.axs_s0_awid            (axs_s0_awid),
		.axs_s0_awaddr          (axs_s0_awaddr),
		.axs_s0_awlen           (axs_s0_awlen),
		.axs_s0_awsize          (axs_s0_awsize),
		.axs_s0_awburst         (axs_s0_awburst),
		.axs_s0_awvalid         (axs_s0_awvalid),
		.axs_s0_awready         (axs_s0_awready),
		.axs_s0_wdata           (axs_s0_wdata),
		.axs_s0_wstrb           (axs_s0_wstrb),
		.axs_s0_wvalid          (axs_s0_wvalid),
		.axs_s0_wready          (axs_s0_wready),
		.axs_s0_bready          (axs_s0_bready),
		.axs_s0_bid             (axs_s0_bid),
		.axs_s0_bvalid          (axs_s0_bvalid),
		.varint_in_fifo_full    (varint_in_fifo_full),
		.varint_in_fifo_clr     (varint_in_fifo_clr),
		.varint_in_fifo_push    (varint_in_fifo_push),
		.varint_in_index_clr    (varint_in_index_clr),
		.varint_in_index_push   (varint_in_index_push),
		.varint_in_size_clr     (varint_in_size_clr),
		.varint_in_size_push    (varint_in_size_push),
		.raw_data_in_fifo_full  (raw_data_in_fifo_full),
		.raw_data_in_fifo_clr   (raw_data_in_fifo_clr),
		.raw_data_in_fifo_push  (raw_data_in_fifo_push),
		.raw_data_in_index_clr  (raw_data_in_index_clr),
		.raw_data_in_index_push (raw_data_in_index_push),
		.raw_data_in_wstrb_clr  (raw_data_in_wstrb_clr),
		.raw_data_in_wstrb_push (raw_data_in_wstrb_push),
		.wdata                  (wdata),
		.wstrb                  (wstrb),
		.index                  (index),
		.varint64               (varint64)
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
		// initialize input vectors
		axs_s0_awid = 4'b0000;
		axs_s0_awaddr = 16'h0000;
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b000;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b0;
		axs_s0_wdata = 32'h0000_0000;
		axs_s0_wstrb = 4'b0000;
		axs_s0_wvalid = 1'b0;
		axs_s0_bready = 1'b0;
		varint_in_fifo_full = 1'b0;
		raw_data_in_fifo_full = 1'b0;

		// wait for reset to deassert
		@(negedge reset);

		// @(posedge clk): FSM transitions from INIT to AW_READY
		repeat (4) @(negedge clk);

		// set write address channel signals (sim. AXI master)
		axs_s0_awid = 4'b1111;
		axs_s0_awaddr = 16'h01; // address indicates incoming 32-bit varint data
		axs_s0_awlen = 8'h00;
		axs_s0_awsize = 3'b010;
		axs_s0_awburst = 2'b00;
		axs_s0_awvalid = 1'b1; // @(posedge clk): transitions to W_READY_VL

		repeat (4) @(negedge clk);

		// set write data channel signals (sim. AXI master)
		axs_s0_wdata = 32'h1234_5678;
		axs_s0_wstrb = 4'b1111;
		axs_s0_wvalid = 1'b1; // @(posedge clk): transitions to B_READY_VL

		// @(posedge clk): transitions from B_READY_VL to MASTER_WAIT
		repeat (4) @(negedge clk);

		// set write response channel handshake signal (sim. AXI master)
		axs_s0_bready = 1'b1; // @(posedge clk): transitions back to AW_READY

		// stall and terminate the simulation
		#10 $stop;
	end
endmodule
