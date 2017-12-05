// Copyright (C) 2017  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Standard Edition"

// DATE "12/05/2017 15:07:59"

// 
// Device: Altera 10AS066N3F40E2SG Package FBGA1517
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module varint_out_fifo (
	data,
	wrreq,
	rdreq,
	clock,
	sclr,
	q,
	full,
	empty)/* synthesis synthesis_greybox=0 */;
input 	[7:0] data;
input 	wrreq;
input 	rdreq;
input 	clock;
input 	sclr;
output 	[7:0] q;
output 	full;
output 	empty;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[0] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[1] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[2] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[3] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[4] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[5] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[6] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[7] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|full_dff~q ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|empty_dff~q ;
wire \wrreq~input_o ;
wire \clock~input_o ;
wire \rdreq~input_o ;
wire \data[0]~input_o ;
wire \data[1]~input_o ;
wire \data[2]~input_o ;
wire \data[3]~input_o ;
wire \data[4]~input_o ;
wire \data[5]~input_o ;
wire \data[6]~input_o ;
wire \data[7]~input_o ;
wire \sclr~input_o ;


varint_out_fifo_varint_out_fifo_fifo_171_u2h7cyi fifo_0(
	.q_b_0(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[0] ),
	.q_b_1(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[1] ),
	.q_b_2(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[2] ),
	.q_b_3(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[3] ),
	.q_b_4(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[4] ),
	.q_b_5(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[5] ),
	.q_b_6(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[6] ),
	.q_b_7(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[7] ),
	.full_dff(\fifo_0|scfifo_component|auto_generated|dpfifo|full_dff~q ),
	.empty_dff(\fifo_0|scfifo_component|auto_generated|dpfifo|empty_dff~q ),
	.wrreq(\wrreq~input_o ),
	.clock(\clock~input_o ),
	.rdreq(\rdreq~input_o ),
	.data_0(\data[0]~input_o ),
	.data_1(\data[1]~input_o ),
	.data_2(\data[2]~input_o ),
	.data_3(\data[3]~input_o ),
	.data_4(\data[4]~input_o ),
	.data_5(\data[5]~input_o ),
	.data_6(\data[6]~input_o ),
	.data_7(\data[7]~input_o ),
	.sclr(\sclr~input_o ));

assign \wrreq~input_o  = wrreq;

assign \clock~input_o  = clock;

assign \rdreq~input_o  = rdreq;

assign \data[0]~input_o  = data[0];

assign \data[1]~input_o  = data[1];

assign \data[2]~input_o  = data[2];

assign \data[3]~input_o  = data[3];

assign \data[4]~input_o  = data[4];

assign \data[5]~input_o  = data[5];

assign \data[6]~input_o  = data[6];

assign \data[7]~input_o  = data[7];

assign \sclr~input_o  = sclr;

assign q[0] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[0] ;

assign q[1] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[1] ;

assign q[2] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[2] ;

assign q[3] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[3] ;

assign q[4] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[4] ;

assign q[5] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[5] ;

assign q[6] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[6] ;

assign q[7] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[7] ;

assign full = \fifo_0|scfifo_component|auto_generated|dpfifo|full_dff~q ;

assign empty = ~ \fifo_0|scfifo_component|auto_generated|dpfifo|empty_dff~q ;

endmodule

module varint_out_fifo_varint_out_fifo_fifo_171_u2h7cyi (
	q_b_0,
	q_b_1,
	q_b_2,
	q_b_3,
	q_b_4,
	q_b_5,
	q_b_6,
	q_b_7,
	full_dff,
	empty_dff,
	wrreq,
	clock,
	rdreq,
	data_0,
	data_1,
	data_2,
	data_3,
	data_4,
	data_5,
	data_6,
	data_7,
	sclr)/* synthesis synthesis_greybox=0 */;
output 	q_b_0;
output 	q_b_1;
output 	q_b_2;
output 	q_b_3;
output 	q_b_4;
output 	q_b_5;
output 	q_b_6;
output 	q_b_7;
output 	full_dff;
output 	empty_dff;
input 	wrreq;
input 	clock;
input 	rdreq;
input 	data_0;
input 	data_1;
input 	data_2;
input 	data_3;
input 	data_4;
input 	data_5;
input 	data_6;
input 	data_7;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



varint_out_fifo_scfifo_1 scfifo_component(
	.q({q_b_7,q_b_6,q_b_5,q_b_4,q_b_3,q_b_2,q_b_1,q_b_0}),
	.full_dff(full_dff),
	.empty_dff(empty_dff),
	.wrreq(wrreq),
	.clock(clock),
	.rdreq(rdreq),
	.data({data_7,data_6,data_5,data_4,data_3,data_2,data_1,data_0}),
	.sclr(sclr));

endmodule

module varint_out_fifo_scfifo_1 (
	q,
	full_dff,
	empty_dff,
	wrreq,
	clock,
	rdreq,
	data,
	sclr)/* synthesis synthesis_greybox=0 */;
output 	[7:0] q;
output 	full_dff;
output 	empty_dff;
input 	wrreq;
input 	clock;
input 	rdreq;
input 	[7:0] data;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



varint_out_fifo_scfifo_lna1 auto_generated(
	.q({q[7],q[6],q[5],q[4],q[3],q[2],q[1],q[0]}),
	.full_dff(full_dff),
	.empty_dff(empty_dff),
	.wrreq(wrreq),
	.clock(clock),
	.rdreq(rdreq),
	.data({data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]}),
	.sclr(sclr));

endmodule

module varint_out_fifo_scfifo_lna1 (
	q,
	full_dff,
	empty_dff,
	wrreq,
	clock,
	rdreq,
	data,
	sclr)/* synthesis synthesis_greybox=0 */;
output 	[7:0] q;
output 	full_dff;
output 	empty_dff;
input 	wrreq;
input 	clock;
input 	rdreq;
input 	[7:0] data;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



varint_out_fifo_a_dpfifo_8fa1 dpfifo(
	.q({q[7],q[6],q[5],q[4],q[3],q[2],q[1],q[0]}),
	.full_dff1(full_dff),
	.empty_dff1(empty_dff),
	.wrreq(wrreq),
	.clock(clock),
	.rdreq(rdreq),
	.data({data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]}),
	.sclr(sclr));

endmodule

module varint_out_fifo_a_dpfifo_8fa1 (
	q,
	full_dff1,
	empty_dff1,
	wrreq,
	clock,
	rdreq,
	data,
	sclr)/* synthesis synthesis_greybox=0 */;
output 	[7:0] q;
output 	full_dff1;
output 	empty_dff1;
input 	wrreq;
input 	clock;
input 	rdreq;
input 	[7:0] data;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \wr_ptr|counter_reg_bit[0]~q ;
wire \wr_ptr|counter_reg_bit[1]~q ;
wire \wr_ptr|counter_reg_bit[2]~q ;
wire \wr_ptr|counter_reg_bit[3]~q ;
wire \wr_ptr|counter_reg_bit[4]~q ;
wire \wr_ptr|counter_reg_bit[5]~q ;
wire \wr_ptr|counter_reg_bit[6]~q ;
wire \wr_ptr|counter_reg_bit[7]~q ;
wire \wr_ptr|counter_reg_bit[8]~q ;
wire \wr_ptr|counter_reg_bit[9]~q ;
wire \wr_ptr|counter_reg_bit[10]~q ;
wire \wr_ptr|counter_reg_bit[11]~q ;
wire \rd_ptr_msb|counter_reg_bit[0]~q ;
wire \rd_ptr_msb|counter_reg_bit[1]~q ;
wire \rd_ptr_msb|counter_reg_bit[2]~q ;
wire \rd_ptr_msb|counter_reg_bit[3]~q ;
wire \rd_ptr_msb|counter_reg_bit[4]~q ;
wire \rd_ptr_msb|counter_reg_bit[5]~q ;
wire \rd_ptr_msb|counter_reg_bit[6]~q ;
wire \rd_ptr_msb|counter_reg_bit[7]~q ;
wire \rd_ptr_msb|counter_reg_bit[8]~q ;
wire \rd_ptr_msb|counter_reg_bit[9]~q ;
wire \rd_ptr_msb|counter_reg_bit[10]~q ;
wire \usedw_counter|counter_reg_bit[5]~q ;
wire \usedw_counter|counter_reg_bit[4]~q ;
wire \usedw_counter|counter_reg_bit[3]~q ;
wire \usedw_counter|counter_reg_bit[2]~q ;
wire \usedw_counter|counter_reg_bit[1]~q ;
wire \usedw_counter|counter_reg_bit[0]~q ;
wire \usedw_counter|counter_reg_bit[11]~q ;
wire \usedw_counter|counter_reg_bit[10]~q ;
wire \usedw_counter|counter_reg_bit[9]~q ;
wire \usedw_counter|counter_reg_bit[8]~q ;
wire \usedw_counter|counter_reg_bit[7]~q ;
wire \usedw_counter|counter_reg_bit[6]~q ;
wire \low_addressa[0]~q ;
wire \rd_ptr_lsb~q ;
wire \ram_read_address[0]~0_combout ;
wire \low_addressa[1]~q ;
wire \ram_read_address[1]~1_combout ;
wire \low_addressa[2]~q ;
wire \ram_read_address[2]~2_combout ;
wire \low_addressa[3]~q ;
wire \ram_read_address[3]~3_combout ;
wire \low_addressa[4]~q ;
wire \ram_read_address[4]~4_combout ;
wire \low_addressa[5]~q ;
wire \ram_read_address[5]~5_combout ;
wire \low_addressa[6]~q ;
wire \ram_read_address[6]~6_combout ;
wire \low_addressa[7]~q ;
wire \ram_read_address[7]~7_combout ;
wire \low_addressa[8]~q ;
wire \ram_read_address[8]~8_combout ;
wire \low_addressa[9]~q ;
wire \ram_read_address[9]~9_combout ;
wire \low_addressa[10]~q ;
wire \ram_read_address[10]~10_combout ;
wire \low_addressa[11]~q ;
wire \ram_read_address[11]~11_combout ;
wire \low_addressa[0]~0_combout ;
wire \rd_ptr_lsb~0_combout ;
wire \rd_ptr_lsb~1_combout ;
wire \low_addressa[1]~1_combout ;
wire \low_addressa[2]~2_combout ;
wire \low_addressa[3]~3_combout ;
wire \low_addressa[4]~4_combout ;
wire \low_addressa[5]~5_combout ;
wire \low_addressa[6]~6_combout ;
wire \low_addressa[7]~7_combout ;
wire \low_addressa[8]~8_combout ;
wire \low_addressa[9]~9_combout ;
wire \low_addressa[10]~10_combout ;
wire \low_addressa[11]~11_combout ;
wire \_~0_combout ;
wire \_~1_combout ;
wire \_~2_combout ;
wire \valid_wreq~combout ;
wire \valid_rreq~combout ;
wire \usedw_will_be_1~0_combout ;
wire \usedw_will_be_1~1_combout ;
wire \usedw_will_be_0~0_combout ;
wire \usedw_is_0_dff~q ;
wire \usedw_will_be_1~3_combout ;
wire \usedw_will_be_1~4_combout ;
wire \usedw_is_1_dff~q ;
wire \usedw_will_be_1~2_combout ;
wire \empty_dff~0_combout ;


varint_out_fifo_cntr_bsa wr_ptr(
	.full_dff(full_dff1),
	.counter_reg_bit_0(\wr_ptr|counter_reg_bit[0]~q ),
	.counter_reg_bit_1(\wr_ptr|counter_reg_bit[1]~q ),
	.counter_reg_bit_2(\wr_ptr|counter_reg_bit[2]~q ),
	.counter_reg_bit_3(\wr_ptr|counter_reg_bit[3]~q ),
	.counter_reg_bit_4(\wr_ptr|counter_reg_bit[4]~q ),
	.counter_reg_bit_5(\wr_ptr|counter_reg_bit[5]~q ),
	.counter_reg_bit_6(\wr_ptr|counter_reg_bit[6]~q ),
	.counter_reg_bit_7(\wr_ptr|counter_reg_bit[7]~q ),
	.counter_reg_bit_8(\wr_ptr|counter_reg_bit[8]~q ),
	.counter_reg_bit_9(\wr_ptr|counter_reg_bit[9]~q ),
	.counter_reg_bit_10(\wr_ptr|counter_reg_bit[10]~q ),
	.counter_reg_bit_11(\wr_ptr|counter_reg_bit[11]~q ),
	.wrreq(wrreq),
	.clock(clock),
	.sclr(sclr));

varint_out_fifo_cntr_ns6 usedw_counter(
	.full_dff(full_dff1),
	.counter_reg_bit_5(\usedw_counter|counter_reg_bit[5]~q ),
	.counter_reg_bit_4(\usedw_counter|counter_reg_bit[4]~q ),
	.counter_reg_bit_3(\usedw_counter|counter_reg_bit[3]~q ),
	.counter_reg_bit_2(\usedw_counter|counter_reg_bit[2]~q ),
	.counter_reg_bit_1(\usedw_counter|counter_reg_bit[1]~q ),
	.counter_reg_bit_0(\usedw_counter|counter_reg_bit[0]~q ),
	.counter_reg_bit_11(\usedw_counter|counter_reg_bit[11]~q ),
	.counter_reg_bit_10(\usedw_counter|counter_reg_bit[10]~q ),
	.counter_reg_bit_9(\usedw_counter|counter_reg_bit[9]~q ),
	.counter_reg_bit_8(\usedw_counter|counter_reg_bit[8]~q ),
	.counter_reg_bit_7(\usedw_counter|counter_reg_bit[7]~q ),
	.counter_reg_bit_6(\usedw_counter|counter_reg_bit[6]~q ),
	.empty_dff(empty_dff1),
	.valid_wreq(\valid_wreq~combout ),
	.wrreq(wrreq),
	.clock(clock),
	.rdreq(rdreq),
	.sclr(sclr));

varint_out_fifo_cntr_asa rd_ptr_msb(
	.counter_reg_bit_0(\rd_ptr_msb|counter_reg_bit[0]~q ),
	.counter_reg_bit_1(\rd_ptr_msb|counter_reg_bit[1]~q ),
	.counter_reg_bit_2(\rd_ptr_msb|counter_reg_bit[2]~q ),
	.counter_reg_bit_3(\rd_ptr_msb|counter_reg_bit[3]~q ),
	.counter_reg_bit_4(\rd_ptr_msb|counter_reg_bit[4]~q ),
	.counter_reg_bit_5(\rd_ptr_msb|counter_reg_bit[5]~q ),
	.counter_reg_bit_6(\rd_ptr_msb|counter_reg_bit[6]~q ),
	.counter_reg_bit_7(\rd_ptr_msb|counter_reg_bit[7]~q ),
	.counter_reg_bit_8(\rd_ptr_msb|counter_reg_bit[8]~q ),
	.counter_reg_bit_9(\rd_ptr_msb|counter_reg_bit[9]~q ),
	.counter_reg_bit_10(\rd_ptr_msb|counter_reg_bit[10]~q ),
	.empty_dff(empty_dff1),
	.rd_ptr_lsb(\rd_ptr_lsb~q ),
	.clock(clock),
	.rdreq(rdreq),
	.sclr(sclr));

varint_out_fifo_altsyncram_6gn1 FIFOram(
	.q_b({q[7],q[6],q[5],q[4],q[3],q[2],q[1],q[0]}),
	.address_a({\wr_ptr|counter_reg_bit[11]~q ,\wr_ptr|counter_reg_bit[10]~q ,\wr_ptr|counter_reg_bit[9]~q ,\wr_ptr|counter_reg_bit[8]~q ,\wr_ptr|counter_reg_bit[7]~q ,\wr_ptr|counter_reg_bit[6]~q ,\wr_ptr|counter_reg_bit[5]~q ,\wr_ptr|counter_reg_bit[4]~q ,
\wr_ptr|counter_reg_bit[3]~q ,\wr_ptr|counter_reg_bit[2]~q ,\wr_ptr|counter_reg_bit[1]~q ,\wr_ptr|counter_reg_bit[0]~q }),
	.wren_a(\valid_wreq~combout ),
	.clocken1(\valid_rreq~combout ),
	.address_b({\ram_read_address[11]~11_combout ,\ram_read_address[10]~10_combout ,\ram_read_address[9]~9_combout ,\ram_read_address[8]~8_combout ,\ram_read_address[7]~7_combout ,\ram_read_address[6]~6_combout ,\ram_read_address[5]~5_combout ,\ram_read_address[4]~4_combout ,
\ram_read_address[3]~3_combout ,\ram_read_address[2]~2_combout ,\ram_read_address[1]~1_combout ,\ram_read_address[0]~0_combout }),
	.clock0(clock),
	.clock1(clock),
	.data_a({data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]}));

dffeas \low_addressa[0] (
	.clk(clock),
	.d(\low_addressa[0]~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[0]~q ),
	.prn(vcc));
defparam \low_addressa[0] .is_wysiwyg = "true";
defparam \low_addressa[0] .power_up = "low";

dffeas rd_ptr_lsb(
	.clk(clock),
	.d(\rd_ptr_lsb~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\rd_ptr_lsb~1_combout ),
	.q(\rd_ptr_lsb~q ),
	.prn(vcc));
defparam rd_ptr_lsb.is_wysiwyg = "true";
defparam rd_ptr_lsb.power_up = "low";

twentynm_lcell_comb \ram_read_address[0]~0 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\low_addressa[0]~q ),
	.datad(!\rd_ptr_lsb~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[0]~0 .extended_lut = "off";
defparam \ram_read_address[0]~0 .lut_mask = 64'h1F0E1F0E1F0E1F0E;
defparam \ram_read_address[0]~0 .shared_arith = "off";

dffeas \low_addressa[1] (
	.clk(clock),
	.d(\low_addressa[1]~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[1]~q ),
	.prn(vcc));
defparam \low_addressa[1] .is_wysiwyg = "true";
defparam \low_addressa[1] .power_up = "low";

twentynm_lcell_comb \ram_read_address[1]~1 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[0]~q ),
	.datad(!\low_addressa[1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[1]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[1]~1 .extended_lut = "off";
defparam \ram_read_address[1]~1 .lut_mask = 64'h01EF01EF01EF01EF;
defparam \ram_read_address[1]~1 .shared_arith = "off";

dffeas \low_addressa[2] (
	.clk(clock),
	.d(\low_addressa[2]~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[2]~q ),
	.prn(vcc));
defparam \low_addressa[2] .is_wysiwyg = "true";
defparam \low_addressa[2] .power_up = "low";

twentynm_lcell_comb \ram_read_address[2]~2 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[1]~q ),
	.datad(!\low_addressa[2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[2]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[2]~2 .extended_lut = "off";
defparam \ram_read_address[2]~2 .lut_mask = 64'h01EF01EF01EF01EF;
defparam \ram_read_address[2]~2 .shared_arith = "off";

dffeas \low_addressa[3] (
	.clk(clock),
	.d(\low_addressa[3]~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[3]~q ),
	.prn(vcc));
defparam \low_addressa[3] .is_wysiwyg = "true";
defparam \low_addressa[3] .power_up = "low";

twentynm_lcell_comb \ram_read_address[3]~3 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[2]~q ),
	.datad(!\low_addressa[3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[3]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[3]~3 .extended_lut = "off";
defparam \ram_read_address[3]~3 .lut_mask = 64'h01EF01EF01EF01EF;
defparam \ram_read_address[3]~3 .shared_arith = "off";

dffeas \low_addressa[4] (
	.clk(clock),
	.d(\low_addressa[4]~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[4]~q ),
	.prn(vcc));
defparam \low_addressa[4] .is_wysiwyg = "true";
defparam \low_addressa[4] .power_up = "low";

twentynm_lcell_comb \ram_read_address[4]~4 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[3]~q ),
	.datad(!\low_addressa[4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[4]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[4]~4 .extended_lut = "off";
defparam \ram_read_address[4]~4 .lut_mask = 64'h01EF01EF01EF01EF;
defparam \ram_read_address[4]~4 .shared_arith = "off";

dffeas \low_addressa[5] (
	.clk(clock),
	.d(\low_addressa[5]~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[5]~q ),
	.prn(vcc));
defparam \low_addressa[5] .is_wysiwyg = "true";
defparam \low_addressa[5] .power_up = "low";

twentynm_lcell_comb \ram_read_address[5]~5 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[4]~q ),
	.datad(!\low_addressa[5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[5]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[5]~5 .extended_lut = "off";
defparam \ram_read_address[5]~5 .lut_mask = 64'h01EF01EF01EF01EF;
defparam \ram_read_address[5]~5 .shared_arith = "off";

dffeas \low_addressa[6] (
	.clk(clock),
	.d(\low_addressa[6]~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[6]~q ),
	.prn(vcc));
defparam \low_addressa[6] .is_wysiwyg = "true";
defparam \low_addressa[6] .power_up = "low";

twentynm_lcell_comb \ram_read_address[6]~6 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[5]~q ),
	.datad(!\low_addressa[6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[6]~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[6]~6 .extended_lut = "off";
defparam \ram_read_address[6]~6 .lut_mask = 64'h01EF01EF01EF01EF;
defparam \ram_read_address[6]~6 .shared_arith = "off";

dffeas \low_addressa[7] (
	.clk(clock),
	.d(\low_addressa[7]~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[7]~q ),
	.prn(vcc));
defparam \low_addressa[7] .is_wysiwyg = "true";
defparam \low_addressa[7] .power_up = "low";

twentynm_lcell_comb \ram_read_address[7]~7 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[6]~q ),
	.datad(!\low_addressa[7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[7]~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[7]~7 .extended_lut = "off";
defparam \ram_read_address[7]~7 .lut_mask = 64'h01EF01EF01EF01EF;
defparam \ram_read_address[7]~7 .shared_arith = "off";

dffeas \low_addressa[8] (
	.clk(clock),
	.d(\low_addressa[8]~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[8]~q ),
	.prn(vcc));
defparam \low_addressa[8] .is_wysiwyg = "true";
defparam \low_addressa[8] .power_up = "low";

twentynm_lcell_comb \ram_read_address[8]~8 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[7]~q ),
	.datad(!\low_addressa[8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[8]~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[8]~8 .extended_lut = "off";
defparam \ram_read_address[8]~8 .lut_mask = 64'h01EF01EF01EF01EF;
defparam \ram_read_address[8]~8 .shared_arith = "off";

dffeas \low_addressa[9] (
	.clk(clock),
	.d(\low_addressa[9]~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[9]~q ),
	.prn(vcc));
defparam \low_addressa[9] .is_wysiwyg = "true";
defparam \low_addressa[9] .power_up = "low";

twentynm_lcell_comb \ram_read_address[9]~9 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[8]~q ),
	.datad(!\low_addressa[9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[9]~9_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[9]~9 .extended_lut = "off";
defparam \ram_read_address[9]~9 .lut_mask = 64'h01EF01EF01EF01EF;
defparam \ram_read_address[9]~9 .shared_arith = "off";

dffeas \low_addressa[10] (
	.clk(clock),
	.d(\low_addressa[10]~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[10]~q ),
	.prn(vcc));
defparam \low_addressa[10] .is_wysiwyg = "true";
defparam \low_addressa[10] .power_up = "low";

twentynm_lcell_comb \ram_read_address[10]~10 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[9]~q ),
	.datad(!\low_addressa[10]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[10]~10_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[10]~10 .extended_lut = "off";
defparam \ram_read_address[10]~10 .lut_mask = 64'h01EF01EF01EF01EF;
defparam \ram_read_address[10]~10 .shared_arith = "off";

dffeas \low_addressa[11] (
	.clk(clock),
	.d(\low_addressa[11]~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[11]~q ),
	.prn(vcc));
defparam \low_addressa[11] .is_wysiwyg = "true";
defparam \low_addressa[11] .power_up = "low";

twentynm_lcell_comb \ram_read_address[11]~11 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[10]~q ),
	.datad(!\low_addressa[11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[11]~11_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[11]~11 .extended_lut = "off";
defparam \ram_read_address[11]~11 .lut_mask = 64'h01EF01EF01EF01EF;
defparam \ram_read_address[11]~11 .shared_arith = "off";

twentynm_lcell_comb \low_addressa[0]~0 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\low_addressa[0]~q ),
	.datad(!\rd_ptr_lsb~q ),
	.datae(!sclr),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[0]~0 .extended_lut = "off";
defparam \low_addressa[0]~0 .lut_mask = 64'h1F0E00001F0E0000;
defparam \low_addressa[0]~0 .shared_arith = "off";

twentynm_lcell_comb \rd_ptr_lsb~0 (
	.dataa(!\rd_ptr_lsb~q ),
	.datab(!sclr),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\rd_ptr_lsb~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \rd_ptr_lsb~0 .extended_lut = "off";
defparam \rd_ptr_lsb~0 .lut_mask = 64'h8888888888888888;
defparam \rd_ptr_lsb~0 .shared_arith = "off";

twentynm_lcell_comb \rd_ptr_lsb~1 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!sclr),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\rd_ptr_lsb~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \rd_ptr_lsb~1 .extended_lut = "off";
defparam \rd_ptr_lsb~1 .lut_mask = 64'h1F1F1F1F1F1F1F1F;
defparam \rd_ptr_lsb~1 .shared_arith = "off";

twentynm_lcell_comb \low_addressa[1]~1 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[0]~q ),
	.datad(!\low_addressa[1]~q ),
	.datae(!sclr),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[1]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[1]~1 .extended_lut = "off";
defparam \low_addressa[1]~1 .lut_mask = 64'h01EF000001EF0000;
defparam \low_addressa[1]~1 .shared_arith = "off";

twentynm_lcell_comb \low_addressa[2]~2 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[1]~q ),
	.datad(!\low_addressa[2]~q ),
	.datae(!sclr),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[2]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[2]~2 .extended_lut = "off";
defparam \low_addressa[2]~2 .lut_mask = 64'h01EF000001EF0000;
defparam \low_addressa[2]~2 .shared_arith = "off";

twentynm_lcell_comb \low_addressa[3]~3 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[2]~q ),
	.datad(!\low_addressa[3]~q ),
	.datae(!sclr),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[3]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[3]~3 .extended_lut = "off";
defparam \low_addressa[3]~3 .lut_mask = 64'h01EF000001EF0000;
defparam \low_addressa[3]~3 .shared_arith = "off";

twentynm_lcell_comb \low_addressa[4]~4 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[3]~q ),
	.datad(!\low_addressa[4]~q ),
	.datae(!sclr),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[4]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[4]~4 .extended_lut = "off";
defparam \low_addressa[4]~4 .lut_mask = 64'h01EF000001EF0000;
defparam \low_addressa[4]~4 .shared_arith = "off";

twentynm_lcell_comb \low_addressa[5]~5 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[4]~q ),
	.datad(!\low_addressa[5]~q ),
	.datae(!sclr),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[5]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[5]~5 .extended_lut = "off";
defparam \low_addressa[5]~5 .lut_mask = 64'h01EF000001EF0000;
defparam \low_addressa[5]~5 .shared_arith = "off";

twentynm_lcell_comb \low_addressa[6]~6 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[5]~q ),
	.datad(!\low_addressa[6]~q ),
	.datae(!sclr),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[6]~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[6]~6 .extended_lut = "off";
defparam \low_addressa[6]~6 .lut_mask = 64'h01EF000001EF0000;
defparam \low_addressa[6]~6 .shared_arith = "off";

twentynm_lcell_comb \low_addressa[7]~7 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[6]~q ),
	.datad(!\low_addressa[7]~q ),
	.datae(!sclr),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[7]~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[7]~7 .extended_lut = "off";
defparam \low_addressa[7]~7 .lut_mask = 64'h01EF000001EF0000;
defparam \low_addressa[7]~7 .shared_arith = "off";

twentynm_lcell_comb \low_addressa[8]~8 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[7]~q ),
	.datad(!\low_addressa[8]~q ),
	.datae(!sclr),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[8]~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[8]~8 .extended_lut = "off";
defparam \low_addressa[8]~8 .lut_mask = 64'h01EF000001EF0000;
defparam \low_addressa[8]~8 .shared_arith = "off";

twentynm_lcell_comb \low_addressa[9]~9 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[8]~q ),
	.datad(!\low_addressa[9]~q ),
	.datae(!sclr),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[9]~9_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[9]~9 .extended_lut = "off";
defparam \low_addressa[9]~9 .lut_mask = 64'h01EF000001EF0000;
defparam \low_addressa[9]~9 .shared_arith = "off";

twentynm_lcell_comb \low_addressa[10]~10 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[9]~q ),
	.datad(!\low_addressa[10]~q ),
	.datae(!sclr),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[10]~10_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[10]~10 .extended_lut = "off";
defparam \low_addressa[10]~10 .lut_mask = 64'h01EF000001EF0000;
defparam \low_addressa[10]~10 .shared_arith = "off";

twentynm_lcell_comb \low_addressa[11]~11 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[10]~q ),
	.datad(!\low_addressa[11]~q ),
	.datae(!sclr),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[11]~11_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[11]~11 .extended_lut = "off";
defparam \low_addressa[11]~11 .lut_mask = 64'h01EF000001EF0000;
defparam \low_addressa[11]~11 .shared_arith = "off";

dffeas full_dff(
	.clk(clock),
	.d(\_~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(vcc),
	.q(full_dff1),
	.prn(vcc));
defparam full_dff.is_wysiwyg = "true";
defparam full_dff.power_up = "low";

dffeas empty_dff(
	.clk(clock),
	.d(\empty_dff~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(empty_dff1),
	.prn(vcc));
defparam empty_dff.is_wysiwyg = "true";
defparam empty_dff.power_up = "low";

twentynm_lcell_comb \_~0 (
	.dataa(!\usedw_counter|counter_reg_bit[5]~q ),
	.datab(!\usedw_counter|counter_reg_bit[4]~q ),
	.datac(!\usedw_counter|counter_reg_bit[3]~q ),
	.datad(!\usedw_counter|counter_reg_bit[2]~q ),
	.datae(!\usedw_counter|counter_reg_bit[1]~q ),
	.dataf(!\usedw_counter|counter_reg_bit[0]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~0 .extended_lut = "off";
defparam \_~0 .lut_mask = 64'h0000000000000001;
defparam \_~0 .shared_arith = "off";

twentynm_lcell_comb \_~1 (
	.dataa(!\usedw_counter|counter_reg_bit[11]~q ),
	.datab(!\usedw_counter|counter_reg_bit[10]~q ),
	.datac(!\usedw_counter|counter_reg_bit[9]~q ),
	.datad(!\usedw_counter|counter_reg_bit[8]~q ),
	.datae(!\usedw_counter|counter_reg_bit[7]~q ),
	.dataf(!\usedw_counter|counter_reg_bit[6]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~1 .extended_lut = "off";
defparam \_~1 .lut_mask = 64'h0000000000000001;
defparam \_~1 .shared_arith = "off";

twentynm_lcell_comb \_~2 (
	.dataa(!full_dff1),
	.datab(!empty_dff1),
	.datac(!wrreq),
	.datad(!rdreq),
	.datae(!\_~0_combout ),
	.dataf(!\_~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~2 .extended_lut = "off";
defparam \_~2 .lut_mask = 64'h5544554455445F4C;
defparam \_~2 .shared_arith = "off";

twentynm_lcell_comb valid_wreq(
	.dataa(!full_dff1),
	.datab(!wrreq),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\valid_wreq~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam valid_wreq.extended_lut = "off";
defparam valid_wreq.lut_mask = 64'h2222222222222222;
defparam valid_wreq.shared_arith = "off";

twentynm_lcell_comb valid_rreq(
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\valid_rreq~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam valid_rreq.extended_lut = "off";
defparam valid_rreq.lut_mask = 64'h1111111111111111;
defparam valid_rreq.shared_arith = "off";

twentynm_lcell_comb \usedw_will_be_1~0 (
	.dataa(!\usedw_counter|counter_reg_bit[5]~q ),
	.datab(!\usedw_counter|counter_reg_bit[4]~q ),
	.datac(!\usedw_counter|counter_reg_bit[3]~q ),
	.datad(!\usedw_counter|counter_reg_bit[2]~q ),
	.datae(!\usedw_counter|counter_reg_bit[1]~q ),
	.dataf(!\usedw_counter|counter_reg_bit[0]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~0 .extended_lut = "off";
defparam \usedw_will_be_1~0 .lut_mask = 64'h0000800000000000;
defparam \usedw_will_be_1~0 .shared_arith = "off";

twentynm_lcell_comb \usedw_will_be_1~1 (
	.dataa(!\usedw_counter|counter_reg_bit[11]~q ),
	.datab(!\usedw_counter|counter_reg_bit[10]~q ),
	.datac(!\usedw_counter|counter_reg_bit[9]~q ),
	.datad(!\usedw_counter|counter_reg_bit[8]~q ),
	.datae(!\usedw_counter|counter_reg_bit[7]~q ),
	.dataf(!\usedw_counter|counter_reg_bit[6]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~1 .extended_lut = "off";
defparam \usedw_will_be_1~1 .lut_mask = 64'h8000000000000000;
defparam \usedw_will_be_1~1 .shared_arith = "off";

twentynm_lcell_comb \usedw_will_be_0~0 (
	.dataa(!empty_dff1),
	.datab(!\valid_wreq~combout ),
	.datac(!rdreq),
	.datad(!sclr),
	.datae(!\usedw_is_1_dff~q ),
	.dataf(!\usedw_is_0_dff~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_0~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_0~0 .extended_lut = "off";
defparam \usedw_will_be_0~0 .lut_mask = 64'h36003200FF00FB00;
defparam \usedw_will_be_0~0 .shared_arith = "off";

dffeas usedw_is_0_dff(
	.clk(clock),
	.d(\usedw_will_be_0~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\usedw_is_0_dff~q ),
	.prn(vcc));
defparam usedw_is_0_dff.is_wysiwyg = "true";
defparam usedw_is_0_dff.power_up = "low";

twentynm_lcell_comb \usedw_will_be_1~3 (
	.dataa(!full_dff1),
	.datab(!empty_dff1),
	.datac(!wrreq),
	.datad(!rdreq),
	.datae(!\usedw_is_1_dff~q ),
	.dataf(!\usedw_is_0_dff~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~3 .extended_lut = "off";
defparam \usedw_will_be_1~3 .lut_mask = 64'h0A08FFCE0000F5C6;
defparam \usedw_will_be_1~3 .shared_arith = "off";

twentynm_lcell_comb \usedw_will_be_1~4 (
	.dataa(!\valid_wreq~combout ),
	.datab(!\valid_rreq~combout ),
	.datac(!sclr),
	.datad(!\usedw_will_be_1~0_combout ),
	.datae(!\usedw_will_be_1~1_combout ),
	.dataf(!\usedw_will_be_1~3_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~4 .extended_lut = "off";
defparam \usedw_will_be_1~4 .lut_mask = 64'h00000020F0F0F0F0;
defparam \usedw_will_be_1~4 .shared_arith = "off";

dffeas usedw_is_1_dff(
	.clk(clock),
	.d(\usedw_will_be_1~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\usedw_is_1_dff~q ),
	.prn(vcc));
defparam usedw_is_1_dff.is_wysiwyg = "true";
defparam usedw_is_1_dff.power_up = "low";

twentynm_lcell_comb \usedw_will_be_1~2 (
	.dataa(!full_dff1),
	.datab(!empty_dff1),
	.datac(!wrreq),
	.datad(!rdreq),
	.datae(!\usedw_will_be_1~0_combout ),
	.dataf(!\usedw_will_be_1~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~2 .extended_lut = "off";
defparam \usedw_will_be_1~2 .lut_mask = 64'h0000000000000031;
defparam \usedw_will_be_1~2 .shared_arith = "off";

twentynm_lcell_comb \empty_dff~0 (
	.dataa(!\valid_wreq~combout ),
	.datab(!\valid_rreq~combout ),
	.datac(!sclr),
	.datad(!\usedw_is_1_dff~q ),
	.datae(!\usedw_is_0_dff~q ),
	.dataf(!\usedw_will_be_1~2_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\empty_dff~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \empty_dff~0 .extended_lut = "off";
defparam \empty_dff~0 .lut_mask = 64'h2000F0C02000A080;
defparam \empty_dff~0 .shared_arith = "off";

endmodule

module varint_out_fifo_altsyncram_6gn1 (
	q_b,
	address_a,
	wren_a,
	clocken1,
	address_b,
	clock0,
	clock1,
	data_a)/* synthesis synthesis_greybox=0 */;
output 	[7:0] q_b;
input 	[11:0] address_a;
input 	wren_a;
input 	clocken1;
input 	[11:0] address_b;
input 	clock0;
input 	clock1;
input 	[7:0] data_a;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [143:0] ram_block1a0_PORTBDATAOUT_bus;
wire [143:0] ram_block1a1_PORTBDATAOUT_bus;
wire [143:0] ram_block1a2_PORTBDATAOUT_bus;
wire [143:0] ram_block1a3_PORTBDATAOUT_bus;
wire [143:0] ram_block1a4_PORTBDATAOUT_bus;
wire [143:0] ram_block1a5_PORTBDATAOUT_bus;
wire [143:0] ram_block1a6_PORTBDATAOUT_bus;
wire [143:0] ram_block1a7_PORTBDATAOUT_bus;

assign q_b[0] = ram_block1a0_PORTBDATAOUT_bus[0];

assign q_b[1] = ram_block1a1_PORTBDATAOUT_bus[0];

assign q_b[2] = ram_block1a2_PORTBDATAOUT_bus[0];

assign q_b[3] = ram_block1a3_PORTBDATAOUT_bus[0];

assign q_b[4] = ram_block1a4_PORTBDATAOUT_bus[0];

assign q_b[5] = ram_block1a5_PORTBDATAOUT_bus[0];

assign q_b[6] = ram_block1a6_PORTBDATAOUT_bus[0];

assign q_b[7] = ram_block1a7_PORTBDATAOUT_bus[0];

twentynm_ram_block ram_block1a0(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[0]}),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a0_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a0.clk0_core_clock_enable = "ena0";
defparam ram_block1a0.clk1_output_clock_enable = "ena1";
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.logical_ram_name = "varint_out_fifo_fifo_171_u2h7cyi:fifo_0|scfifo:scfifo_component|scfifo_lna1:auto_generated|a_dpfifo_8fa1:dpfifo|altsyncram_6gn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a0.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a0.operation_mode = "dual_port";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 12;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "none";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 4095;
defparam ram_block1a0.port_a_logical_ram_depth = 4096;
defparam ram_block1a0.port_a_logical_ram_width = 8;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a0.port_b_address_clear = "none";
defparam ram_block1a0.port_b_address_clock = "clock1";
defparam ram_block1a0.port_b_address_width = 12;
defparam ram_block1a0.port_b_data_out_clear = "none";
defparam ram_block1a0.port_b_data_out_clock = "clock1";
defparam ram_block1a0.port_b_data_width = 1;
defparam ram_block1a0.port_b_first_address = 0;
defparam ram_block1a0.port_b_first_bit_number = 0;
defparam ram_block1a0.port_b_last_address = 4095;
defparam ram_block1a0.port_b_logical_ram_depth = 4096;
defparam ram_block1a0.port_b_logical_ram_width = 8;
defparam ram_block1a0.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a0.port_b_read_enable_clock = "clock1";
defparam ram_block1a0.ram_block_type = "auto";

twentynm_ram_block ram_block1a1(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[1]}),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a1_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a1.clk0_core_clock_enable = "ena0";
defparam ram_block1a1.clk1_output_clock_enable = "ena1";
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.logical_ram_name = "varint_out_fifo_fifo_171_u2h7cyi:fifo_0|scfifo:scfifo_component|scfifo_lna1:auto_generated|a_dpfifo_8fa1:dpfifo|altsyncram_6gn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a1.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a1.operation_mode = "dual_port";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 12;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "none";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 4095;
defparam ram_block1a1.port_a_logical_ram_depth = 4096;
defparam ram_block1a1.port_a_logical_ram_width = 8;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a1.port_b_address_clear = "none";
defparam ram_block1a1.port_b_address_clock = "clock1";
defparam ram_block1a1.port_b_address_width = 12;
defparam ram_block1a1.port_b_data_out_clear = "none";
defparam ram_block1a1.port_b_data_out_clock = "clock1";
defparam ram_block1a1.port_b_data_width = 1;
defparam ram_block1a1.port_b_first_address = 0;
defparam ram_block1a1.port_b_first_bit_number = 1;
defparam ram_block1a1.port_b_last_address = 4095;
defparam ram_block1a1.port_b_logical_ram_depth = 4096;
defparam ram_block1a1.port_b_logical_ram_width = 8;
defparam ram_block1a1.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a1.port_b_read_enable_clock = "clock1";
defparam ram_block1a1.ram_block_type = "auto";

twentynm_ram_block ram_block1a2(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[2]}),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a2_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a2.clk0_core_clock_enable = "ena0";
defparam ram_block1a2.clk1_output_clock_enable = "ena1";
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.logical_ram_name = "varint_out_fifo_fifo_171_u2h7cyi:fifo_0|scfifo:scfifo_component|scfifo_lna1:auto_generated|a_dpfifo_8fa1:dpfifo|altsyncram_6gn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a2.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a2.operation_mode = "dual_port";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 12;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "none";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 4095;
defparam ram_block1a2.port_a_logical_ram_depth = 4096;
defparam ram_block1a2.port_a_logical_ram_width = 8;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a2.port_b_address_clear = "none";
defparam ram_block1a2.port_b_address_clock = "clock1";
defparam ram_block1a2.port_b_address_width = 12;
defparam ram_block1a2.port_b_data_out_clear = "none";
defparam ram_block1a2.port_b_data_out_clock = "clock1";
defparam ram_block1a2.port_b_data_width = 1;
defparam ram_block1a2.port_b_first_address = 0;
defparam ram_block1a2.port_b_first_bit_number = 2;
defparam ram_block1a2.port_b_last_address = 4095;
defparam ram_block1a2.port_b_logical_ram_depth = 4096;
defparam ram_block1a2.port_b_logical_ram_width = 8;
defparam ram_block1a2.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a2.port_b_read_enable_clock = "clock1";
defparam ram_block1a2.ram_block_type = "auto";

twentynm_ram_block ram_block1a3(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[3]}),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a3_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a3.clk0_core_clock_enable = "ena0";
defparam ram_block1a3.clk1_output_clock_enable = "ena1";
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.logical_ram_name = "varint_out_fifo_fifo_171_u2h7cyi:fifo_0|scfifo:scfifo_component|scfifo_lna1:auto_generated|a_dpfifo_8fa1:dpfifo|altsyncram_6gn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a3.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a3.operation_mode = "dual_port";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 12;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "none";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 4095;
defparam ram_block1a3.port_a_logical_ram_depth = 4096;
defparam ram_block1a3.port_a_logical_ram_width = 8;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a3.port_b_address_clear = "none";
defparam ram_block1a3.port_b_address_clock = "clock1";
defparam ram_block1a3.port_b_address_width = 12;
defparam ram_block1a3.port_b_data_out_clear = "none";
defparam ram_block1a3.port_b_data_out_clock = "clock1";
defparam ram_block1a3.port_b_data_width = 1;
defparam ram_block1a3.port_b_first_address = 0;
defparam ram_block1a3.port_b_first_bit_number = 3;
defparam ram_block1a3.port_b_last_address = 4095;
defparam ram_block1a3.port_b_logical_ram_depth = 4096;
defparam ram_block1a3.port_b_logical_ram_width = 8;
defparam ram_block1a3.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a3.port_b_read_enable_clock = "clock1";
defparam ram_block1a3.ram_block_type = "auto";

twentynm_ram_block ram_block1a4(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[4]}),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a4_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a4.clk0_core_clock_enable = "ena0";
defparam ram_block1a4.clk1_output_clock_enable = "ena1";
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.logical_ram_name = "varint_out_fifo_fifo_171_u2h7cyi:fifo_0|scfifo:scfifo_component|scfifo_lna1:auto_generated|a_dpfifo_8fa1:dpfifo|altsyncram_6gn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a4.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a4.operation_mode = "dual_port";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 12;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "none";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 4095;
defparam ram_block1a4.port_a_logical_ram_depth = 4096;
defparam ram_block1a4.port_a_logical_ram_width = 8;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a4.port_b_address_clear = "none";
defparam ram_block1a4.port_b_address_clock = "clock1";
defparam ram_block1a4.port_b_address_width = 12;
defparam ram_block1a4.port_b_data_out_clear = "none";
defparam ram_block1a4.port_b_data_out_clock = "clock1";
defparam ram_block1a4.port_b_data_width = 1;
defparam ram_block1a4.port_b_first_address = 0;
defparam ram_block1a4.port_b_first_bit_number = 4;
defparam ram_block1a4.port_b_last_address = 4095;
defparam ram_block1a4.port_b_logical_ram_depth = 4096;
defparam ram_block1a4.port_b_logical_ram_width = 8;
defparam ram_block1a4.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a4.port_b_read_enable_clock = "clock1";
defparam ram_block1a4.ram_block_type = "auto";

twentynm_ram_block ram_block1a5(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[5]}),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a5_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a5.clk0_core_clock_enable = "ena0";
defparam ram_block1a5.clk1_output_clock_enable = "ena1";
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.logical_ram_name = "varint_out_fifo_fifo_171_u2h7cyi:fifo_0|scfifo:scfifo_component|scfifo_lna1:auto_generated|a_dpfifo_8fa1:dpfifo|altsyncram_6gn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a5.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a5.operation_mode = "dual_port";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 12;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "none";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 4095;
defparam ram_block1a5.port_a_logical_ram_depth = 4096;
defparam ram_block1a5.port_a_logical_ram_width = 8;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a5.port_b_address_clear = "none";
defparam ram_block1a5.port_b_address_clock = "clock1";
defparam ram_block1a5.port_b_address_width = 12;
defparam ram_block1a5.port_b_data_out_clear = "none";
defparam ram_block1a5.port_b_data_out_clock = "clock1";
defparam ram_block1a5.port_b_data_width = 1;
defparam ram_block1a5.port_b_first_address = 0;
defparam ram_block1a5.port_b_first_bit_number = 5;
defparam ram_block1a5.port_b_last_address = 4095;
defparam ram_block1a5.port_b_logical_ram_depth = 4096;
defparam ram_block1a5.port_b_logical_ram_width = 8;
defparam ram_block1a5.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a5.port_b_read_enable_clock = "clock1";
defparam ram_block1a5.ram_block_type = "auto";

twentynm_ram_block ram_block1a6(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a6_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a6.clk0_core_clock_enable = "ena0";
defparam ram_block1a6.clk1_output_clock_enable = "ena1";
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.logical_ram_name = "varint_out_fifo_fifo_171_u2h7cyi:fifo_0|scfifo:scfifo_component|scfifo_lna1:auto_generated|a_dpfifo_8fa1:dpfifo|altsyncram_6gn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a6.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a6.operation_mode = "dual_port";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 12;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "none";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 4095;
defparam ram_block1a6.port_a_logical_ram_depth = 4096;
defparam ram_block1a6.port_a_logical_ram_width = 8;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a6.port_b_address_clear = "none";
defparam ram_block1a6.port_b_address_clock = "clock1";
defparam ram_block1a6.port_b_address_width = 12;
defparam ram_block1a6.port_b_data_out_clear = "none";
defparam ram_block1a6.port_b_data_out_clock = "clock1";
defparam ram_block1a6.port_b_data_width = 1;
defparam ram_block1a6.port_b_first_address = 0;
defparam ram_block1a6.port_b_first_bit_number = 6;
defparam ram_block1a6.port_b_last_address = 4095;
defparam ram_block1a6.port_b_logical_ram_depth = 4096;
defparam ram_block1a6.port_b_logical_ram_width = 8;
defparam ram_block1a6.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a6.port_b_read_enable_clock = "clock1";
defparam ram_block1a6.ram_block_type = "auto";

twentynm_ram_block ram_block1a7(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[7]}),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a7_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a7.clk0_core_clock_enable = "ena0";
defparam ram_block1a7.clk1_output_clock_enable = "ena1";
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.logical_ram_name = "varint_out_fifo_fifo_171_u2h7cyi:fifo_0|scfifo:scfifo_component|scfifo_lna1:auto_generated|a_dpfifo_8fa1:dpfifo|altsyncram_6gn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a7.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a7.operation_mode = "dual_port";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 12;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "none";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 4095;
defparam ram_block1a7.port_a_logical_ram_depth = 4096;
defparam ram_block1a7.port_a_logical_ram_width = 8;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a7.port_b_address_clear = "none";
defparam ram_block1a7.port_b_address_clock = "clock1";
defparam ram_block1a7.port_b_address_width = 12;
defparam ram_block1a7.port_b_data_out_clear = "none";
defparam ram_block1a7.port_b_data_out_clock = "clock1";
defparam ram_block1a7.port_b_data_width = 1;
defparam ram_block1a7.port_b_first_address = 0;
defparam ram_block1a7.port_b_first_bit_number = 7;
defparam ram_block1a7.port_b_last_address = 4095;
defparam ram_block1a7.port_b_logical_ram_depth = 4096;
defparam ram_block1a7.port_b_logical_ram_width = 8;
defparam ram_block1a7.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a7.port_b_read_enable_clock = "clock1";
defparam ram_block1a7.ram_block_type = "auto";

endmodule

module varint_out_fifo_cntr_asa (
	counter_reg_bit_0,
	counter_reg_bit_1,
	counter_reg_bit_2,
	counter_reg_bit_3,
	counter_reg_bit_4,
	counter_reg_bit_5,
	counter_reg_bit_6,
	counter_reg_bit_7,
	counter_reg_bit_8,
	counter_reg_bit_9,
	counter_reg_bit_10,
	empty_dff,
	rd_ptr_lsb,
	clock,
	rdreq,
	sclr)/* synthesis synthesis_greybox=0 */;
output 	counter_reg_bit_0;
output 	counter_reg_bit_1;
output 	counter_reg_bit_2;
output 	counter_reg_bit_3;
output 	counter_reg_bit_4;
output 	counter_reg_bit_5;
output 	counter_reg_bit_6;
output 	counter_reg_bit_7;
output 	counter_reg_bit_8;
output 	counter_reg_bit_9;
output 	counter_reg_bit_10;
input 	empty_dff;
input 	rd_ptr_lsb;
input 	clock;
input 	rdreq;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \counter_comb_bita0~sumout ;
wire \_~0_combout ;
wire \counter_comb_bita0~COUT ;
wire \counter_comb_bita1~sumout ;
wire \counter_comb_bita1~COUT ;
wire \counter_comb_bita2~sumout ;
wire \counter_comb_bita2~COUT ;
wire \counter_comb_bita3~sumout ;
wire \counter_comb_bita3~COUT ;
wire \counter_comb_bita4~sumout ;
wire \counter_comb_bita4~COUT ;
wire \counter_comb_bita5~sumout ;
wire \counter_comb_bita5~COUT ;
wire \counter_comb_bita6~sumout ;
wire \counter_comb_bita6~COUT ;
wire \counter_comb_bita7~sumout ;
wire \counter_comb_bita7~COUT ;
wire \counter_comb_bita8~sumout ;
wire \counter_comb_bita8~COUT ;
wire \counter_comb_bita9~sumout ;
wire \counter_comb_bita9~COUT ;
wire \counter_comb_bita10~sumout ;


dffeas \counter_reg_bit[0] (
	.clk(clock),
	.d(\counter_comb_bita0~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_0),
	.prn(vcc));
defparam \counter_reg_bit[0] .is_wysiwyg = "true";
defparam \counter_reg_bit[0] .power_up = "low";

dffeas \counter_reg_bit[1] (
	.clk(clock),
	.d(\counter_comb_bita1~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_1),
	.prn(vcc));
defparam \counter_reg_bit[1] .is_wysiwyg = "true";
defparam \counter_reg_bit[1] .power_up = "low";

dffeas \counter_reg_bit[2] (
	.clk(clock),
	.d(\counter_comb_bita2~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_2),
	.prn(vcc));
defparam \counter_reg_bit[2] .is_wysiwyg = "true";
defparam \counter_reg_bit[2] .power_up = "low";

dffeas \counter_reg_bit[3] (
	.clk(clock),
	.d(\counter_comb_bita3~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_3),
	.prn(vcc));
defparam \counter_reg_bit[3] .is_wysiwyg = "true";
defparam \counter_reg_bit[3] .power_up = "low";

dffeas \counter_reg_bit[4] (
	.clk(clock),
	.d(\counter_comb_bita4~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_4),
	.prn(vcc));
defparam \counter_reg_bit[4] .is_wysiwyg = "true";
defparam \counter_reg_bit[4] .power_up = "low";

dffeas \counter_reg_bit[5] (
	.clk(clock),
	.d(\counter_comb_bita5~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_5),
	.prn(vcc));
defparam \counter_reg_bit[5] .is_wysiwyg = "true";
defparam \counter_reg_bit[5] .power_up = "low";

dffeas \counter_reg_bit[6] (
	.clk(clock),
	.d(\counter_comb_bita6~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_6),
	.prn(vcc));
defparam \counter_reg_bit[6] .is_wysiwyg = "true";
defparam \counter_reg_bit[6] .power_up = "low";

dffeas \counter_reg_bit[7] (
	.clk(clock),
	.d(\counter_comb_bita7~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_7),
	.prn(vcc));
defparam \counter_reg_bit[7] .is_wysiwyg = "true";
defparam \counter_reg_bit[7] .power_up = "low";

dffeas \counter_reg_bit[8] (
	.clk(clock),
	.d(\counter_comb_bita8~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_8),
	.prn(vcc));
defparam \counter_reg_bit[8] .is_wysiwyg = "true";
defparam \counter_reg_bit[8] .power_up = "low";

dffeas \counter_reg_bit[9] (
	.clk(clock),
	.d(\counter_comb_bita9~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_9),
	.prn(vcc));
defparam \counter_reg_bit[9] .is_wysiwyg = "true";
defparam \counter_reg_bit[9] .power_up = "low";

dffeas \counter_reg_bit[10] (
	.clk(clock),
	.d(\counter_comb_bita10~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_10),
	.prn(vcc));
defparam \counter_reg_bit[10] .is_wysiwyg = "true";
defparam \counter_reg_bit[10] .power_up = "low";

twentynm_lcell_comb counter_comb_bita0(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita0~sumout ),
	.cout(\counter_comb_bita0~COUT ),
	.shareout());
defparam counter_comb_bita0.extended_lut = "off";
defparam counter_comb_bita0.lut_mask = 64'h00000000000000FF;
defparam counter_comb_bita0.shared_arith = "off";

twentynm_lcell_comb \_~0 (
	.dataa(!empty_dff),
	.datab(!rdreq),
	.datac(!rd_ptr_lsb),
	.datad(!sclr),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~0 .extended_lut = "off";
defparam \_~0 .lut_mask = 64'h10FF10FF10FF10FF;
defparam \_~0 .shared_arith = "off";

twentynm_lcell_comb counter_comb_bita1(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita0~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita1~sumout ),
	.cout(\counter_comb_bita1~COUT ),
	.shareout());
defparam counter_comb_bita1.extended_lut = "off";
defparam counter_comb_bita1.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita1.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita2(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita1~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita2~sumout ),
	.cout(\counter_comb_bita2~COUT ),
	.shareout());
defparam counter_comb_bita2.extended_lut = "off";
defparam counter_comb_bita2.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita2.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita3(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita2~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita3~sumout ),
	.cout(\counter_comb_bita3~COUT ),
	.shareout());
defparam counter_comb_bita3.extended_lut = "off";
defparam counter_comb_bita3.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita3.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita4(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_4),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita3~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita4~sumout ),
	.cout(\counter_comb_bita4~COUT ),
	.shareout());
defparam counter_comb_bita4.extended_lut = "off";
defparam counter_comb_bita4.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita4.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita5(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_5),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita4~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita5~sumout ),
	.cout(\counter_comb_bita5~COUT ),
	.shareout());
defparam counter_comb_bita5.extended_lut = "off";
defparam counter_comb_bita5.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita5.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita6(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_6),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita5~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita6~sumout ),
	.cout(\counter_comb_bita6~COUT ),
	.shareout());
defparam counter_comb_bita6.extended_lut = "off";
defparam counter_comb_bita6.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita6.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita7(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_7),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita6~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita7~sumout ),
	.cout(\counter_comb_bita7~COUT ),
	.shareout());
defparam counter_comb_bita7.extended_lut = "off";
defparam counter_comb_bita7.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita7.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita8(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_8),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita7~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita8~sumout ),
	.cout(\counter_comb_bita8~COUT ),
	.shareout());
defparam counter_comb_bita8.extended_lut = "off";
defparam counter_comb_bita8.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita8.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita9(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_9),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita8~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita9~sumout ),
	.cout(\counter_comb_bita9~COUT ),
	.shareout());
defparam counter_comb_bita9.extended_lut = "off";
defparam counter_comb_bita9.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita9.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita10(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_10),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita9~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita10~sumout ),
	.cout(),
	.shareout());
defparam counter_comb_bita10.extended_lut = "off";
defparam counter_comb_bita10.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita10.shared_arith = "off";

endmodule

module varint_out_fifo_cntr_bsa (
	full_dff,
	counter_reg_bit_0,
	counter_reg_bit_1,
	counter_reg_bit_2,
	counter_reg_bit_3,
	counter_reg_bit_4,
	counter_reg_bit_5,
	counter_reg_bit_6,
	counter_reg_bit_7,
	counter_reg_bit_8,
	counter_reg_bit_9,
	counter_reg_bit_10,
	counter_reg_bit_11,
	wrreq,
	clock,
	sclr)/* synthesis synthesis_greybox=0 */;
input 	full_dff;
output 	counter_reg_bit_0;
output 	counter_reg_bit_1;
output 	counter_reg_bit_2;
output 	counter_reg_bit_3;
output 	counter_reg_bit_4;
output 	counter_reg_bit_5;
output 	counter_reg_bit_6;
output 	counter_reg_bit_7;
output 	counter_reg_bit_8;
output 	counter_reg_bit_9;
output 	counter_reg_bit_10;
output 	counter_reg_bit_11;
input 	wrreq;
input 	clock;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \counter_comb_bita0~sumout ;
wire \_~0_combout ;
wire \counter_comb_bita0~COUT ;
wire \counter_comb_bita1~sumout ;
wire \counter_comb_bita1~COUT ;
wire \counter_comb_bita2~sumout ;
wire \counter_comb_bita2~COUT ;
wire \counter_comb_bita3~sumout ;
wire \counter_comb_bita3~COUT ;
wire \counter_comb_bita4~sumout ;
wire \counter_comb_bita4~COUT ;
wire \counter_comb_bita5~sumout ;
wire \counter_comb_bita5~COUT ;
wire \counter_comb_bita6~sumout ;
wire \counter_comb_bita6~COUT ;
wire \counter_comb_bita7~sumout ;
wire \counter_comb_bita7~COUT ;
wire \counter_comb_bita8~sumout ;
wire \counter_comb_bita8~COUT ;
wire \counter_comb_bita9~sumout ;
wire \counter_comb_bita9~COUT ;
wire \counter_comb_bita10~sumout ;
wire \counter_comb_bita10~COUT ;
wire \counter_comb_bita11~sumout ;


dffeas \counter_reg_bit[0] (
	.clk(clock),
	.d(\counter_comb_bita0~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_0),
	.prn(vcc));
defparam \counter_reg_bit[0] .is_wysiwyg = "true";
defparam \counter_reg_bit[0] .power_up = "low";

dffeas \counter_reg_bit[1] (
	.clk(clock),
	.d(\counter_comb_bita1~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_1),
	.prn(vcc));
defparam \counter_reg_bit[1] .is_wysiwyg = "true";
defparam \counter_reg_bit[1] .power_up = "low";

dffeas \counter_reg_bit[2] (
	.clk(clock),
	.d(\counter_comb_bita2~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_2),
	.prn(vcc));
defparam \counter_reg_bit[2] .is_wysiwyg = "true";
defparam \counter_reg_bit[2] .power_up = "low";

dffeas \counter_reg_bit[3] (
	.clk(clock),
	.d(\counter_comb_bita3~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_3),
	.prn(vcc));
defparam \counter_reg_bit[3] .is_wysiwyg = "true";
defparam \counter_reg_bit[3] .power_up = "low";

dffeas \counter_reg_bit[4] (
	.clk(clock),
	.d(\counter_comb_bita4~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_4),
	.prn(vcc));
defparam \counter_reg_bit[4] .is_wysiwyg = "true";
defparam \counter_reg_bit[4] .power_up = "low";

dffeas \counter_reg_bit[5] (
	.clk(clock),
	.d(\counter_comb_bita5~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_5),
	.prn(vcc));
defparam \counter_reg_bit[5] .is_wysiwyg = "true";
defparam \counter_reg_bit[5] .power_up = "low";

dffeas \counter_reg_bit[6] (
	.clk(clock),
	.d(\counter_comb_bita6~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_6),
	.prn(vcc));
defparam \counter_reg_bit[6] .is_wysiwyg = "true";
defparam \counter_reg_bit[6] .power_up = "low";

dffeas \counter_reg_bit[7] (
	.clk(clock),
	.d(\counter_comb_bita7~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_7),
	.prn(vcc));
defparam \counter_reg_bit[7] .is_wysiwyg = "true";
defparam \counter_reg_bit[7] .power_up = "low";

dffeas \counter_reg_bit[8] (
	.clk(clock),
	.d(\counter_comb_bita8~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_8),
	.prn(vcc));
defparam \counter_reg_bit[8] .is_wysiwyg = "true";
defparam \counter_reg_bit[8] .power_up = "low";

dffeas \counter_reg_bit[9] (
	.clk(clock),
	.d(\counter_comb_bita9~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_9),
	.prn(vcc));
defparam \counter_reg_bit[9] .is_wysiwyg = "true";
defparam \counter_reg_bit[9] .power_up = "low";

dffeas \counter_reg_bit[10] (
	.clk(clock),
	.d(\counter_comb_bita10~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_10),
	.prn(vcc));
defparam \counter_reg_bit[10] .is_wysiwyg = "true";
defparam \counter_reg_bit[10] .power_up = "low";

dffeas \counter_reg_bit[11] (
	.clk(clock),
	.d(\counter_comb_bita11~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_11),
	.prn(vcc));
defparam \counter_reg_bit[11] .is_wysiwyg = "true";
defparam \counter_reg_bit[11] .power_up = "low";

twentynm_lcell_comb counter_comb_bita0(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita0~sumout ),
	.cout(\counter_comb_bita0~COUT ),
	.shareout());
defparam counter_comb_bita0.extended_lut = "off";
defparam counter_comb_bita0.lut_mask = 64'h00000000000000FF;
defparam counter_comb_bita0.shared_arith = "off";

twentynm_lcell_comb \_~0 (
	.dataa(!full_dff),
	.datab(!wrreq),
	.datac(!sclr),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~0 .extended_lut = "off";
defparam \_~0 .lut_mask = 64'h2F2F2F2F2F2F2F2F;
defparam \_~0 .shared_arith = "off";

twentynm_lcell_comb counter_comb_bita1(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita0~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita1~sumout ),
	.cout(\counter_comb_bita1~COUT ),
	.shareout());
defparam counter_comb_bita1.extended_lut = "off";
defparam counter_comb_bita1.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita1.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita2(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita1~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita2~sumout ),
	.cout(\counter_comb_bita2~COUT ),
	.shareout());
defparam counter_comb_bita2.extended_lut = "off";
defparam counter_comb_bita2.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita2.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita3(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita2~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita3~sumout ),
	.cout(\counter_comb_bita3~COUT ),
	.shareout());
defparam counter_comb_bita3.extended_lut = "off";
defparam counter_comb_bita3.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita3.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita4(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_4),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita3~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita4~sumout ),
	.cout(\counter_comb_bita4~COUT ),
	.shareout());
defparam counter_comb_bita4.extended_lut = "off";
defparam counter_comb_bita4.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita4.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita5(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_5),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita4~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita5~sumout ),
	.cout(\counter_comb_bita5~COUT ),
	.shareout());
defparam counter_comb_bita5.extended_lut = "off";
defparam counter_comb_bita5.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita5.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita6(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_6),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita5~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita6~sumout ),
	.cout(\counter_comb_bita6~COUT ),
	.shareout());
defparam counter_comb_bita6.extended_lut = "off";
defparam counter_comb_bita6.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita6.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita7(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_7),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita6~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita7~sumout ),
	.cout(\counter_comb_bita7~COUT ),
	.shareout());
defparam counter_comb_bita7.extended_lut = "off";
defparam counter_comb_bita7.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita7.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita8(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_8),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita7~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita8~sumout ),
	.cout(\counter_comb_bita8~COUT ),
	.shareout());
defparam counter_comb_bita8.extended_lut = "off";
defparam counter_comb_bita8.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita8.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita9(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_9),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita8~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita9~sumout ),
	.cout(\counter_comb_bita9~COUT ),
	.shareout());
defparam counter_comb_bita9.extended_lut = "off";
defparam counter_comb_bita9.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita9.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita10(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_10),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita9~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita10~sumout ),
	.cout(\counter_comb_bita10~COUT ),
	.shareout());
defparam counter_comb_bita10.extended_lut = "off";
defparam counter_comb_bita10.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita10.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita11(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_11),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita10~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita11~sumout ),
	.cout(),
	.shareout());
defparam counter_comb_bita11.extended_lut = "off";
defparam counter_comb_bita11.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita11.shared_arith = "off";

endmodule

module varint_out_fifo_cntr_ns6 (
	full_dff,
	counter_reg_bit_5,
	counter_reg_bit_4,
	counter_reg_bit_3,
	counter_reg_bit_2,
	counter_reg_bit_1,
	counter_reg_bit_0,
	counter_reg_bit_11,
	counter_reg_bit_10,
	counter_reg_bit_9,
	counter_reg_bit_8,
	counter_reg_bit_7,
	counter_reg_bit_6,
	empty_dff,
	valid_wreq,
	wrreq,
	clock,
	rdreq,
	sclr)/* synthesis synthesis_greybox=0 */;
input 	full_dff;
output 	counter_reg_bit_5;
output 	counter_reg_bit_4;
output 	counter_reg_bit_3;
output 	counter_reg_bit_2;
output 	counter_reg_bit_1;
output 	counter_reg_bit_0;
output 	counter_reg_bit_11;
output 	counter_reg_bit_10;
output 	counter_reg_bit_9;
output 	counter_reg_bit_8;
output 	counter_reg_bit_7;
output 	counter_reg_bit_6;
input 	empty_dff;
input 	valid_wreq;
input 	wrreq;
input 	clock;
input 	rdreq;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \counter_comb_bita0~COUT ;
wire \counter_comb_bita1~COUT ;
wire \counter_comb_bita2~COUT ;
wire \counter_comb_bita3~COUT ;
wire \counter_comb_bita4~COUT ;
wire \counter_comb_bita5~sumout ;
wire \_~0_combout ;
wire \counter_comb_bita4~sumout ;
wire \counter_comb_bita3~sumout ;
wire \counter_comb_bita2~sumout ;
wire \counter_comb_bita1~sumout ;
wire \counter_comb_bita0~sumout ;
wire \counter_comb_bita5~COUT ;
wire \counter_comb_bita6~COUT ;
wire \counter_comb_bita7~COUT ;
wire \counter_comb_bita8~COUT ;
wire \counter_comb_bita9~COUT ;
wire \counter_comb_bita10~COUT ;
wire \counter_comb_bita11~sumout ;
wire \counter_comb_bita10~sumout ;
wire \counter_comb_bita9~sumout ;
wire \counter_comb_bita8~sumout ;
wire \counter_comb_bita7~sumout ;
wire \counter_comb_bita6~sumout ;


dffeas \counter_reg_bit[5] (
	.clk(clock),
	.d(\counter_comb_bita5~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_5),
	.prn(vcc));
defparam \counter_reg_bit[5] .is_wysiwyg = "true";
defparam \counter_reg_bit[5] .power_up = "low";

dffeas \counter_reg_bit[4] (
	.clk(clock),
	.d(\counter_comb_bita4~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_4),
	.prn(vcc));
defparam \counter_reg_bit[4] .is_wysiwyg = "true";
defparam \counter_reg_bit[4] .power_up = "low";

dffeas \counter_reg_bit[3] (
	.clk(clock),
	.d(\counter_comb_bita3~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_3),
	.prn(vcc));
defparam \counter_reg_bit[3] .is_wysiwyg = "true";
defparam \counter_reg_bit[3] .power_up = "low";

dffeas \counter_reg_bit[2] (
	.clk(clock),
	.d(\counter_comb_bita2~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_2),
	.prn(vcc));
defparam \counter_reg_bit[2] .is_wysiwyg = "true";
defparam \counter_reg_bit[2] .power_up = "low";

dffeas \counter_reg_bit[1] (
	.clk(clock),
	.d(\counter_comb_bita1~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_1),
	.prn(vcc));
defparam \counter_reg_bit[1] .is_wysiwyg = "true";
defparam \counter_reg_bit[1] .power_up = "low";

dffeas \counter_reg_bit[0] (
	.clk(clock),
	.d(\counter_comb_bita0~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_0),
	.prn(vcc));
defparam \counter_reg_bit[0] .is_wysiwyg = "true";
defparam \counter_reg_bit[0] .power_up = "low";

dffeas \counter_reg_bit[11] (
	.clk(clock),
	.d(\counter_comb_bita11~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_11),
	.prn(vcc));
defparam \counter_reg_bit[11] .is_wysiwyg = "true";
defparam \counter_reg_bit[11] .power_up = "low";

dffeas \counter_reg_bit[10] (
	.clk(clock),
	.d(\counter_comb_bita10~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_10),
	.prn(vcc));
defparam \counter_reg_bit[10] .is_wysiwyg = "true";
defparam \counter_reg_bit[10] .power_up = "low";

dffeas \counter_reg_bit[9] (
	.clk(clock),
	.d(\counter_comb_bita9~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_9),
	.prn(vcc));
defparam \counter_reg_bit[9] .is_wysiwyg = "true";
defparam \counter_reg_bit[9] .power_up = "low";

dffeas \counter_reg_bit[8] (
	.clk(clock),
	.d(\counter_comb_bita8~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_8),
	.prn(vcc));
defparam \counter_reg_bit[8] .is_wysiwyg = "true";
defparam \counter_reg_bit[8] .power_up = "low";

dffeas \counter_reg_bit[7] (
	.clk(clock),
	.d(\counter_comb_bita7~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_7),
	.prn(vcc));
defparam \counter_reg_bit[7] .is_wysiwyg = "true";
defparam \counter_reg_bit[7] .power_up = "low";

dffeas \counter_reg_bit[6] (
	.clk(clock),
	.d(\counter_comb_bita6~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_6),
	.prn(vcc));
defparam \counter_reg_bit[6] .is_wysiwyg = "true";
defparam \counter_reg_bit[6] .power_up = "low";

twentynm_lcell_comb counter_comb_bita0(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita0~sumout ),
	.cout(\counter_comb_bita0~COUT ),
	.shareout());
defparam counter_comb_bita0.extended_lut = "off";
defparam counter_comb_bita0.lut_mask = 64'h00000000000000FF;
defparam counter_comb_bita0.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita1(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_1),
	.datae(gnd),
	.dataf(!valid_wreq),
	.datag(gnd),
	.cin(\counter_comb_bita0~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita1~sumout ),
	.cout(\counter_comb_bita1~COUT ),
	.shareout());
defparam counter_comb_bita1.extended_lut = "off";
defparam counter_comb_bita1.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita1.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita2(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_2),
	.datae(gnd),
	.dataf(!valid_wreq),
	.datag(gnd),
	.cin(\counter_comb_bita1~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita2~sumout ),
	.cout(\counter_comb_bita2~COUT ),
	.shareout());
defparam counter_comb_bita2.extended_lut = "off";
defparam counter_comb_bita2.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita2.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita3(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_3),
	.datae(gnd),
	.dataf(!valid_wreq),
	.datag(gnd),
	.cin(\counter_comb_bita2~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita3~sumout ),
	.cout(\counter_comb_bita3~COUT ),
	.shareout());
defparam counter_comb_bita3.extended_lut = "off";
defparam counter_comb_bita3.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita3.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita4(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_4),
	.datae(gnd),
	.dataf(!valid_wreq),
	.datag(gnd),
	.cin(\counter_comb_bita3~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita4~sumout ),
	.cout(\counter_comb_bita4~COUT ),
	.shareout());
defparam counter_comb_bita4.extended_lut = "off";
defparam counter_comb_bita4.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita4.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita5(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_5),
	.datae(gnd),
	.dataf(!valid_wreq),
	.datag(gnd),
	.cin(\counter_comb_bita4~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita5~sumout ),
	.cout(\counter_comb_bita5~COUT ),
	.shareout());
defparam counter_comb_bita5.extended_lut = "off";
defparam counter_comb_bita5.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita5.shared_arith = "off";

twentynm_lcell_comb \_~0 (
	.dataa(!full_dff),
	.datab(!empty_dff),
	.datac(!wrreq),
	.datad(!rdreq),
	.datae(!sclr),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~0 .extended_lut = "off";
defparam \_~0 .lut_mask = 64'h0A39FFFF0A39FFFF;
defparam \_~0 .shared_arith = "off";

twentynm_lcell_comb counter_comb_bita6(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_6),
	.datae(gnd),
	.dataf(!valid_wreq),
	.datag(gnd),
	.cin(\counter_comb_bita5~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita6~sumout ),
	.cout(\counter_comb_bita6~COUT ),
	.shareout());
defparam counter_comb_bita6.extended_lut = "off";
defparam counter_comb_bita6.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita6.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita7(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_7),
	.datae(gnd),
	.dataf(!valid_wreq),
	.datag(gnd),
	.cin(\counter_comb_bita6~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita7~sumout ),
	.cout(\counter_comb_bita7~COUT ),
	.shareout());
defparam counter_comb_bita7.extended_lut = "off";
defparam counter_comb_bita7.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita7.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita8(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_8),
	.datae(gnd),
	.dataf(!valid_wreq),
	.datag(gnd),
	.cin(\counter_comb_bita7~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita8~sumout ),
	.cout(\counter_comb_bita8~COUT ),
	.shareout());
defparam counter_comb_bita8.extended_lut = "off";
defparam counter_comb_bita8.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita8.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita9(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_9),
	.datae(gnd),
	.dataf(!valid_wreq),
	.datag(gnd),
	.cin(\counter_comb_bita8~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita9~sumout ),
	.cout(\counter_comb_bita9~COUT ),
	.shareout());
defparam counter_comb_bita9.extended_lut = "off";
defparam counter_comb_bita9.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita9.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita10(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_10),
	.datae(gnd),
	.dataf(!valid_wreq),
	.datag(gnd),
	.cin(\counter_comb_bita9~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita10~sumout ),
	.cout(\counter_comb_bita10~COUT ),
	.shareout());
defparam counter_comb_bita10.extended_lut = "off";
defparam counter_comb_bita10.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita10.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita11(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_11),
	.datae(gnd),
	.dataf(!valid_wreq),
	.datag(gnd),
	.cin(\counter_comb_bita10~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita11~sumout ),
	.cout(),
	.shareout());
defparam counter_comb_bita11.extended_lut = "off";
defparam counter_comb_bita11.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita11.shared_arith = "off";

endmodule
