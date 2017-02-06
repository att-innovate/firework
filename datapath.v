// datapath.v

module datapath (
		// clock, reset inputs
		input  wire        clk,
		input  wire        reset,

		// Data I/O
		input  wire [31:0] raw_data,
		output wire [7:0]  encoded_byte,

		// Control signals
		input  wire        data_in_sel,
		input  wire        data_clr,
		input  wire        data_load,
		input  wire        data_out_sel,
		output wire        gt_eq_128
	);
	
	// TODO: implement datapath logic
	
endmodule
