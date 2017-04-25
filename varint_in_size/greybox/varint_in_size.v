// Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus Prime License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Standard Edition"

// DATE "04/24/2017 18:16:14"

// 
// Device: Altera 10AS066N3F40E2SGE2 Package FBGA1517
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module varint_in_size (
	data,
	wrreq,
	rdreq,
	clock,
	sclr,
	q)/* synthesis synthesis_greybox=0 */;
input 	data;
input 	wrreq;
input 	rdreq;
input 	clock;
input 	sclr;
output 	q;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[0] ;
wire \wrreq~input_o ;
wire \clock~input_o ;
wire \rdreq~input_o ;
wire \data~input_o ;
wire \sclr~input_o ;


varint_in_size_varint_in_size_fifo_160_sjmeklq fifo_0(
	.q_b_0(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[0] ),
	.wrreq(\wrreq~input_o ),
	.clock(\clock~input_o ),
	.rdreq(\rdreq~input_o ),
	.data(\data~input_o ),
	.sclr(\sclr~input_o ));

assign \wrreq~input_o  = wrreq;

assign \clock~input_o  = clock;

assign \rdreq~input_o  = rdreq;

assign \data~input_o  = data;

assign \sclr~input_o  = sclr;

assign q = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[0] ;

endmodule

module varint_in_size_varint_in_size_fifo_160_sjmeklq (
	q_b_0,
	wrreq,
	clock,
	rdreq,
	data,
	sclr)/* synthesis synthesis_greybox=0 */;
output 	q_b_0;
input 	wrreq;
input 	clock;
input 	rdreq;
input 	data;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



varint_in_size_scfifo_1 scfifo_component(
	.q({q_b_0}),
	.wrreq(wrreq),
	.clock(clock),
	.rdreq(rdreq),
	.data({data}),
	.sclr(sclr));

endmodule

module varint_in_size_scfifo_1 (
	q,
	wrreq,
	clock,
	rdreq,
	data,
	sclr)/* synthesis synthesis_greybox=0 */;
output 	[0:0] q;
input 	wrreq;
input 	clock;
input 	rdreq;
input 	[0:0] data;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



varint_in_size_scfifo_ul91 auto_generated(
	.q({q[0]}),
	.wrreq(wrreq),
	.clock(clock),
	.rdreq(rdreq),
	.data({data[0]}),
	.sclr(sclr));

endmodule

module varint_in_size_scfifo_ul91 (
	q,
	wrreq,
	clock,
	rdreq,
	data,
	sclr)/* synthesis synthesis_greybox=0 */;
output 	[0:0] q;
input 	wrreq;
input 	clock;
input 	rdreq;
input 	[0:0] data;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



varint_in_size_a_dpfifo_hd91 dpfifo(
	.q({q[0]}),
	.wrreq(wrreq),
	.clock(clock),
	.rdreq(rdreq),
	.data({data[0]}),
	.sclr(sclr));

endmodule

module varint_in_size_a_dpfifo_hd91 (
	q,
	wrreq,
	clock,
	rdreq,
	data,
	sclr)/* synthesis synthesis_greybox=0 */;
output 	[0:0] q;
input 	wrreq;
input 	clock;
input 	rdreq;
input 	[0:0] data;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \full_dff~q ;
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
wire \rd_ptr_msb|counter_reg_bit[0]~q ;
wire \rd_ptr_msb|counter_reg_bit[1]~q ;
wire \rd_ptr_msb|counter_reg_bit[2]~q ;
wire \rd_ptr_msb|counter_reg_bit[3]~q ;
wire \rd_ptr_msb|counter_reg_bit[4]~q ;
wire \rd_ptr_msb|counter_reg_bit[5]~q ;
wire \rd_ptr_msb|counter_reg_bit[6]~q ;
wire \rd_ptr_msb|counter_reg_bit[7]~q ;
wire \rd_ptr_msb|counter_reg_bit[8]~q ;
wire \usedw_counter|counter_reg_bit[3]~q ;
wire \usedw_counter|counter_reg_bit[2]~q ;
wire \usedw_counter|counter_reg_bit[1]~q ;
wire \usedw_counter|counter_reg_bit[0]~q ;
wire \usedw_counter|counter_reg_bit[9]~q ;
wire \usedw_counter|counter_reg_bit[8]~q ;
wire \usedw_counter|counter_reg_bit[7]~q ;
wire \usedw_counter|counter_reg_bit[6]~q ;
wire \usedw_counter|counter_reg_bit[5]~q ;
wire \usedw_counter|counter_reg_bit[4]~q ;
wire \valid_wreq~combout ;
wire \empty_dff~q ;
wire \valid_rreq~combout ;
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
wire \_~0_combout ;
wire \_~1_combout ;
wire \_~2_combout ;
wire \usedw_will_be_1~0_combout ;
wire \usedw_is_1_dff~q ;
wire \usedw_will_be_1~1_combout ;
wire \usedw_will_be_1~2_combout ;
wire \usedw_will_be_1~3_combout ;
wire \usedw_is_0_dff~q ;
wire \usedw_will_be_1~4_combout ;
wire \usedw_will_be_1~5_combout ;
wire \usedw_will_be_0~0_combout ;
wire \empty_dff~0_combout ;
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


varint_in_size_cntr_9sa wr_ptr(
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
	.usedw_will_be_1(\usedw_will_be_1~0_combout ),
	.clock(clock),
	.sclr(sclr));

varint_in_size_cntr_ls6 usedw_counter(
	.counter_reg_bit_3(\usedw_counter|counter_reg_bit[3]~q ),
	.counter_reg_bit_2(\usedw_counter|counter_reg_bit[2]~q ),
	.counter_reg_bit_1(\usedw_counter|counter_reg_bit[1]~q ),
	.counter_reg_bit_0(\usedw_counter|counter_reg_bit[0]~q ),
	.counter_reg_bit_9(\usedw_counter|counter_reg_bit[9]~q ),
	.counter_reg_bit_8(\usedw_counter|counter_reg_bit[8]~q ),
	.counter_reg_bit_7(\usedw_counter|counter_reg_bit[7]~q ),
	.counter_reg_bit_6(\usedw_counter|counter_reg_bit[6]~q ),
	.counter_reg_bit_5(\usedw_counter|counter_reg_bit[5]~q ),
	.counter_reg_bit_4(\usedw_counter|counter_reg_bit[4]~q ),
	.valid_wreq(\valid_wreq~combout ),
	.usedw_will_be_1(\usedw_will_be_1~1_combout ),
	.clock(clock),
	.sclr(sclr));

varint_in_size_cntr_1ra rd_ptr_msb(
	.counter_reg_bit_0(\rd_ptr_msb|counter_reg_bit[0]~q ),
	.counter_reg_bit_1(\rd_ptr_msb|counter_reg_bit[1]~q ),
	.counter_reg_bit_2(\rd_ptr_msb|counter_reg_bit[2]~q ),
	.counter_reg_bit_3(\rd_ptr_msb|counter_reg_bit[3]~q ),
	.counter_reg_bit_4(\rd_ptr_msb|counter_reg_bit[4]~q ),
	.counter_reg_bit_5(\rd_ptr_msb|counter_reg_bit[5]~q ),
	.counter_reg_bit_6(\rd_ptr_msb|counter_reg_bit[6]~q ),
	.counter_reg_bit_7(\rd_ptr_msb|counter_reg_bit[7]~q ),
	.counter_reg_bit_8(\rd_ptr_msb|counter_reg_bit[8]~q ),
	.empty_dff(\empty_dff~q ),
	.rd_ptr_lsb(\rd_ptr_lsb~q ),
	.clock(clock),
	.rdreq(rdreq),
	.sclr(sclr));

varint_in_size_altsyncram_sen1 FIFOram(
	.q_b({q[0]}),
	.address_a({\wr_ptr|counter_reg_bit[9]~q ,\wr_ptr|counter_reg_bit[8]~q ,\wr_ptr|counter_reg_bit[7]~q ,\wr_ptr|counter_reg_bit[6]~q ,\wr_ptr|counter_reg_bit[5]~q ,\wr_ptr|counter_reg_bit[4]~q ,\wr_ptr|counter_reg_bit[3]~q ,\wr_ptr|counter_reg_bit[2]~q ,
\wr_ptr|counter_reg_bit[1]~q ,\wr_ptr|counter_reg_bit[0]~q }),
	.wren_a(\valid_wreq~combout ),
	.clocken1(\valid_rreq~combout ),
	.address_b({\ram_read_address[9]~9_combout ,\ram_read_address[8]~8_combout ,\ram_read_address[7]~7_combout ,\ram_read_address[6]~6_combout ,\ram_read_address[5]~5_combout ,\ram_read_address[4]~4_combout ,\ram_read_address[3]~3_combout ,\ram_read_address[2]~2_combout ,
\ram_read_address[1]~1_combout ,\ram_read_address[0]~0_combout }),
	.clock0(clock),
	.clock1(clock),
	.data_a({data[0]}));

dffeas full_dff(
	.clk(clock),
	.d(\_~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(vcc),
	.q(\full_dff~q ),
	.prn(vcc));
defparam full_dff.is_wysiwyg = "true";
defparam full_dff.power_up = "low";

twentynm_lcell_comb valid_wreq(
	.dataa(!wrreq),
	.datab(!\full_dff~q ),
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
defparam valid_wreq.lut_mask = 64'h4444444444444444;
defparam valid_wreq.shared_arith = "off";

dffeas empty_dff(
	.clk(clock),
	.d(\empty_dff~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\empty_dff~q ),
	.prn(vcc));
defparam empty_dff.is_wysiwyg = "true";
defparam empty_dff.power_up = "low";

twentynm_lcell_comb valid_rreq(
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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

twentynm_lcell_comb \_~0 (
	.dataa(!\usedw_counter|counter_reg_bit[3]~q ),
	.datab(!\usedw_counter|counter_reg_bit[2]~q ),
	.datac(!\usedw_counter|counter_reg_bit[1]~q ),
	.datad(!\usedw_counter|counter_reg_bit[0]~q ),
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
defparam \_~0 .lut_mask = 64'h0001000100010001;
defparam \_~0 .shared_arith = "off";

twentynm_lcell_comb \_~1 (
	.dataa(!\usedw_counter|counter_reg_bit[9]~q ),
	.datab(!\usedw_counter|counter_reg_bit[8]~q ),
	.datac(!\usedw_counter|counter_reg_bit[7]~q ),
	.datad(!\usedw_counter|counter_reg_bit[6]~q ),
	.datae(!\usedw_counter|counter_reg_bit[5]~q ),
	.dataf(!\usedw_counter|counter_reg_bit[4]~q ),
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
	.dataa(!wrreq),
	.datab(!\full_dff~q ),
	.datac(!rdreq),
	.datad(!\empty_dff~q ),
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
defparam \_~2 .lut_mask = 64'h3330333033307770;
defparam \_~2 .shared_arith = "off";

twentynm_lcell_comb \usedw_will_be_1~0 (
	.dataa(!wrreq),
	.datab(!\full_dff~q ),
	.datac(!sclr),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~0 .extended_lut = "off";
defparam \usedw_will_be_1~0 .lut_mask = 64'h4F4F4F4F4F4F4F4F;
defparam \usedw_will_be_1~0 .shared_arith = "off";

dffeas usedw_is_1_dff(
	.clk(clock),
	.d(\usedw_will_be_1~5_combout ),
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

twentynm_lcell_comb \usedw_will_be_1~1 (
	.dataa(!wrreq),
	.datab(!\full_dff~q ),
	.datac(!rdreq),
	.datad(!\empty_dff~q ),
	.datae(!sclr),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~1 .extended_lut = "off";
defparam \usedw_will_be_1~1 .lut_mask = 64'h444BFFFF444BFFFF;
defparam \usedw_will_be_1~1 .shared_arith = "off";

twentynm_lcell_comb \usedw_will_be_1~2 (
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
	.datac(!\usedw_counter|counter_reg_bit[9]~q ),
	.datad(!\usedw_counter|counter_reg_bit[8]~q ),
	.datae(!\usedw_counter|counter_reg_bit[7]~q ),
	.dataf(!\usedw_counter|counter_reg_bit[6]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~2 .extended_lut = "off";
defparam \usedw_will_be_1~2 .lut_mask = 64'h1000000000000000;
defparam \usedw_will_be_1~2 .shared_arith = "off";

twentynm_lcell_comb \usedw_will_be_1~3 (
	.dataa(!\usedw_counter|counter_reg_bit[5]~q ),
	.datab(!\usedw_counter|counter_reg_bit[4]~q ),
	.datac(!\usedw_counter|counter_reg_bit[3]~q ),
	.datad(!\usedw_counter|counter_reg_bit[2]~q ),
	.datae(!\usedw_counter|counter_reg_bit[1]~q ),
	.dataf(!\usedw_counter|counter_reg_bit[0]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~3 .extended_lut = "off";
defparam \usedw_will_be_1~3 .lut_mask = 64'h0000800000000000;
defparam \usedw_will_be_1~3 .shared_arith = "off";

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

twentynm_lcell_comb \usedw_will_be_1~4 (
	.dataa(!wrreq),
	.datab(!\full_dff~q ),
	.datac(!rdreq),
	.datad(!\empty_dff~q ),
	.datae(!sclr),
	.dataf(!\usedw_is_0_dff~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~4 .extended_lut = "off";
defparam \usedw_will_be_1~4 .lut_mask = 64'h4440000000000000;
defparam \usedw_will_be_1~4 .shared_arith = "off";

twentynm_lcell_comb \usedw_will_be_1~5 (
	.dataa(!\usedw_will_be_1~0_combout ),
	.datab(!\usedw_is_1_dff~q ),
	.datac(!\usedw_will_be_1~1_combout ),
	.datad(!\usedw_will_be_1~2_combout ),
	.datae(!\usedw_will_be_1~3_combout ),
	.dataf(!\usedw_will_be_1~4_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~5 .extended_lut = "off";
defparam \usedw_will_be_1~5 .lut_mask = 64'h303030BAFFFFFFFF;
defparam \usedw_will_be_1~5 .shared_arith = "off";

twentynm_lcell_comb \usedw_will_be_0~0 (
	.dataa(!\valid_wreq~combout ),
	.datab(!rdreq),
	.datac(!\empty_dff~q ),
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
defparam \usedw_will_be_0~0 .lut_mask = 64'h56005400FF00FD00;
defparam \usedw_will_be_0~0 .shared_arith = "off";

twentynm_lcell_comb \empty_dff~0 (
	.dataa(!\valid_wreq~combout ),
	.datab(!\usedw_will_be_1~5_combout ),
	.datac(!\usedw_will_be_0~0_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\empty_dff~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \empty_dff~0 .extended_lut = "off";
defparam \empty_dff~0 .lut_mask = 64'h0E0E0E0E0E0E0E0E;
defparam \empty_dff~0 .shared_arith = "off";

twentynm_lcell_comb \low_addressa[0]~0 (
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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
	.dataa(!rdreq),
	.datab(!\empty_dff~q ),
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

endmodule

module varint_in_size_altsyncram_sen1 (
	q_b,
	address_a,
	wren_a,
	clocken1,
	address_b,
	clock0,
	clock1,
	data_a)/* synthesis synthesis_greybox=0 */;
output 	[0:0] q_b;
input 	[9:0] address_a;
input 	wren_a;
input 	clocken1;
input 	[9:0] address_b;
input 	clock0;
input 	clock1;
input 	[0:0] data_a;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [143:0] ram_block1a0_PORTBDATAOUT_bus;

assign q_b[0] = ram_block1a0_PORTBDATAOUT_bus[0];

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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a0_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a0.clk0_core_clock_enable = "ena0";
defparam ram_block1a0.clk1_output_clock_enable = "ena1";
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.logical_ram_name = "varint_in_size_fifo_160_sjmeklq:fifo_0|scfifo:scfifo_component|scfifo_ul91:auto_generated|a_dpfifo_hd91:dpfifo|altsyncram_sen1:FIFOram|ALTSYNCRAM";
defparam ram_block1a0.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a0.operation_mode = "dual_port";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 10;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "none";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 1023;
defparam ram_block1a0.port_a_logical_ram_depth = 1024;
defparam ram_block1a0.port_a_logical_ram_width = 1;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a0.port_b_address_clear = "none";
defparam ram_block1a0.port_b_address_clock = "clock1";
defparam ram_block1a0.port_b_address_width = 10;
defparam ram_block1a0.port_b_data_out_clear = "none";
defparam ram_block1a0.port_b_data_out_clock = "clock1";
defparam ram_block1a0.port_b_data_width = 1;
defparam ram_block1a0.port_b_first_address = 0;
defparam ram_block1a0.port_b_first_bit_number = 0;
defparam ram_block1a0.port_b_last_address = 1023;
defparam ram_block1a0.port_b_logical_ram_depth = 1024;
defparam ram_block1a0.port_b_logical_ram_width = 1;
defparam ram_block1a0.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a0.port_b_read_enable_clock = "clock1";
defparam ram_block1a0.ram_block_type = "auto";

endmodule

module varint_in_size_cntr_1ra (
	counter_reg_bit_0,
	counter_reg_bit_1,
	counter_reg_bit_2,
	counter_reg_bit_3,
	counter_reg_bit_4,
	counter_reg_bit_5,
	counter_reg_bit_6,
	counter_reg_bit_7,
	counter_reg_bit_8,
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
	.dataa(!rdreq),
	.datab(!empty_dff),
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
	.cout(),
	.shareout());
defparam counter_comb_bita8.extended_lut = "off";
defparam counter_comb_bita8.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita8.shared_arith = "off";

endmodule

module varint_in_size_cntr_9sa (
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
	usedw_will_be_1,
	clock,
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
input 	usedw_will_be_1;
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


dffeas \counter_reg_bit[0] (
	.clk(clock),
	.d(\counter_comb_bita0~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
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
	.ena(usedw_will_be_1),
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
	.ena(usedw_will_be_1),
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
	.ena(usedw_will_be_1),
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
	.ena(usedw_will_be_1),
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
	.ena(usedw_will_be_1),
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
	.ena(usedw_will_be_1),
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
	.ena(usedw_will_be_1),
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
	.ena(usedw_will_be_1),
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
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_9),
	.prn(vcc));
defparam \counter_reg_bit[9] .is_wysiwyg = "true";
defparam \counter_reg_bit[9] .power_up = "low";

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
	.cout(),
	.shareout());
defparam counter_comb_bita9.extended_lut = "off";
defparam counter_comb_bita9.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita9.shared_arith = "off";

endmodule

module varint_in_size_cntr_ls6 (
	counter_reg_bit_3,
	counter_reg_bit_2,
	counter_reg_bit_1,
	counter_reg_bit_0,
	counter_reg_bit_9,
	counter_reg_bit_8,
	counter_reg_bit_7,
	counter_reg_bit_6,
	counter_reg_bit_5,
	counter_reg_bit_4,
	valid_wreq,
	usedw_will_be_1,
	clock,
	sclr)/* synthesis synthesis_greybox=0 */;
output 	counter_reg_bit_3;
output 	counter_reg_bit_2;
output 	counter_reg_bit_1;
output 	counter_reg_bit_0;
output 	counter_reg_bit_9;
output 	counter_reg_bit_8;
output 	counter_reg_bit_7;
output 	counter_reg_bit_6;
output 	counter_reg_bit_5;
output 	counter_reg_bit_4;
input 	valid_wreq;
input 	usedw_will_be_1;
input 	clock;
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
wire \counter_comb_bita3~sumout ;
wire \counter_comb_bita2~sumout ;
wire \counter_comb_bita1~sumout ;
wire \counter_comb_bita0~sumout ;
wire \counter_comb_bita3~COUT ;
wire \counter_comb_bita4~COUT ;
wire \counter_comb_bita5~COUT ;
wire \counter_comb_bita6~COUT ;
wire \counter_comb_bita7~COUT ;
wire \counter_comb_bita8~COUT ;
wire \counter_comb_bita9~sumout ;
wire \counter_comb_bita8~sumout ;
wire \counter_comb_bita7~sumout ;
wire \counter_comb_bita6~sumout ;
wire \counter_comb_bita5~sumout ;
wire \counter_comb_bita4~sumout ;


dffeas \counter_reg_bit[3] (
	.clk(clock),
	.d(\counter_comb_bita3~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
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
	.ena(usedw_will_be_1),
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
	.ena(usedw_will_be_1),
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
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_0),
	.prn(vcc));
defparam \counter_reg_bit[0] .is_wysiwyg = "true";
defparam \counter_reg_bit[0] .power_up = "low";

dffeas \counter_reg_bit[9] (
	.clk(clock),
	.d(\counter_comb_bita9~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
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
	.ena(usedw_will_be_1),
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
	.ena(usedw_will_be_1),
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
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_6),
	.prn(vcc));
defparam \counter_reg_bit[6] .is_wysiwyg = "true";
defparam \counter_reg_bit[6] .power_up = "low";

dffeas \counter_reg_bit[5] (
	.clk(clock),
	.d(\counter_comb_bita5~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
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
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_4),
	.prn(vcc));
defparam \counter_reg_bit[4] .is_wysiwyg = "true";
defparam \counter_reg_bit[4] .power_up = "low";

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
	.cout(),
	.shareout());
defparam counter_comb_bita9.extended_lut = "off";
defparam counter_comb_bita9.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita9.shared_arith = "off";

endmodule
