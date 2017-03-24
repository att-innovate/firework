module varint_encoder_top ( /* Implements AMBA AXI4 slave interface */
		input  wire        clock_clk,      //  clock.clk
		input  wire        reset_reset,    //  reset.reset

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
	wire [31:0] wdata;
	wire [3:0]  wstrb;
	wire [9:0]  index;

	wire varint_in_fifo_full, varint_in_fifo_empty;
	wire varint_in_fifo_clr, varint_in_fifo_push, varint_in_fifo_pop;
	wire varint_in_index_clr, varint_in_index_push, varint_in_index_pop;

	wire raw_data_in_fifo_full, raw_data_in_fifo_empty;
	wire raw_data_in_fifo_clr, raw_data_in_fifo_push, raw_data_in_fifo_pop;
	wire raw_data_in_index_clr, raw_data_in_index_push, raw_data_in_index_pop;
	wire raw_data_in_wstrb_clr, raw_data_in_wstrb_push, raw_data_in_wstrb_pop;

	wire [31:0] varint_in_fifo_q, raw_data_in_fifo_q;
	wire [9:0]  varint_in_index_q, raw_data_in_index_q;
	wire [3:0]  raw_data_in_wstrb_q;

	wire [1:0]  raw_data_sel;
	wire        raw_data_push_mux;

	wire [7:0]  raw_data_mux, encoded_byte;

	wire varint_out_fifo_full, varint_out_fifo_empty;
	wire varint_out_fifo_clr, varint_out_fifo_push, varint_out_fifo_pop;
	wire varint_out_index_clr, varint_out_index_push, varint_out_index_pop;

	wire raw_data_out_fifo_full, raw_data_out_fifo_empty;
	wire raw_data_out_fifo_clr, raw_data_out_fifo_push, raw_data_out_fifo_pop;
	wire raw_data_out_index_clr, raw_data_out_index_push, raw_data_out_index_pop;

	wire [7:0] varint_out_fifo_q, raw_data_out_fifo_q;
	wire [9:0] varint_out_index_q, raw_data_out_index_q;

	wire varint_data_valid, varint_data_accepted, varint_enable;
	wire raw_data_valid, raw_data_accepted, raw_data_enable;

	wire [7:0] out_fifo_data;

	wire out_fifo_full, out_fifo_empty;
	wire out_fifo_clr, out_fifo_push, out_fifo_pop;

	wire [1:0] out_fifo_pop_sel;
	wire out_fifo_pop_mux;

	// Submodule instances
	varint_in_fifo in0 (
		.data  (wdata),                  //  fifo_input.datain
		.wrreq (varint_in_fifo_push),    //            .wrreq
		.rdreq (varint_in_fifo_pop),     //            .rdreq
		.clock (clock_clk),              //            .clk
		.sclr  (varint_in_fifo_clr),     //            .sclr
		.q     (varint_in_fifo_q),       // fifo_output.dataout
		.full  (varint_in_fifo_full),    //            .full
		.empty (varint_in_fifo_empty)    //            .empty
	);
	
	varint_in_index in1 (
		.data  (index),                  //  fifo_input.datain
		.wrreq (varint_in_index_push),   //            .wrreq
		.rdreq (varint_in_index_pop),    //            .rdreq
		.clock (clock_clk),              //            .clk
		.sclr  (varint_in_index_clr),    //            .sclr
		.q     (varint_in_index_q)       // fifo_output.dataout
	);
	
	raw_data_in_fifo in2 (
		.data  (wdata),                  //  fifo_input.datain
		.wrreq (raw_data_in_fifo_push),  //            .wrreq
		.rdreq (raw_data_in_fifo_pop),   //            .rdreq
		.clock (clock_clk),              //            .clk
		.sclr  (raw_data_in_fifo_clr),   //            .sclr
		.q     (raw_data_in_fifo_q),     // fifo_output.dataout
		.full  (raw_data_in_fifo_full),  //            .full
		.empty (raw_data_in_fifo_empty)  //            .empty
	);
	
	raw_data_in_index in3 (
		.data  (index),                  //  fifo_input.datain
		.wrreq (raw_data_in_index_push), //            .wrreq
		.rdreq (raw_data_in_index_pop),  //            .rdreq
		.clock (clock_clk),              //            .clk
		.sclr  (raw_data_in_index_clr),  //            .sclr
		.q     (raw_data_in_index_q)     // fifo_output.dataout
	); 
	
	raw_data_in_wstrb in4 (
		.data  (wstrb),                  //  fifo_input.datain
		.wrreq (raw_data_in_wstrb_push), //            .wrreq
		.rdreq (raw_data_in_wstrb_pop),  //            .rdreq
		.clock (clock_clk),              //            .clk
		.sclr  (raw_data_in_wstrb_clr),  //            .sclr
		.q     (raw_data_in_wstrb_q)     // fifo_output.dataout
	);
	
	fsm_0 f0 (
		.clk                    (clock_clk),
		.reset                  (reset_reset),
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
	
	fsm_1 f1 (
		.clk                    (clock_clk),
		.reset                  (reset_reset),
		.raw_data_in_fifo_empty (raw_data_in_fifo_empty),
		.raw_data_in_fifo_pop   (raw_data_in_fifo_pop),
		.raw_data_in_index_pop  (raw_data_in_index_pop),
		.raw_data_in_wstrb_pop  (raw_data_in_wstrb_pop),
		.raw_data_out_fifo_full (raw_data_out_fifo_full),
		.raw_data_out_fifo_clr  (raw_data_out_fifo_clr),
		.raw_data_out_index_clr (raw_data_out_index_clr),
		.raw_data_sel           (raw_data_sel)
	);

	assign raw_data_push_mux = (raw_data_sel == 2'b00) ? raw_data_in_wstrb_q[0] :
	                           ((raw_data_sel == 2'b01) ? raw_data_in_wstrb_q[1] : 
	                           ((raw_data_sel == 2'b10) ? raw_data_in_wstrb_q[2] : 
	                                                      raw_data_in_wstrb_q[3]));

	assign raw_data_mux = (raw_data_sel == 2'b00) ? raw_data_in_fifo_q[7:0] :
	                      ((raw_data_sel == 2'b01) ? raw_data_in_fifo_q[15:8] :
	                      ((raw_data_sel == 2'b10) ? raw_data_in_fifo_q[23:16] :
	                                                 raw_data_in_fifo_q[31:24]));

	fsm_2 f2 (
		.clk                   (clock_clk),
		.reset                 (reset_reset),
		.varint_in_fifo_empty  (varint_in_fifo_empty),
		.varint_in_fifo_pop    (varint_in_fifo_pop),
		.varint_in_index_pop   (varint_in_index_pop),
		.varint_out_fifo_full  (varint_out_fifo_full),
		.varint_out_fifo_clr   (varint_out_fifo_clr),
		.varint_out_fifo_push  (varint_out_fifo_push),
		.varint_out_index_clr  (varint_out_index_clr),
		.varint_out_index_push (varint_out_index_push),
		.varint_data_in        (varint_in_fifo_q),
		.varint_data_out       (encoded_byte)
	);

	fsm_3a f3a (
		.clk                   (clock_clk),
		.reset                 (reset_reset),
		.varint_out_fifo_empty (varint_out_fifo_empty),
		.varint_out_fifo_pop   (varint_out_fifo_pop),
		.varint_out_index_pop  (varint_out_index_pop),
		.varint_data_accepted  (varint_data_accepted),
		.varint_data_valid     (varint_data_valid)
	);

	fsm_3b f3b (
		.clk                     (clock_clk),
		.reset                   (reset_reset),
		.raw_data_out_fifo_empty (raw_data_out_fifo_empty),
		.raw_data_out_fifo_pop   (raw_data_out_fifo_pop),
		.raw_data_out_index_pop  (raw_data_out_index_pop),
		.raw_data_accepted       (raw_data_accepted),
		.raw_data_valid          (raw_data_valid)
	);

	fsm_3 f3 (
		.clk                  (clock_clk),
		.reset                (reset_reset),
		.out_fifo_full        (out_fifo_full),
		.out_fifo_clr         (out_fifo_clr),
		.out_fifo_push        (out_fifo_push),
		.varint_enable        (varint_enable),
		.raw_data_enable      (raw_data_enable),
		.varint_out_index_q   (varint_out_index_q),
		.raw_data_out_index_q (raw_data_out_index_q),
		.varint_data_valid    (varint_data_valid),
		.raw_data_valid       (raw_data_valid),
		.varint_data_accepted (varint_data_accepted),
		.raw_data_accepted    (raw_data_accepted)
	);

	assign out_fifo_data = (varint_enable) ? varint_out_fifo_q : 8'hzz;
	assign out_fifo_data = (raw_data_enable) ? raw_data_out_fifo_q : 8'hzz;
	
	fsm_4 f4 (
		.clk              (clock_clk),
		.reset            (reset_reset),
		.axs_s0_arid      (axs_s0_arid),
		.axs_s0_araddr    (axs_s0_araddr),
		.axs_s0_arlen     (axs_s0_arlen),
		.axs_s0_arsize    (axs_s0_arsize),
		.axs_s0_arburst   (axs_s0_arburst),
		.axs_s0_arvalid   (axs_s0_arvalid),
		.axs_s0_arready   (axs_s0_arready),
		.axs_s0_rid       (axs_s0_rid),
		.axs_s0_rlast     (axs_s0_rlast),
		.axs_s0_rvalid    (axs_s0_rvalid),
		.axs_s0_rready    (axs_s0_rready),
		.out_fifo_empty   (out_fifo_empty),
		.out_fifo_pop     (out_fifo_pop),
		.out_fifo_pop_sel (out_fifo_pop_sel)
	);
	
	assign out_fifo_pop_mux = (out_fifo_pop_sel == 2'b00) ? out_fifo_pop :
	                          ((out_fifo_pop_sel == 2'b01) ? axs_s0_arvalid : 
							        ((out_fifo_pop_sel == 2'b10) ? axs_s0_rready : 1'bx));

	varint_out_fifo out0 (
		.data  (encoded_byte),           //  fifo_input.datain
		.wrreq (varint_out_fifo_push),   //            .wrreq
		.rdreq (varint_out_fifo_pop),    //            .rdreq
		.clock (clock_clk),              //            .clk
		.sclr  (varint_out_fifo_clr),    //            .sclr
		.q     (varint_out_fifo_q),      // fifo_output.dataout
		.full  (varint_out_fifo_full),   //            .full
		.empty (varint_out_fifo_empty)   //            .empty
	);

	varint_out_index out1 (
		.data  (varint_in_index_q),      //  fifo_input.datain
		.wrreq (varint_out_index_push),  //            .wrreq
		.rdreq (varint_out_index_pop),   //            .rdreq
		.clock (clock_clk),              //            .clk
		.sclr  (varint_out_index_clr),   //            .sclr
		.q     (varint_out_index_q)      // fifo_output.dataout
	);

	raw_data_out_fifo out2 (
		.data  (raw_data_mux),           //  fifo_input.datain
		.wrreq (raw_data_push_mux),      //            .wrreq
		.rdreq (raw_data_out_fifo_pop),  //            .rdreq
		.clock (clock_clk),              //            .clk
		.sclr  (raw_data_out_fifo_clr),  //            .sclr
		.q     (raw_data_out_fifo_q),    // fifo_output.dataout
		.full  (raw_data_out_fifo_full), //            .full
		.empty (raw_data_out_fifo_empty) //            .empty
	);

	raw_data_out_index out3 (
		.data  (raw_data_in_index_q),    //  fifo_input.datain
		.wrreq (raw_data_push_mux),      //            .wrreq
		.rdreq (raw_data_out_index_pop), //            .rdreq
		.clock (clock_clk),              //            .clk
		.sclr  (raw_data_out_index_clr), //            .sclr
		.q     (raw_data_out_index_q)    // fifo_output.dataout
	);

	out_fifo out4 (
		.data  (out_fifo_data),          //  fifo_input.datain
		.wrreq (out_fifo_push),          //            .wrreq
		.rdreq (out_fifo_pop_mux),       //            .rdreq
		.clock (clock_clk),              //            .clk
		.sclr  (out_fifo_clr),           //            .sclr
		.q     (axs_s0_rdata[7:0]),      // fifo_output.dataout
		.usedw (/*<connect-to-usedw>*/), //            .usedw
		.full  (out_fifo_full),          //            .full
		.empty (out_fifo_empty)          //            .empty
	);
	
	assign axs_s0_rdata[31:8] = 24'h000000;

endmodule
