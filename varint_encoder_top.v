module varint_encoder_top ( /* Implements AMBA AXI4 slave interface */
		
		input  wire        clock_clk,      //  clock.clk
		input  wire        reset_reset,     //  reset.reset

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

		input  wire        axs_s0_bready,  //       .bready
		output wire [3:0]  axs_s0_bid,     //       .bid
		output wire        axs_s0_bvalid,  //       .bvalid

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
		input  wire        axs_s0_rready   //       .rready
	);
	
	// Internal wires
	wire [31:0] in_q;
	wire        data_in_sel, data_clr, data_load, data_out_sel, gt_eq_128;
	wire [7:0]  out_data;
	wire        out_empty, out_full, out_pop, out_push;
	wire        in_empty, in_full, in_pop;
	// TODO: add extender logic wires
	
	// Submodule instances
	in_fifo in0 (
		.data  (axs_s0_wdata),  		 	//  fifo_input.datain
		.wrreq (axs_s0_wvalid), 		 	//            .wrreq
		.rdreq (in_pop),						//            .rdreq
		.clock (clock_clk),				 	//            .clk
		.sclr  (reset_reset),  				//            .sclr
		.q     (in_q), 				    	// fifo_output.dataout
		.full  (in_full), 				 	//            .full
		.empty (in_empty) 				 	//            .empty
	);
	
	controller c0 (
		.clk            (clock_clk),
		.reset          (reset_reset),
		.axs_s0_awid    (axs_s0_awid),
		.axs_s0_awaddr  (axs_s0_awaddr),
		.axs_s0_awlen   (axs_s0_awlen),
		.axs_s0_awsize  (axs_s0_awsize),
		.axs_s0_awburst (axs_s0_awburst),
		.axs_s0_awvalid (axs_s0_awvalid),
		.axs_s0_awready (axs_s0_awready),
		.axs_s0_wstrb   (axs_s0_wstrb),
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
		.axs_s0_rready  (axs_s0_rready),
		.axs_s0_rid     (axs_s0_rid),
		.axs_s0_rlast   (axs_s0_rlast),
		.axs_s0_rvalid  (axs_s0_rvalid),
		.in_empty       (in_empty),
		.in_full        (in_full),
		.in_pop         (in_pop),
		.data_in_sel    (data_in_sel),
		.data_clr       (data_clr),
		.data_load      (data_load),
		.data_out_sel   (data_out_sel),
		.gt_eq_128      (gt_eq_128),
		.out_empty      (out_empty),
		.out_full       (out_full),
		.out_pop        (out_pop),
		.out_push       (out_push),
		// TODO: add extender logic ports
	);
	
	datapath d0 (
		.clk          (clock_clk),
		.reset        (reset_reset),
		.raw_data     (in_q),
		.data_in_sel  (data_in_sel),
		.data_clr     (data_clr),
		.data_load    (data_load),
		.data_out_sel (data_out_sel),
		.gt_eq_128    (gt_eq_128),
		.encoded_byte (out_data),
	);
	
	out_fifo out0 (
		.data  (out_data),					//  fifo_input.datain
		.wrreq (out_push),					//            .wrreq
		.rdreq (out_pop),						//            .rdreq
		.clock (clock_clk),					//            .clk
		.sclr  (reset_reset),				//            .sclr
		.q     (out_q),						// fifo_output.dataout
		.full  (out_full),					//            .full
		.empty (out_empty)					//            .empty
	);
	
	extender_8to32 e0 (
		.clk   (clock_clk),
		.reset (reset_reset),
		// TODO: add ports & assign connections
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


/*module varint_encoder_top (
		input  wire			clock_clk,		 //	clock.clk
		input  wire			reset_reset		 //	reset.reset

		// Avalon-ST sink interface
		input  wire [31:0] asi_in0_data,	 // asi_in0.data
		input  wire        asi_in0_valid, //		  .valid
		output wire        asi_in0_ready, // 		  .ready
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

endmodule */
