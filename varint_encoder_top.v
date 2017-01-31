module varint_encoder_top (
	input wire [31:0]	data,
	input wire			valid,
	output wire			ready
);

	in_fifo u0 (
		.data  (<connected-to-data>),  //  fifo_input.datain
		.wrreq (<connected-to-wrreq>), //            .wrreq
		.rdreq (<connected-to-rdreq>), //            .rdreq
		.clock (<connected-to-clock>), //            .clk
		.sclr  (<connected-to-sclr>),  //            .sclr
		.q     (<connected-to-q>),     // fifo_output.dataout
		.usedw (<connected-to-usedw>), //            .usedw
		.full  (<connected-to-full>),  //            .full
		.empty (<connected-to-empty>)  //            .empty
	);

endmodule


// Avalon-ST sink
`timescale 1 ps / 1 ps
module new_component (
        input  wire [31:0] asi_in0_data,  // asi_in0.data
        output wire        asi_in0_ready, //        .ready
        input  wire        asi_in0_valid, //        .valid
        input  wire        clock_clk,     //   clock.clk
        input  wire        reset_reset    //   reset.reset
    );

    // TODO: Auto-generated HDL template

    assign asi_in0_ready = 1'b0;

endmodule



// AXI4 slave
`timescale 1 ps / 1 ps
module new_component (
        input  wire [3:0]  axs_s0_awid,    // axs_s0.awid
        input  wire [31:0] axs_s0_awaddr,  //       .awaddr
        input  wire [7:0]  axs_s0_awlen,   //       .awlen
        input  wire [2:0]  axs_s0_awsize,  //       .awsize
        input  wire [1:0]  axs_s0_awburst, //       .awburst
        input  wire        axs_s0_awvalid, //       .awvalid
        output wire        axs_s0_awready, //       .awready
        input  wire [31:0] axs_s0_wdata,   //       .wdata
        input  wire [3:0]  axs_s0_wstrb,   //       .wstrb
        input  wire        axs_s0_wvalid,  //       .wvalid
        output wire        axs_s0_wready,  //       .wready
        output wire [3:0]  axs_s0_bid,     //       .bid
        output wire        axs_s0_bvalid,  //       .bvalid
        input  wire        axs_s0_bready,  //       .bready
        input  wire [3:0]  axs_s0_arid,    //       .arid
        input  wire [31:0] axs_s0_araddr,  //       .araddr
        input  wire [7:0]  axs_s0_arlen,   //       .arlen
        input  wire [2:0]  axs_s0_arsize,  //       .arsize
        input  wire [1:0]  axs_s0_arburst, //       .arburst
        input  wire        axs_s0_arvalid, //       .arvalid
        output wire        axs_s0_arready, //       .arready
        output wire [3:0]  axs_s0_rid,     //       .rid
        output wire [31:0] axs_s0_rdata,   //       .rdata
        output wire        axs_s0_rlast,   //       .rlast
        output wire        axs_s0_rvalid,  //       .rvalid
        input  wire        axs_s0_rready,  //       .rready
        input  wire        clock_clk,      //  clock.clk
        input  wire        reset_reset     //  reset.reset
    );

    // TODO: Auto-generated HDL template
    assign axs_s0_wready = 1'b0;
    assign axs_s0_rid = 4'b0000;
    assign axs_s0_arready = 1'b0;
    assign axs_s0_rdata = 32'b00000000000000000000000000000000;
    assign axs_s0_awready = 1'b0;
    assign axs_s0_rlast = 1'b0;
    assign axs_s0_bid = 4'b0000;
    assign axs_s0_bvalid = 1'b0;
    assign axs_s0_rvalid = 1'b0;

endmodule
