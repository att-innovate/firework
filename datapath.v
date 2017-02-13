// datapath.v

module datapath (
		// clock, reset inputs
		input  wire        clk,
		input  wire        reset,

		// Data I/O
		input  wire [31:0] varint_data,
		input  wire [31:0] raw_data,
		output wire [7:0]  out,

		// Control signals
		input  wire        varint_in_sel,
		input  wire        varint_clr,
		input  wire        varint_ld,
		input  wire        varint_out_sel,
		output wire        gt_eq_128,
		
		input  wire        raw_data_clr,
		input  wire        raw_data_ld,
		input  wire [1:0]  raw_data_sel,

		input  wire        byte_sel
	);
	
	// TODO: implement datapath logic
	
endmodule
