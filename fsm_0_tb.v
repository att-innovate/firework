// fsm_0_tb.v

module fsm_0_tb ();
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
	wire        raw_data_in_fifo_clr;
	wire        raw_data_in_fifo_push;
	wire        raw_data_in_index_clr;
	wire        raw_data_in_index_push;
	wire        raw_data_in_wstrb_clr;
	wire        raw_data_in_wstrb_push;
	wire [31:0] wdata;
	wire [3:0]  wstrb;
	wire [9:0]  index;

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
			.raw_data_in_fifo_full  (raw_data_in_fifo_full),
			.raw_data_in_fifo_clr   (raw_data_in_fifo_clr),
			.raw_data_in_fifo_push  (raw_data_in_fifo_push),
			.raw_data_in_index_clr  (raw_data_in_index_clr),
			.raw_data_in_index_push (raw_data_in_index_push),
			.raw_data_in_wstrb_clr  (raw_data_in_wstrb_clr),
			.raw_data_in_wstrb_push (raw_data_in_wstrb_push),
			.wdata                  (wdata),
			.wstrb                  (wstrb),
			.index                  (index)
		);

	// generate the clock signal
	initial begin
		clk = 1'b0;
		forever #10 clk = ~clk;
	end

	// reset the sequential logic
	initial begin
		reset = 1'b1;
		repeat (4) @(negedge clk);
		reset = 1'b0;
	end
	
	// simulate the DUT
	initial begin
		// TODO: set all inputs to 0
		
		@(negedge reset);
		// do stuff
		repeat (/*wait ### cycles*/) @(negedge clk);
		// do stuff
		repeat (/*wait ### cycles*/) @(negedge clk);
		// do stuff
		repeat (/*wait ### cycles*/) @(negedge clk);
		
		#10 $finish;
	end
endmodule
