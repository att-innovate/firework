// fsm_0.v

module fsm_0 (
		// global signals (clock, reset)
		input  wire        clk,
		input  wire        reset,

		// AXI4 write address, write data, write response channel signals
		input  wire [3:0]  axs_s0_awid,
		input  wire [31:0] axs_s0_awaddr,
		input  wire [7:0]  axs_s0_awlen,
		input  wire [2:0]  axs_s0_awsize,
		input  wire [1:0]  axs_s0_awburst,
		input  wire        axs_s0_awvalid,
		output reg         axs_s0_awready,

		input  wire [31:0] axs_s0_wdata,
		input  wire [3:0]  axs_s0_wstrb,
		input  wire        axs_s0_wvalid,
		output reg         axs_s0_wready,

		input  wire        axs_s0_bready,
		output reg [3:0]   axs_s0_bid,
		output reg         axs_s0_bvalid,

		// datapath control signals
		input  wire        varint_in_fifo_full,
		output reg         varint_in_fifo_clr,
		output reg         varint_in_fifo_push,
		output reg         varint_in_index_clr,
		output reg         varint_in_index_push,

		input  wire        raw_data_in_fifo_full,
		output reg         raw_data_in_fifo_clr,
		output reg         raw_data_in_fifo_push,
		output reg         raw_data_in_index_clr,
		output reg         raw_data_in_index_push,
		output reg         raw_data_in_wstrb_clr,
		output reg         raw_data_in_wstrb_push,

		// datapath registers
		output reg  [31:0] wdata,
		output reg  [3:0]  wstrb,
		output reg  [9:0]  index
	);

		// state encoding (one-hot encoding)
		parameter INIT        = 16'h0001,
		          AW_READY    = 16'h0002,
		          W_READY_VN  = 16'h0004,
		          W_READY_VL  = 16'h0008,
		          W_READY_RN  = 16'h0010,
		          W_READY_RL  = 16'h0020,
		          FIFO_FULL_V = 16'h0040,
		          FIFO_FULL_R = 16'h0080,
		          B_READY_0   = 16'h0100,
		          B_READY_1   = 16'h0200,
		          B_READY_2   = 16'h0400,
		          B_READY_3   = 16'h0800,
		          MASTER_WAIT = 16'h1000;
					 
		// internal registers
		reg [15:0] state;
		reg [15:0] next_state;		

		reg [3:0]  awid;
		reg [31:0] awaddr;
		reg [7:0]  awlen;
		reg [2:0]  awsize;
		reg [1:0]  awburst;

		// next state logic
		
		// state memory
		
		// output logic

endmodule
