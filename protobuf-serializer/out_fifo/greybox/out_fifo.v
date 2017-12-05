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

// DATE "12/05/2017 15:11:38"

// 
// Device: Altera 10AS066N3F40E2SG Package FBGA1517
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module out_fifo (
	data,
	wrreq,
	rdreq,
	clock,
	sclr,
	q,
	usedw,
	full,
	empty)/* synthesis synthesis_greybox=0 */;
input 	[7:0] data;
input 	wrreq;
input 	rdreq;
input 	clock;
input 	sclr;
output 	[7:0] q;
output 	[16:0] usedw;
output 	full;
output 	empty;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[0]~q ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[1]~q ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[2]~q ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[3]~q ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[4]~q ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[5]~q ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[6]~q ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[7]~q ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[8]~q ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[9]~q ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[10]~q ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[11]~q ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[12]~q ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[13]~q ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[14]~q ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[15]~q ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[16]~q ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|full_dff~q ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w0_n0_mux_dataout~2_combout ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w1_n0_mux_dataout~2_combout ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w2_n0_mux_dataout~2_combout ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w3_n0_mux_dataout~2_combout ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w4_n0_mux_dataout~2_combout ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w5_n0_mux_dataout~2_combout ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w6_n0_mux_dataout~2_combout ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w7_n0_mux_dataout~2_combout ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|empty_dff~q ;
wire \clock~input_o ;
wire \rdreq~input_o ;
wire \wrreq~input_o ;
wire \data[0]~input_o ;
wire \data[1]~input_o ;
wire \data[2]~input_o ;
wire \data[3]~input_o ;
wire \data[4]~input_o ;
wire \data[5]~input_o ;
wire \data[6]~input_o ;
wire \data[7]~input_o ;
wire \sclr~input_o ;


out_fifo_out_fifo_fifo_171_onw3uty fifo_0(
	.counter_reg_bit_0(\fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[0]~q ),
	.counter_reg_bit_1(\fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[1]~q ),
	.counter_reg_bit_2(\fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[2]~q ),
	.counter_reg_bit_3(\fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[3]~q ),
	.counter_reg_bit_4(\fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[4]~q ),
	.counter_reg_bit_5(\fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[5]~q ),
	.counter_reg_bit_6(\fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[6]~q ),
	.counter_reg_bit_7(\fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[7]~q ),
	.counter_reg_bit_8(\fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[8]~q ),
	.counter_reg_bit_9(\fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[9]~q ),
	.counter_reg_bit_10(\fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[10]~q ),
	.counter_reg_bit_11(\fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[11]~q ),
	.counter_reg_bit_12(\fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[12]~q ),
	.counter_reg_bit_13(\fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[13]~q ),
	.counter_reg_bit_14(\fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[14]~q ),
	.counter_reg_bit_15(\fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[15]~q ),
	.counter_reg_bit_16(\fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[16]~q ),
	.full_dff(\fifo_0|scfifo_component|auto_generated|dpfifo|full_dff~q ),
	.l3_w0_n0_mux_dataout(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w0_n0_mux_dataout~2_combout ),
	.l3_w1_n0_mux_dataout(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w1_n0_mux_dataout~2_combout ),
	.l3_w2_n0_mux_dataout(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w2_n0_mux_dataout~2_combout ),
	.l3_w3_n0_mux_dataout(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w3_n0_mux_dataout~2_combout ),
	.l3_w4_n0_mux_dataout(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w4_n0_mux_dataout~2_combout ),
	.l3_w5_n0_mux_dataout(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w5_n0_mux_dataout~2_combout ),
	.l3_w6_n0_mux_dataout(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w6_n0_mux_dataout~2_combout ),
	.l3_w7_n0_mux_dataout(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w7_n0_mux_dataout~2_combout ),
	.empty_dff(\fifo_0|scfifo_component|auto_generated|dpfifo|empty_dff~q ),
	.clock(\clock~input_o ),
	.rdreq(\rdreq~input_o ),
	.wrreq(\wrreq~input_o ),
	.data_0(\data[0]~input_o ),
	.data_1(\data[1]~input_o ),
	.data_2(\data[2]~input_o ),
	.data_3(\data[3]~input_o ),
	.data_4(\data[4]~input_o ),
	.data_5(\data[5]~input_o ),
	.data_6(\data[6]~input_o ),
	.data_7(\data[7]~input_o ),
	.sclr(\sclr~input_o ));

assign \clock~input_o  = clock;

assign \rdreq~input_o  = rdreq;

assign \wrreq~input_o  = wrreq;

assign \data[0]~input_o  = data[0];

assign \data[1]~input_o  = data[1];

assign \data[2]~input_o  = data[2];

assign \data[3]~input_o  = data[3];

assign \data[4]~input_o  = data[4];

assign \data[5]~input_o  = data[5];

assign \data[6]~input_o  = data[6];

assign \data[7]~input_o  = data[7];

assign \sclr~input_o  = sclr;

assign q[0] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w0_n0_mux_dataout~2_combout ;

assign q[1] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w1_n0_mux_dataout~2_combout ;

assign q[2] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w2_n0_mux_dataout~2_combout ;

assign q[3] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w3_n0_mux_dataout~2_combout ;

assign q[4] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w4_n0_mux_dataout~2_combout ;

assign q[5] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w5_n0_mux_dataout~2_combout ;

assign q[6] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w6_n0_mux_dataout~2_combout ;

assign q[7] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|mux3|l3_w7_n0_mux_dataout~2_combout ;

assign usedw[0] = \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[0]~q ;

assign usedw[1] = \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[1]~q ;

assign usedw[2] = \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[2]~q ;

assign usedw[3] = \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[3]~q ;

assign usedw[4] = \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[4]~q ;

assign usedw[5] = \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[5]~q ;

assign usedw[6] = \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[6]~q ;

assign usedw[7] = \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[7]~q ;

assign usedw[8] = \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[8]~q ;

assign usedw[9] = \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[9]~q ;

assign usedw[10] = \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[10]~q ;

assign usedw[11] = \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[11]~q ;

assign usedw[12] = \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[12]~q ;

assign usedw[13] = \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[13]~q ;

assign usedw[14] = \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[14]~q ;

assign usedw[15] = \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[15]~q ;

assign usedw[16] = \fifo_0|scfifo_component|auto_generated|dpfifo|usedw_counter|counter_reg_bit[16]~q ;

assign full = \fifo_0|scfifo_component|auto_generated|dpfifo|full_dff~q ;

assign empty = ~ \fifo_0|scfifo_component|auto_generated|dpfifo|empty_dff~q ;

endmodule

module out_fifo_out_fifo_fifo_171_onw3uty (
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
	counter_reg_bit_12,
	counter_reg_bit_13,
	counter_reg_bit_14,
	counter_reg_bit_15,
	counter_reg_bit_16,
	full_dff,
	l3_w0_n0_mux_dataout,
	l3_w1_n0_mux_dataout,
	l3_w2_n0_mux_dataout,
	l3_w3_n0_mux_dataout,
	l3_w4_n0_mux_dataout,
	l3_w5_n0_mux_dataout,
	l3_w6_n0_mux_dataout,
	l3_w7_n0_mux_dataout,
	empty_dff,
	clock,
	rdreq,
	wrreq,
	data_0,
	data_1,
	data_2,
	data_3,
	data_4,
	data_5,
	data_6,
	data_7,
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
output 	counter_reg_bit_11;
output 	counter_reg_bit_12;
output 	counter_reg_bit_13;
output 	counter_reg_bit_14;
output 	counter_reg_bit_15;
output 	counter_reg_bit_16;
output 	full_dff;
output 	l3_w0_n0_mux_dataout;
output 	l3_w1_n0_mux_dataout;
output 	l3_w2_n0_mux_dataout;
output 	l3_w3_n0_mux_dataout;
output 	l3_w4_n0_mux_dataout;
output 	l3_w5_n0_mux_dataout;
output 	l3_w6_n0_mux_dataout;
output 	l3_w7_n0_mux_dataout;
output 	empty_dff;
input 	clock;
input 	rdreq;
input 	wrreq;
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



out_fifo_scfifo_1 scfifo_component(
	.counter_reg_bit_0(counter_reg_bit_0),
	.counter_reg_bit_1(counter_reg_bit_1),
	.counter_reg_bit_2(counter_reg_bit_2),
	.counter_reg_bit_3(counter_reg_bit_3),
	.counter_reg_bit_4(counter_reg_bit_4),
	.counter_reg_bit_5(counter_reg_bit_5),
	.counter_reg_bit_6(counter_reg_bit_6),
	.counter_reg_bit_7(counter_reg_bit_7),
	.counter_reg_bit_8(counter_reg_bit_8),
	.counter_reg_bit_9(counter_reg_bit_9),
	.counter_reg_bit_10(counter_reg_bit_10),
	.counter_reg_bit_11(counter_reg_bit_11),
	.counter_reg_bit_12(counter_reg_bit_12),
	.counter_reg_bit_13(counter_reg_bit_13),
	.counter_reg_bit_14(counter_reg_bit_14),
	.counter_reg_bit_15(counter_reg_bit_15),
	.counter_reg_bit_16(counter_reg_bit_16),
	.full_dff(full_dff),
	.l3_w0_n0_mux_dataout(l3_w0_n0_mux_dataout),
	.l3_w1_n0_mux_dataout(l3_w1_n0_mux_dataout),
	.l3_w2_n0_mux_dataout(l3_w2_n0_mux_dataout),
	.l3_w3_n0_mux_dataout(l3_w3_n0_mux_dataout),
	.l3_w4_n0_mux_dataout(l3_w4_n0_mux_dataout),
	.l3_w5_n0_mux_dataout(l3_w5_n0_mux_dataout),
	.l3_w6_n0_mux_dataout(l3_w6_n0_mux_dataout),
	.l3_w7_n0_mux_dataout(l3_w7_n0_mux_dataout),
	.empty_dff(empty_dff),
	.clock(clock),
	.rdreq(rdreq),
	.wrreq(wrreq),
	.data({data_7,data_6,data_5,data_4,data_3,data_2,data_1,data_0}),
	.sclr(sclr));

endmodule

module out_fifo_scfifo_1 (
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
	counter_reg_bit_12,
	counter_reg_bit_13,
	counter_reg_bit_14,
	counter_reg_bit_15,
	counter_reg_bit_16,
	full_dff,
	l3_w0_n0_mux_dataout,
	l3_w1_n0_mux_dataout,
	l3_w2_n0_mux_dataout,
	l3_w3_n0_mux_dataout,
	l3_w4_n0_mux_dataout,
	l3_w5_n0_mux_dataout,
	l3_w6_n0_mux_dataout,
	l3_w7_n0_mux_dataout,
	empty_dff,
	clock,
	rdreq,
	wrreq,
	data,
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
output 	counter_reg_bit_11;
output 	counter_reg_bit_12;
output 	counter_reg_bit_13;
output 	counter_reg_bit_14;
output 	counter_reg_bit_15;
output 	counter_reg_bit_16;
output 	full_dff;
output 	l3_w0_n0_mux_dataout;
output 	l3_w1_n0_mux_dataout;
output 	l3_w2_n0_mux_dataout;
output 	l3_w3_n0_mux_dataout;
output 	l3_w4_n0_mux_dataout;
output 	l3_w5_n0_mux_dataout;
output 	l3_w6_n0_mux_dataout;
output 	l3_w7_n0_mux_dataout;
output 	empty_dff;
input 	clock;
input 	rdreq;
input 	wrreq;
input 	[7:0] data;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



out_fifo_scfifo_tcb1 auto_generated(
	.counter_reg_bit_0(counter_reg_bit_0),
	.counter_reg_bit_1(counter_reg_bit_1),
	.counter_reg_bit_2(counter_reg_bit_2),
	.counter_reg_bit_3(counter_reg_bit_3),
	.counter_reg_bit_4(counter_reg_bit_4),
	.counter_reg_bit_5(counter_reg_bit_5),
	.counter_reg_bit_6(counter_reg_bit_6),
	.counter_reg_bit_7(counter_reg_bit_7),
	.counter_reg_bit_8(counter_reg_bit_8),
	.counter_reg_bit_9(counter_reg_bit_9),
	.counter_reg_bit_10(counter_reg_bit_10),
	.counter_reg_bit_11(counter_reg_bit_11),
	.counter_reg_bit_12(counter_reg_bit_12),
	.counter_reg_bit_13(counter_reg_bit_13),
	.counter_reg_bit_14(counter_reg_bit_14),
	.counter_reg_bit_15(counter_reg_bit_15),
	.counter_reg_bit_16(counter_reg_bit_16),
	.full_dff(full_dff),
	.l3_w0_n0_mux_dataout(l3_w0_n0_mux_dataout),
	.l3_w1_n0_mux_dataout(l3_w1_n0_mux_dataout),
	.l3_w2_n0_mux_dataout(l3_w2_n0_mux_dataout),
	.l3_w3_n0_mux_dataout(l3_w3_n0_mux_dataout),
	.l3_w4_n0_mux_dataout(l3_w4_n0_mux_dataout),
	.l3_w5_n0_mux_dataout(l3_w5_n0_mux_dataout),
	.l3_w6_n0_mux_dataout(l3_w6_n0_mux_dataout),
	.l3_w7_n0_mux_dataout(l3_w7_n0_mux_dataout),
	.empty_dff(empty_dff),
	.clock(clock),
	.rdreq(rdreq),
	.wrreq(wrreq),
	.data({data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]}),
	.sclr(sclr));

endmodule

module out_fifo_scfifo_tcb1 (
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
	counter_reg_bit_12,
	counter_reg_bit_13,
	counter_reg_bit_14,
	counter_reg_bit_15,
	counter_reg_bit_16,
	full_dff,
	l3_w0_n0_mux_dataout,
	l3_w1_n0_mux_dataout,
	l3_w2_n0_mux_dataout,
	l3_w3_n0_mux_dataout,
	l3_w4_n0_mux_dataout,
	l3_w5_n0_mux_dataout,
	l3_w6_n0_mux_dataout,
	l3_w7_n0_mux_dataout,
	empty_dff,
	clock,
	rdreq,
	wrreq,
	data,
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
output 	counter_reg_bit_11;
output 	counter_reg_bit_12;
output 	counter_reg_bit_13;
output 	counter_reg_bit_14;
output 	counter_reg_bit_15;
output 	counter_reg_bit_16;
output 	full_dff;
output 	l3_w0_n0_mux_dataout;
output 	l3_w1_n0_mux_dataout;
output 	l3_w2_n0_mux_dataout;
output 	l3_w3_n0_mux_dataout;
output 	l3_w4_n0_mux_dataout;
output 	l3_w5_n0_mux_dataout;
output 	l3_w6_n0_mux_dataout;
output 	l3_w7_n0_mux_dataout;
output 	empty_dff;
input 	clock;
input 	rdreq;
input 	wrreq;
input 	[7:0] data;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



out_fifo_a_dpfifo_g4b1 dpfifo(
	.counter_reg_bit_0(counter_reg_bit_0),
	.counter_reg_bit_1(counter_reg_bit_1),
	.counter_reg_bit_2(counter_reg_bit_2),
	.counter_reg_bit_3(counter_reg_bit_3),
	.counter_reg_bit_4(counter_reg_bit_4),
	.counter_reg_bit_5(counter_reg_bit_5),
	.counter_reg_bit_6(counter_reg_bit_6),
	.counter_reg_bit_7(counter_reg_bit_7),
	.counter_reg_bit_8(counter_reg_bit_8),
	.counter_reg_bit_9(counter_reg_bit_9),
	.counter_reg_bit_10(counter_reg_bit_10),
	.counter_reg_bit_11(counter_reg_bit_11),
	.counter_reg_bit_12(counter_reg_bit_12),
	.counter_reg_bit_13(counter_reg_bit_13),
	.counter_reg_bit_14(counter_reg_bit_14),
	.counter_reg_bit_15(counter_reg_bit_15),
	.counter_reg_bit_16(counter_reg_bit_16),
	.full_dff1(full_dff),
	.l3_w0_n0_mux_dataout(l3_w0_n0_mux_dataout),
	.l3_w1_n0_mux_dataout(l3_w1_n0_mux_dataout),
	.l3_w2_n0_mux_dataout(l3_w2_n0_mux_dataout),
	.l3_w3_n0_mux_dataout(l3_w3_n0_mux_dataout),
	.l3_w4_n0_mux_dataout(l3_w4_n0_mux_dataout),
	.l3_w5_n0_mux_dataout(l3_w5_n0_mux_dataout),
	.l3_w6_n0_mux_dataout(l3_w6_n0_mux_dataout),
	.l3_w7_n0_mux_dataout(l3_w7_n0_mux_dataout),
	.empty_dff1(empty_dff),
	.clock(clock),
	.rdreq(rdreq),
	.wrreq(wrreq),
	.data({data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]}),
	.sclr(sclr));

endmodule

module out_fifo_a_dpfifo_g4b1 (
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
	counter_reg_bit_12,
	counter_reg_bit_13,
	counter_reg_bit_14,
	counter_reg_bit_15,
	counter_reg_bit_16,
	full_dff1,
	l3_w0_n0_mux_dataout,
	l3_w1_n0_mux_dataout,
	l3_w2_n0_mux_dataout,
	l3_w3_n0_mux_dataout,
	l3_w4_n0_mux_dataout,
	l3_w5_n0_mux_dataout,
	l3_w6_n0_mux_dataout,
	l3_w7_n0_mux_dataout,
	empty_dff1,
	clock,
	rdreq,
	wrreq,
	data,
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
output 	counter_reg_bit_11;
output 	counter_reg_bit_12;
output 	counter_reg_bit_13;
output 	counter_reg_bit_14;
output 	counter_reg_bit_15;
output 	counter_reg_bit_16;
output 	full_dff1;
output 	l3_w0_n0_mux_dataout;
output 	l3_w1_n0_mux_dataout;
output 	l3_w2_n0_mux_dataout;
output 	l3_w3_n0_mux_dataout;
output 	l3_w4_n0_mux_dataout;
output 	l3_w5_n0_mux_dataout;
output 	l3_w6_n0_mux_dataout;
output 	l3_w7_n0_mux_dataout;
output 	empty_dff1;
input 	clock;
input 	rdreq;
input 	wrreq;
input 	[7:0] data;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \wr_ptr|counter_reg_bit[14]~q ;
wire \wr_ptr|counter_reg_bit[15]~q ;
wire \wr_ptr|counter_reg_bit[16]~q ;
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
wire \wr_ptr|counter_reg_bit[12]~q ;
wire \wr_ptr|counter_reg_bit[13]~q ;
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
wire \rd_ptr_msb|counter_reg_bit[11]~q ;
wire \rd_ptr_msb|counter_reg_bit[12]~q ;
wire \rd_ptr_msb|counter_reg_bit[15]~q ;
wire \rd_ptr_msb|counter_reg_bit[13]~q ;
wire \rd_ptr_msb|counter_reg_bit[14]~q ;
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
wire \low_addressa[12]~q ;
wire \ram_read_address[12]~12_combout ;
wire \low_addressa[13]~q ;
wire \ram_read_address[13]~13_combout ;
wire \usedw_will_be_1~0_combout ;
wire \low_addressa[16]~q ;
wire \ram_read_address[16]~14_combout ;
wire \usedw_will_be_1~8_combout ;
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
wire \low_addressa[12]~12_combout ;
wire \low_addressa[13]~13_combout ;
wire \low_addressa[14]~q ;
wire \ram_read_address[14]~15_combout ;
wire \low_addressa[15]~q ;
wire \ram_read_address[15]~16_combout ;
wire \low_addressa[16]~14_combout ;
wire \low_addressa[14]~15_combout ;
wire \low_addressa[15]~16_combout ;
wire \valid_rreq~combout ;
wire \_~0_combout ;
wire \_~1_combout ;
wire \_~2_combout ;
wire \_~3_combout ;
wire \valid_wreq~combout ;
wire \usedw_is_1_dff~q ;
wire \usedw_will_be_1~1_combout ;
wire \usedw_will_be_1~2_combout ;
wire \usedw_will_be_1~3_combout ;
wire \usedw_will_be_1~4_combout ;
wire \usedw_will_be_1~5_combout ;
wire \usedw_will_be_0~0_combout ;
wire \usedw_is_0_dff~q ;
wire \usedw_will_be_1~6_combout ;
wire \usedw_will_be_1~7_combout ;
wire \empty_dff~0_combout ;


out_fifo_cntr_gsa wr_ptr(
	.counter_reg_bit_14(\wr_ptr|counter_reg_bit[14]~q ),
	.counter_reg_bit_15(\wr_ptr|counter_reg_bit[15]~q ),
	.counter_reg_bit_16(\wr_ptr|counter_reg_bit[16]~q ),
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
	.counter_reg_bit_12(\wr_ptr|counter_reg_bit[12]~q ),
	.counter_reg_bit_13(\wr_ptr|counter_reg_bit[13]~q ),
	.usedw_will_be_1(\usedw_will_be_1~8_combout ),
	.clock(clock),
	.sclr(sclr));

out_fifo_cntr_ss6 usedw_counter(
	.counter_reg_bit_0(counter_reg_bit_0),
	.counter_reg_bit_1(counter_reg_bit_1),
	.counter_reg_bit_2(counter_reg_bit_2),
	.counter_reg_bit_3(counter_reg_bit_3),
	.counter_reg_bit_4(counter_reg_bit_4),
	.counter_reg_bit_5(counter_reg_bit_5),
	.counter_reg_bit_6(counter_reg_bit_6),
	.counter_reg_bit_7(counter_reg_bit_7),
	.counter_reg_bit_8(counter_reg_bit_8),
	.counter_reg_bit_9(counter_reg_bit_9),
	.counter_reg_bit_10(counter_reg_bit_10),
	.counter_reg_bit_11(counter_reg_bit_11),
	.counter_reg_bit_12(counter_reg_bit_12),
	.counter_reg_bit_13(counter_reg_bit_13),
	.counter_reg_bit_14(counter_reg_bit_14),
	.counter_reg_bit_15(counter_reg_bit_15),
	.counter_reg_bit_16(counter_reg_bit_16),
	.usedw_will_be_1(\usedw_will_be_1~0_combout ),
	.valid_wreq(\valid_wreq~combout ),
	.clock(clock),
	.sclr(sclr));

out_fifo_cntr_fsa rd_ptr_msb(
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
	.counter_reg_bit_11(\rd_ptr_msb|counter_reg_bit[11]~q ),
	.counter_reg_bit_12(\rd_ptr_msb|counter_reg_bit[12]~q ),
	.counter_reg_bit_15(\rd_ptr_msb|counter_reg_bit[15]~q ),
	.counter_reg_bit_13(\rd_ptr_msb|counter_reg_bit[13]~q ),
	.counter_reg_bit_14(\rd_ptr_msb|counter_reg_bit[14]~q ),
	.empty_dff(empty_dff1),
	.rd_ptr_lsb(\rd_ptr_lsb~q ),
	.clock(clock),
	.rdreq(rdreq),
	.sclr(sclr));

out_fifo_altsyncram_6mn1 FIFOram(
	.full_dff(full_dff1),
	.counter_reg_bit_14(\wr_ptr|counter_reg_bit[14]~q ),
	.counter_reg_bit_15(\wr_ptr|counter_reg_bit[15]~q ),
	.counter_reg_bit_16(\wr_ptr|counter_reg_bit[16]~q ),
	.address_a({gnd,gnd,gnd,\wr_ptr|counter_reg_bit[13]~q ,\wr_ptr|counter_reg_bit[12]~q ,\wr_ptr|counter_reg_bit[11]~q ,\wr_ptr|counter_reg_bit[10]~q ,\wr_ptr|counter_reg_bit[9]~q ,\wr_ptr|counter_reg_bit[8]~q ,\wr_ptr|counter_reg_bit[7]~q ,\wr_ptr|counter_reg_bit[6]~q ,
\wr_ptr|counter_reg_bit[5]~q ,\wr_ptr|counter_reg_bit[4]~q ,\wr_ptr|counter_reg_bit[3]~q ,\wr_ptr|counter_reg_bit[2]~q ,\wr_ptr|counter_reg_bit[1]~q ,\wr_ptr|counter_reg_bit[0]~q }),
	.l3_w0_n0_mux_dataout(l3_w0_n0_mux_dataout),
	.l3_w1_n0_mux_dataout(l3_w1_n0_mux_dataout),
	.l3_w2_n0_mux_dataout(l3_w2_n0_mux_dataout),
	.l3_w3_n0_mux_dataout(l3_w3_n0_mux_dataout),
	.l3_w4_n0_mux_dataout(l3_w4_n0_mux_dataout),
	.l3_w5_n0_mux_dataout(l3_w5_n0_mux_dataout),
	.l3_w6_n0_mux_dataout(l3_w6_n0_mux_dataout),
	.l3_w7_n0_mux_dataout(l3_w7_n0_mux_dataout),
	.clocken1(\valid_rreq~combout ),
	.address_b({\ram_read_address[16]~14_combout ,\ram_read_address[15]~16_combout ,\ram_read_address[14]~15_combout ,\ram_read_address[13]~13_combout ,\ram_read_address[12]~12_combout ,\ram_read_address[11]~11_combout ,\ram_read_address[10]~10_combout ,
\ram_read_address[9]~9_combout ,\ram_read_address[8]~8_combout ,\ram_read_address[7]~7_combout ,\ram_read_address[6]~6_combout ,\ram_read_address[5]~5_combout ,\ram_read_address[4]~4_combout ,\ram_read_address[3]~3_combout ,\ram_read_address[2]~2_combout ,
\ram_read_address[1]~1_combout ,\ram_read_address[0]~0_combout }),
	.clock0(clock),
	.clock1(clock),
	.wrreq(wrreq),
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

dffeas \low_addressa[12] (
	.clk(clock),
	.d(\low_addressa[12]~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[12]~q ),
	.prn(vcc));
defparam \low_addressa[12] .is_wysiwyg = "true";
defparam \low_addressa[12] .power_up = "low";

twentynm_lcell_comb \ram_read_address[12]~12 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[11]~q ),
	.datad(!\low_addressa[12]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[12]~12_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[12]~12 .extended_lut = "off";
defparam \ram_read_address[12]~12 .lut_mask = 64'h01EF01EF01EF01EF;
defparam \ram_read_address[12]~12 .shared_arith = "off";

dffeas \low_addressa[13] (
	.clk(clock),
	.d(\low_addressa[13]~13_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[13]~q ),
	.prn(vcc));
defparam \low_addressa[13] .is_wysiwyg = "true";
defparam \low_addressa[13] .power_up = "low";

twentynm_lcell_comb \ram_read_address[13]~13 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[12]~q ),
	.datad(!\low_addressa[13]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[13]~13_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[13]~13 .extended_lut = "off";
defparam \ram_read_address[13]~13 .lut_mask = 64'h01EF01EF01EF01EF;
defparam \ram_read_address[13]~13 .shared_arith = "off";

twentynm_lcell_comb \usedw_will_be_1~0 (
	.dataa(!full_dff1),
	.datab(!empty_dff1),
	.datac(!rdreq),
	.datad(!wrreq),
	.datae(!sclr),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~0 .extended_lut = "off";
defparam \usedw_will_be_1~0 .lut_mask = 64'h03A9FFFF03A9FFFF;
defparam \usedw_will_be_1~0 .shared_arith = "off";

dffeas \low_addressa[16] (
	.clk(clock),
	.d(\low_addressa[16]~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[16]~q ),
	.prn(vcc));
defparam \low_addressa[16] .is_wysiwyg = "true";
defparam \low_addressa[16] .power_up = "low";

twentynm_lcell_comb \ram_read_address[16]~14 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[15]~q ),
	.datad(!\low_addressa[16]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[16]~14_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[16]~14 .extended_lut = "off";
defparam \ram_read_address[16]~14 .lut_mask = 64'h01EF01EF01EF01EF;
defparam \ram_read_address[16]~14 .shared_arith = "off";

twentynm_lcell_comb \usedw_will_be_1~8 (
	.dataa(!full_dff1),
	.datab(!wrreq),
	.datac(!sclr),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~8 .extended_lut = "off";
defparam \usedw_will_be_1~8 .lut_mask = 64'h2F2F2F2F2F2F2F2F;
defparam \usedw_will_be_1~8 .shared_arith = "off";

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

twentynm_lcell_comb \low_addressa[12]~12 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[11]~q ),
	.datad(!\low_addressa[12]~q ),
	.datae(!sclr),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[12]~12_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[12]~12 .extended_lut = "off";
defparam \low_addressa[12]~12 .lut_mask = 64'h01EF000001EF0000;
defparam \low_addressa[12]~12 .shared_arith = "off";

twentynm_lcell_comb \low_addressa[13]~13 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[12]~q ),
	.datad(!\low_addressa[13]~q ),
	.datae(!sclr),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[13]~13_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[13]~13 .extended_lut = "off";
defparam \low_addressa[13]~13 .lut_mask = 64'h01EF000001EF0000;
defparam \low_addressa[13]~13 .shared_arith = "off";

dffeas \low_addressa[14] (
	.clk(clock),
	.d(\low_addressa[14]~15_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[14]~q ),
	.prn(vcc));
defparam \low_addressa[14] .is_wysiwyg = "true";
defparam \low_addressa[14] .power_up = "low";

twentynm_lcell_comb \ram_read_address[14]~15 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[13]~q ),
	.datad(!\low_addressa[14]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[14]~15_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[14]~15 .extended_lut = "off";
defparam \ram_read_address[14]~15 .lut_mask = 64'h01EF01EF01EF01EF;
defparam \ram_read_address[14]~15 .shared_arith = "off";

dffeas \low_addressa[15] (
	.clk(clock),
	.d(\low_addressa[15]~16_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[15]~q ),
	.prn(vcc));
defparam \low_addressa[15] .is_wysiwyg = "true";
defparam \low_addressa[15] .power_up = "low";

twentynm_lcell_comb \ram_read_address[15]~16 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!\rd_ptr_msb|counter_reg_bit[14]~q ),
	.datad(!\low_addressa[15]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[15]~16_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[15]~16 .extended_lut = "off";
defparam \ram_read_address[15]~16 .lut_mask = 64'h01EF01EF01EF01EF;
defparam \ram_read_address[15]~16 .shared_arith = "off";

twentynm_lcell_comb \low_addressa[16]~14 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!sclr),
	.datad(!\rd_ptr_msb|counter_reg_bit[15]~q ),
	.datae(!\low_addressa[16]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[16]~14_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[16]~14 .extended_lut = "off";
defparam \low_addressa[16]~14 .lut_mask = 64'h0010E0F00010E0F0;
defparam \low_addressa[16]~14 .shared_arith = "off";

twentynm_lcell_comb \low_addressa[14]~15 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!sclr),
	.datad(!\rd_ptr_msb|counter_reg_bit[13]~q ),
	.datae(!\low_addressa[14]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[14]~15_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[14]~15 .extended_lut = "off";
defparam \low_addressa[14]~15 .lut_mask = 64'h0010E0F00010E0F0;
defparam \low_addressa[14]~15 .shared_arith = "off";

twentynm_lcell_comb \low_addressa[15]~16 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
	.datac(!sclr),
	.datad(!\rd_ptr_msb|counter_reg_bit[14]~q ),
	.datae(!\low_addressa[15]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[15]~16_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[15]~16 .extended_lut = "off";
defparam \low_addressa[15]~16 .lut_mask = 64'h0010E0F00010E0F0;
defparam \low_addressa[15]~16 .shared_arith = "off";

dffeas full_dff(
	.clk(clock),
	.d(\_~3_combout ),
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

twentynm_lcell_comb \_~0 (
	.dataa(!counter_reg_bit_0),
	.datab(!counter_reg_bit_1),
	.datac(!counter_reg_bit_2),
	.datad(!counter_reg_bit_3),
	.datae(!counter_reg_bit_4),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~0 .extended_lut = "off";
defparam \_~0 .lut_mask = 64'h0000000100000001;
defparam \_~0 .shared_arith = "off";

twentynm_lcell_comb \_~1 (
	.dataa(!counter_reg_bit_5),
	.datab(!counter_reg_bit_6),
	.datac(!counter_reg_bit_7),
	.datad(!counter_reg_bit_8),
	.datae(!counter_reg_bit_9),
	.dataf(!counter_reg_bit_10),
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
	.dataa(!counter_reg_bit_11),
	.datab(!counter_reg_bit_12),
	.datac(!counter_reg_bit_13),
	.datad(!counter_reg_bit_14),
	.datae(!counter_reg_bit_15),
	.dataf(!counter_reg_bit_16),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~2 .extended_lut = "off";
defparam \_~2 .lut_mask = 64'h0000000000000001;
defparam \_~2 .shared_arith = "off";

twentynm_lcell_comb \_~3 (
	.dataa(!full_dff1),
	.datab(!\valid_rreq~combout ),
	.datac(!wrreq),
	.datad(!\_~0_combout ),
	.datae(!\_~1_combout ),
	.dataf(!\_~2_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~3 .extended_lut = "off";
defparam \_~3 .lut_mask = 64'h444444444444444C;
defparam \_~3 .shared_arith = "off";

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

dffeas usedw_is_1_dff(
	.clk(clock),
	.d(\usedw_will_be_1~7_combout ),
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
	.dataa(!full_dff1),
	.datab(!empty_dff1),
	.datac(!rdreq),
	.datad(!wrreq),
	.datae(!sclr),
	.dataf(!\usedw_is_1_dff~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~1 .extended_lut = "off";
defparam \usedw_will_be_1~1 .lut_mask = 64'h00000000FC560000;
defparam \usedw_will_be_1~1 .shared_arith = "off";

twentynm_lcell_comb \usedw_will_be_1~2 (
	.dataa(!counter_reg_bit_0),
	.datab(!full_dff1),
	.datac(!wrreq),
	.datad(!sclr),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~2 .extended_lut = "off";
defparam \usedw_will_be_1~2 .lut_mask = 64'hA200A200A200A200;
defparam \usedw_will_be_1~2 .shared_arith = "off";

twentynm_lcell_comb \usedw_will_be_1~3 (
	.dataa(!counter_reg_bit_1),
	.datab(!counter_reg_bit_2),
	.datac(!counter_reg_bit_3),
	.datad(!counter_reg_bit_4),
	.datae(!counter_reg_bit_5),
	.dataf(!counter_reg_bit_6),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~3 .extended_lut = "off";
defparam \usedw_will_be_1~3 .lut_mask = 64'h4000000000000000;
defparam \usedw_will_be_1~3 .shared_arith = "off";

twentynm_lcell_comb \usedw_will_be_1~4 (
	.dataa(!counter_reg_bit_13),
	.datab(!counter_reg_bit_14),
	.datac(!counter_reg_bit_15),
	.datad(!counter_reg_bit_16),
	.datae(!empty_dff1),
	.dataf(!rdreq),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~4 .extended_lut = "off";
defparam \usedw_will_be_1~4 .lut_mask = 64'h0000000000008000;
defparam \usedw_will_be_1~4 .shared_arith = "off";

twentynm_lcell_comb \usedw_will_be_1~5 (
	.dataa(!counter_reg_bit_7),
	.datab(!counter_reg_bit_8),
	.datac(!counter_reg_bit_9),
	.datad(!counter_reg_bit_10),
	.datae(!counter_reg_bit_11),
	.dataf(!counter_reg_bit_12),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~5 .extended_lut = "off";
defparam \usedw_will_be_1~5 .lut_mask = 64'h8000000000000000;
defparam \usedw_will_be_1~5 .shared_arith = "off";

twentynm_lcell_comb \usedw_will_be_0~0 (
	.dataa(!full_dff1),
	.datab(!\valid_rreq~combout ),
	.datac(!wrreq),
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
defparam \usedw_will_be_0~0 .lut_mask = 64'h39000800FF00CE00;
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

twentynm_lcell_comb \usedw_will_be_1~6 (
	.dataa(!full_dff1),
	.datab(!empty_dff1),
	.datac(!rdreq),
	.datad(!wrreq),
	.datae(!sclr),
	.dataf(!\usedw_is_0_dff~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~6 .extended_lut = "off";
defparam \usedw_will_be_1~6 .lut_mask = 64'h00A8000000000000;
defparam \usedw_will_be_1~6 .shared_arith = "off";

twentynm_lcell_comb \usedw_will_be_1~7 (
	.dataa(!\usedw_will_be_1~1_combout ),
	.datab(!\usedw_will_be_1~2_combout ),
	.datac(!\usedw_will_be_1~3_combout ),
	.datad(!\usedw_will_be_1~4_combout ),
	.datae(!\usedw_will_be_1~5_combout ),
	.dataf(!\usedw_will_be_1~6_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~7 .extended_lut = "off";
defparam \usedw_will_be_1~7 .lut_mask = 64'h55555557FFFFFFFF;
defparam \usedw_will_be_1~7 .shared_arith = "off";

twentynm_lcell_comb \empty_dff~0 (
	.dataa(!\valid_wreq~combout ),
	.datab(!\usedw_will_be_1~7_combout ),
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

endmodule

module out_fifo_altsyncram_6mn1 (
	full_dff,
	counter_reg_bit_14,
	counter_reg_bit_15,
	counter_reg_bit_16,
	address_a,
	l3_w0_n0_mux_dataout,
	l3_w1_n0_mux_dataout,
	l3_w2_n0_mux_dataout,
	l3_w3_n0_mux_dataout,
	l3_w4_n0_mux_dataout,
	l3_w5_n0_mux_dataout,
	l3_w6_n0_mux_dataout,
	l3_w7_n0_mux_dataout,
	clocken1,
	address_b,
	clock0,
	clock1,
	wrreq,
	data_a)/* synthesis synthesis_greybox=0 */;
input 	full_dff;
input 	counter_reg_bit_14;
input 	counter_reg_bit_15;
input 	counter_reg_bit_16;
input 	[16:0] address_a;
output 	l3_w0_n0_mux_dataout;
output 	l3_w1_n0_mux_dataout;
output 	l3_w2_n0_mux_dataout;
output 	l3_w3_n0_mux_dataout;
output 	l3_w4_n0_mux_dataout;
output 	l3_w5_n0_mux_dataout;
output 	l3_w6_n0_mux_dataout;
output 	l3_w7_n0_mux_dataout;
input 	clocken1;
input 	[16:0] address_b;
input 	clock0;
input 	clock1;
input 	wrreq;
input 	[7:0] data_a;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \ram_block1a32~portbdataout ;
wire \ram_block1a40~portbdataout ;
wire \ram_block1a48~portbdataout ;
wire \ram_block1a56~portbdataout ;
wire \ram_block1a16~portbdataout ;
wire \ram_block1a24~portbdataout ;
wire \ram_block1a0~portbdataout ;
wire \ram_block1a8~portbdataout ;
wire \ram_block1a33~portbdataout ;
wire \ram_block1a41~portbdataout ;
wire \ram_block1a49~portbdataout ;
wire \ram_block1a57~portbdataout ;
wire \ram_block1a17~portbdataout ;
wire \ram_block1a25~portbdataout ;
wire \ram_block1a1~portbdataout ;
wire \ram_block1a9~portbdataout ;
wire \ram_block1a34~portbdataout ;
wire \ram_block1a42~portbdataout ;
wire \ram_block1a50~portbdataout ;
wire \ram_block1a58~portbdataout ;
wire \ram_block1a18~portbdataout ;
wire \ram_block1a26~portbdataout ;
wire \ram_block1a2~portbdataout ;
wire \ram_block1a10~portbdataout ;
wire \ram_block1a35~portbdataout ;
wire \ram_block1a43~portbdataout ;
wire \ram_block1a51~portbdataout ;
wire \ram_block1a59~portbdataout ;
wire \ram_block1a19~portbdataout ;
wire \ram_block1a27~portbdataout ;
wire \ram_block1a3~portbdataout ;
wire \ram_block1a11~portbdataout ;
wire \ram_block1a36~portbdataout ;
wire \ram_block1a44~portbdataout ;
wire \ram_block1a52~portbdataout ;
wire \ram_block1a60~portbdataout ;
wire \ram_block1a20~portbdataout ;
wire \ram_block1a28~portbdataout ;
wire \ram_block1a4~portbdataout ;
wire \ram_block1a12~portbdataout ;
wire \ram_block1a37~portbdataout ;
wire \ram_block1a45~portbdataout ;
wire \ram_block1a53~portbdataout ;
wire \ram_block1a61~portbdataout ;
wire \ram_block1a21~portbdataout ;
wire \ram_block1a29~portbdataout ;
wire \ram_block1a5~portbdataout ;
wire \ram_block1a13~portbdataout ;
wire \ram_block1a38~portbdataout ;
wire \ram_block1a46~portbdataout ;
wire \ram_block1a54~portbdataout ;
wire \ram_block1a62~portbdataout ;
wire \ram_block1a22~portbdataout ;
wire \ram_block1a30~portbdataout ;
wire \ram_block1a6~portbdataout ;
wire \ram_block1a14~portbdataout ;
wire \ram_block1a39~portbdataout ;
wire \ram_block1a47~portbdataout ;
wire \ram_block1a55~portbdataout ;
wire \ram_block1a63~portbdataout ;
wire \ram_block1a23~portbdataout ;
wire \ram_block1a31~portbdataout ;
wire \ram_block1a7~portbdataout ;
wire \ram_block1a15~portbdataout ;
wire \out_address_reg_b[2]~q ;
wire \out_address_reg_b[0]~q ;
wire \out_address_reg_b[1]~q ;
wire \address_reg_b[2]~q ;
wire \decode2|w_anode665w[3]~0_combout ;
wire \decode2|w_anode675w[3]~0_combout ;
wire \decode2|w_anode685w[3]~0_combout ;
wire \decode2|w_anode695w[3]~0_combout ;
wire \address_reg_b[0]~q ;
wire \address_reg_b[1]~q ;
wire \decode2|w_anode645w[3]~0_combout ;
wire \decode2|w_anode655w[3]~0_combout ;
wire \decode2|w_anode618w[3]~0_combout ;
wire \decode2|w_anode635w[3]~0_combout ;

wire [143:0] ram_block1a32_PORTBDATAOUT_bus;
wire [143:0] ram_block1a40_PORTBDATAOUT_bus;
wire [143:0] ram_block1a48_PORTBDATAOUT_bus;
wire [143:0] ram_block1a56_PORTBDATAOUT_bus;
wire [143:0] ram_block1a16_PORTBDATAOUT_bus;
wire [143:0] ram_block1a24_PORTBDATAOUT_bus;
wire [143:0] ram_block1a0_PORTBDATAOUT_bus;
wire [143:0] ram_block1a8_PORTBDATAOUT_bus;
wire [143:0] ram_block1a33_PORTBDATAOUT_bus;
wire [143:0] ram_block1a41_PORTBDATAOUT_bus;
wire [143:0] ram_block1a49_PORTBDATAOUT_bus;
wire [143:0] ram_block1a57_PORTBDATAOUT_bus;
wire [143:0] ram_block1a17_PORTBDATAOUT_bus;
wire [143:0] ram_block1a25_PORTBDATAOUT_bus;
wire [143:0] ram_block1a1_PORTBDATAOUT_bus;
wire [143:0] ram_block1a9_PORTBDATAOUT_bus;
wire [143:0] ram_block1a34_PORTBDATAOUT_bus;
wire [143:0] ram_block1a42_PORTBDATAOUT_bus;
wire [143:0] ram_block1a50_PORTBDATAOUT_bus;
wire [143:0] ram_block1a58_PORTBDATAOUT_bus;
wire [143:0] ram_block1a18_PORTBDATAOUT_bus;
wire [143:0] ram_block1a26_PORTBDATAOUT_bus;
wire [143:0] ram_block1a2_PORTBDATAOUT_bus;
wire [143:0] ram_block1a10_PORTBDATAOUT_bus;
wire [143:0] ram_block1a35_PORTBDATAOUT_bus;
wire [143:0] ram_block1a43_PORTBDATAOUT_bus;
wire [143:0] ram_block1a51_PORTBDATAOUT_bus;
wire [143:0] ram_block1a59_PORTBDATAOUT_bus;
wire [143:0] ram_block1a19_PORTBDATAOUT_bus;
wire [143:0] ram_block1a27_PORTBDATAOUT_bus;
wire [143:0] ram_block1a3_PORTBDATAOUT_bus;
wire [143:0] ram_block1a11_PORTBDATAOUT_bus;
wire [143:0] ram_block1a36_PORTBDATAOUT_bus;
wire [143:0] ram_block1a44_PORTBDATAOUT_bus;
wire [143:0] ram_block1a52_PORTBDATAOUT_bus;
wire [143:0] ram_block1a60_PORTBDATAOUT_bus;
wire [143:0] ram_block1a20_PORTBDATAOUT_bus;
wire [143:0] ram_block1a28_PORTBDATAOUT_bus;
wire [143:0] ram_block1a4_PORTBDATAOUT_bus;
wire [143:0] ram_block1a12_PORTBDATAOUT_bus;
wire [143:0] ram_block1a37_PORTBDATAOUT_bus;
wire [143:0] ram_block1a45_PORTBDATAOUT_bus;
wire [143:0] ram_block1a53_PORTBDATAOUT_bus;
wire [143:0] ram_block1a61_PORTBDATAOUT_bus;
wire [143:0] ram_block1a21_PORTBDATAOUT_bus;
wire [143:0] ram_block1a29_PORTBDATAOUT_bus;
wire [143:0] ram_block1a5_PORTBDATAOUT_bus;
wire [143:0] ram_block1a13_PORTBDATAOUT_bus;
wire [143:0] ram_block1a38_PORTBDATAOUT_bus;
wire [143:0] ram_block1a46_PORTBDATAOUT_bus;
wire [143:0] ram_block1a54_PORTBDATAOUT_bus;
wire [143:0] ram_block1a62_PORTBDATAOUT_bus;
wire [143:0] ram_block1a22_PORTBDATAOUT_bus;
wire [143:0] ram_block1a30_PORTBDATAOUT_bus;
wire [143:0] ram_block1a6_PORTBDATAOUT_bus;
wire [143:0] ram_block1a14_PORTBDATAOUT_bus;
wire [143:0] ram_block1a39_PORTBDATAOUT_bus;
wire [143:0] ram_block1a47_PORTBDATAOUT_bus;
wire [143:0] ram_block1a55_PORTBDATAOUT_bus;
wire [143:0] ram_block1a63_PORTBDATAOUT_bus;
wire [143:0] ram_block1a23_PORTBDATAOUT_bus;
wire [143:0] ram_block1a31_PORTBDATAOUT_bus;
wire [143:0] ram_block1a7_PORTBDATAOUT_bus;
wire [143:0] ram_block1a15_PORTBDATAOUT_bus;

assign \ram_block1a32~portbdataout  = ram_block1a32_PORTBDATAOUT_bus[0];

assign \ram_block1a40~portbdataout  = ram_block1a40_PORTBDATAOUT_bus[0];

assign \ram_block1a48~portbdataout  = ram_block1a48_PORTBDATAOUT_bus[0];

assign \ram_block1a56~portbdataout  = ram_block1a56_PORTBDATAOUT_bus[0];

assign \ram_block1a16~portbdataout  = ram_block1a16_PORTBDATAOUT_bus[0];

assign \ram_block1a24~portbdataout  = ram_block1a24_PORTBDATAOUT_bus[0];

assign \ram_block1a0~portbdataout  = ram_block1a0_PORTBDATAOUT_bus[0];

assign \ram_block1a8~portbdataout  = ram_block1a8_PORTBDATAOUT_bus[0];

assign \ram_block1a33~portbdataout  = ram_block1a33_PORTBDATAOUT_bus[0];

assign \ram_block1a41~portbdataout  = ram_block1a41_PORTBDATAOUT_bus[0];

assign \ram_block1a49~portbdataout  = ram_block1a49_PORTBDATAOUT_bus[0];

assign \ram_block1a57~portbdataout  = ram_block1a57_PORTBDATAOUT_bus[0];

assign \ram_block1a17~portbdataout  = ram_block1a17_PORTBDATAOUT_bus[0];

assign \ram_block1a25~portbdataout  = ram_block1a25_PORTBDATAOUT_bus[0];

assign \ram_block1a1~portbdataout  = ram_block1a1_PORTBDATAOUT_bus[0];

assign \ram_block1a9~portbdataout  = ram_block1a9_PORTBDATAOUT_bus[0];

assign \ram_block1a34~portbdataout  = ram_block1a34_PORTBDATAOUT_bus[0];

assign \ram_block1a42~portbdataout  = ram_block1a42_PORTBDATAOUT_bus[0];

assign \ram_block1a50~portbdataout  = ram_block1a50_PORTBDATAOUT_bus[0];

assign \ram_block1a58~portbdataout  = ram_block1a58_PORTBDATAOUT_bus[0];

assign \ram_block1a18~portbdataout  = ram_block1a18_PORTBDATAOUT_bus[0];

assign \ram_block1a26~portbdataout  = ram_block1a26_PORTBDATAOUT_bus[0];

assign \ram_block1a2~portbdataout  = ram_block1a2_PORTBDATAOUT_bus[0];

assign \ram_block1a10~portbdataout  = ram_block1a10_PORTBDATAOUT_bus[0];

assign \ram_block1a35~portbdataout  = ram_block1a35_PORTBDATAOUT_bus[0];

assign \ram_block1a43~portbdataout  = ram_block1a43_PORTBDATAOUT_bus[0];

assign \ram_block1a51~portbdataout  = ram_block1a51_PORTBDATAOUT_bus[0];

assign \ram_block1a59~portbdataout  = ram_block1a59_PORTBDATAOUT_bus[0];

assign \ram_block1a19~portbdataout  = ram_block1a19_PORTBDATAOUT_bus[0];

assign \ram_block1a27~portbdataout  = ram_block1a27_PORTBDATAOUT_bus[0];

assign \ram_block1a3~portbdataout  = ram_block1a3_PORTBDATAOUT_bus[0];

assign \ram_block1a11~portbdataout  = ram_block1a11_PORTBDATAOUT_bus[0];

assign \ram_block1a36~portbdataout  = ram_block1a36_PORTBDATAOUT_bus[0];

assign \ram_block1a44~portbdataout  = ram_block1a44_PORTBDATAOUT_bus[0];

assign \ram_block1a52~portbdataout  = ram_block1a52_PORTBDATAOUT_bus[0];

assign \ram_block1a60~portbdataout  = ram_block1a60_PORTBDATAOUT_bus[0];

assign \ram_block1a20~portbdataout  = ram_block1a20_PORTBDATAOUT_bus[0];

assign \ram_block1a28~portbdataout  = ram_block1a28_PORTBDATAOUT_bus[0];

assign \ram_block1a4~portbdataout  = ram_block1a4_PORTBDATAOUT_bus[0];

assign \ram_block1a12~portbdataout  = ram_block1a12_PORTBDATAOUT_bus[0];

assign \ram_block1a37~portbdataout  = ram_block1a37_PORTBDATAOUT_bus[0];

assign \ram_block1a45~portbdataout  = ram_block1a45_PORTBDATAOUT_bus[0];

assign \ram_block1a53~portbdataout  = ram_block1a53_PORTBDATAOUT_bus[0];

assign \ram_block1a61~portbdataout  = ram_block1a61_PORTBDATAOUT_bus[0];

assign \ram_block1a21~portbdataout  = ram_block1a21_PORTBDATAOUT_bus[0];

assign \ram_block1a29~portbdataout  = ram_block1a29_PORTBDATAOUT_bus[0];

assign \ram_block1a5~portbdataout  = ram_block1a5_PORTBDATAOUT_bus[0];

assign \ram_block1a13~portbdataout  = ram_block1a13_PORTBDATAOUT_bus[0];

assign \ram_block1a38~portbdataout  = ram_block1a38_PORTBDATAOUT_bus[0];

assign \ram_block1a46~portbdataout  = ram_block1a46_PORTBDATAOUT_bus[0];

assign \ram_block1a54~portbdataout  = ram_block1a54_PORTBDATAOUT_bus[0];

assign \ram_block1a62~portbdataout  = ram_block1a62_PORTBDATAOUT_bus[0];

assign \ram_block1a22~portbdataout  = ram_block1a22_PORTBDATAOUT_bus[0];

assign \ram_block1a30~portbdataout  = ram_block1a30_PORTBDATAOUT_bus[0];

assign \ram_block1a6~portbdataout  = ram_block1a6_PORTBDATAOUT_bus[0];

assign \ram_block1a14~portbdataout  = ram_block1a14_PORTBDATAOUT_bus[0];

assign \ram_block1a39~portbdataout  = ram_block1a39_PORTBDATAOUT_bus[0];

assign \ram_block1a47~portbdataout  = ram_block1a47_PORTBDATAOUT_bus[0];

assign \ram_block1a55~portbdataout  = ram_block1a55_PORTBDATAOUT_bus[0];

assign \ram_block1a63~portbdataout  = ram_block1a63_PORTBDATAOUT_bus[0];

assign \ram_block1a23~portbdataout  = ram_block1a23_PORTBDATAOUT_bus[0];

assign \ram_block1a31~portbdataout  = ram_block1a31_PORTBDATAOUT_bus[0];

assign \ram_block1a7~portbdataout  = ram_block1a7_PORTBDATAOUT_bus[0];

assign \ram_block1a15~portbdataout  = ram_block1a15_PORTBDATAOUT_bus[0];

out_fifo_mux_1k7 mux3(
	.ram_block1a32(\ram_block1a32~portbdataout ),
	.ram_block1a40(\ram_block1a40~portbdataout ),
	.ram_block1a48(\ram_block1a48~portbdataout ),
	.ram_block1a56(\ram_block1a56~portbdataout ),
	.ram_block1a16(\ram_block1a16~portbdataout ),
	.ram_block1a24(\ram_block1a24~portbdataout ),
	.ram_block1a0(\ram_block1a0~portbdataout ),
	.ram_block1a8(\ram_block1a8~portbdataout ),
	.ram_block1a33(\ram_block1a33~portbdataout ),
	.ram_block1a41(\ram_block1a41~portbdataout ),
	.ram_block1a49(\ram_block1a49~portbdataout ),
	.ram_block1a57(\ram_block1a57~portbdataout ),
	.ram_block1a17(\ram_block1a17~portbdataout ),
	.ram_block1a25(\ram_block1a25~portbdataout ),
	.ram_block1a1(\ram_block1a1~portbdataout ),
	.ram_block1a9(\ram_block1a9~portbdataout ),
	.ram_block1a34(\ram_block1a34~portbdataout ),
	.ram_block1a42(\ram_block1a42~portbdataout ),
	.ram_block1a50(\ram_block1a50~portbdataout ),
	.ram_block1a58(\ram_block1a58~portbdataout ),
	.ram_block1a18(\ram_block1a18~portbdataout ),
	.ram_block1a26(\ram_block1a26~portbdataout ),
	.ram_block1a2(\ram_block1a2~portbdataout ),
	.ram_block1a10(\ram_block1a10~portbdataout ),
	.ram_block1a35(\ram_block1a35~portbdataout ),
	.ram_block1a43(\ram_block1a43~portbdataout ),
	.ram_block1a51(\ram_block1a51~portbdataout ),
	.ram_block1a59(\ram_block1a59~portbdataout ),
	.ram_block1a19(\ram_block1a19~portbdataout ),
	.ram_block1a27(\ram_block1a27~portbdataout ),
	.ram_block1a3(\ram_block1a3~portbdataout ),
	.ram_block1a11(\ram_block1a11~portbdataout ),
	.ram_block1a36(\ram_block1a36~portbdataout ),
	.ram_block1a44(\ram_block1a44~portbdataout ),
	.ram_block1a52(\ram_block1a52~portbdataout ),
	.ram_block1a60(\ram_block1a60~portbdataout ),
	.ram_block1a20(\ram_block1a20~portbdataout ),
	.ram_block1a28(\ram_block1a28~portbdataout ),
	.ram_block1a4(\ram_block1a4~portbdataout ),
	.ram_block1a12(\ram_block1a12~portbdataout ),
	.ram_block1a37(\ram_block1a37~portbdataout ),
	.ram_block1a45(\ram_block1a45~portbdataout ),
	.ram_block1a53(\ram_block1a53~portbdataout ),
	.ram_block1a61(\ram_block1a61~portbdataout ),
	.ram_block1a21(\ram_block1a21~portbdataout ),
	.ram_block1a29(\ram_block1a29~portbdataout ),
	.ram_block1a5(\ram_block1a5~portbdataout ),
	.ram_block1a13(\ram_block1a13~portbdataout ),
	.ram_block1a38(\ram_block1a38~portbdataout ),
	.ram_block1a46(\ram_block1a46~portbdataout ),
	.ram_block1a54(\ram_block1a54~portbdataout ),
	.ram_block1a62(\ram_block1a62~portbdataout ),
	.ram_block1a22(\ram_block1a22~portbdataout ),
	.ram_block1a30(\ram_block1a30~portbdataout ),
	.ram_block1a6(\ram_block1a6~portbdataout ),
	.ram_block1a14(\ram_block1a14~portbdataout ),
	.ram_block1a39(\ram_block1a39~portbdataout ),
	.ram_block1a47(\ram_block1a47~portbdataout ),
	.ram_block1a55(\ram_block1a55~portbdataout ),
	.ram_block1a63(\ram_block1a63~portbdataout ),
	.ram_block1a23(\ram_block1a23~portbdataout ),
	.ram_block1a31(\ram_block1a31~portbdataout ),
	.ram_block1a7(\ram_block1a7~portbdataout ),
	.ram_block1a15(\ram_block1a15~portbdataout ),
	.out_address_reg_b_2(\out_address_reg_b[2]~q ),
	.out_address_reg_b_0(\out_address_reg_b[0]~q ),
	.out_address_reg_b_1(\out_address_reg_b[1]~q ),
	.l3_w0_n0_mux_dataout(l3_w0_n0_mux_dataout),
	.l3_w1_n0_mux_dataout(l3_w1_n0_mux_dataout),
	.l3_w2_n0_mux_dataout(l3_w2_n0_mux_dataout),
	.l3_w3_n0_mux_dataout(l3_w3_n0_mux_dataout),
	.l3_w4_n0_mux_dataout(l3_w4_n0_mux_dataout),
	.l3_w5_n0_mux_dataout(l3_w5_n0_mux_dataout),
	.l3_w6_n0_mux_dataout(l3_w6_n0_mux_dataout),
	.l3_w7_n0_mux_dataout(l3_w7_n0_mux_dataout));

out_fifo_decode_hp6 decode2(
	.full_dff(full_dff),
	.counter_reg_bit_14(counter_reg_bit_14),
	.counter_reg_bit_15(counter_reg_bit_15),
	.counter_reg_bit_16(counter_reg_bit_16),
	.w_anode665w_3(\decode2|w_anode665w[3]~0_combout ),
	.w_anode675w_3(\decode2|w_anode675w[3]~0_combout ),
	.w_anode685w_3(\decode2|w_anode685w[3]~0_combout ),
	.w_anode695w_3(\decode2|w_anode695w[3]~0_combout ),
	.w_anode645w_3(\decode2|w_anode645w[3]~0_combout ),
	.w_anode655w_3(\decode2|w_anode655w[3]~0_combout ),
	.w_anode618w_3(\decode2|w_anode618w[3]~0_combout ),
	.w_anode635w_3(\decode2|w_anode635w[3]~0_combout ),
	.wrreq(wrreq));

twentynm_ram_block ram_block1a32(
	.portawe(\decode2|w_anode665w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode665w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[0]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a32_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a32.clk0_core_clock_enable = "ena0";
defparam ram_block1a32.clk1_output_clock_enable = "ena1";
defparam ram_block1a32.data_interleave_offset_in_bits = 1;
defparam ram_block1a32.data_interleave_width_in_bits = 1;
defparam ram_block1a32.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a32.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a32.operation_mode = "dual_port";
defparam ram_block1a32.port_a_address_clear = "none";
defparam ram_block1a32.port_a_address_width = 14;
defparam ram_block1a32.port_a_data_out_clear = "none";
defparam ram_block1a32.port_a_data_out_clock = "none";
defparam ram_block1a32.port_a_data_width = 1;
defparam ram_block1a32.port_a_first_address = 65536;
defparam ram_block1a32.port_a_first_bit_number = 0;
defparam ram_block1a32.port_a_last_address = 81919;
defparam ram_block1a32.port_a_logical_ram_depth = 131072;
defparam ram_block1a32.port_a_logical_ram_width = 8;
defparam ram_block1a32.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a32.port_b_address_clear = "none";
defparam ram_block1a32.port_b_address_clock = "clock1";
defparam ram_block1a32.port_b_address_width = 14;
defparam ram_block1a32.port_b_data_out_clear = "none";
defparam ram_block1a32.port_b_data_out_clock = "clock1";
defparam ram_block1a32.port_b_data_width = 1;
defparam ram_block1a32.port_b_first_address = 65536;
defparam ram_block1a32.port_b_first_bit_number = 0;
defparam ram_block1a32.port_b_last_address = 81919;
defparam ram_block1a32.port_b_logical_ram_depth = 131072;
defparam ram_block1a32.port_b_logical_ram_width = 8;
defparam ram_block1a32.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a32.port_b_read_enable_clock = "clock1";
defparam ram_block1a32.ram_block_type = "auto";

twentynm_ram_block ram_block1a40(
	.portawe(\decode2|w_anode675w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode675w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[0]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a40_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a40.clk0_core_clock_enable = "ena0";
defparam ram_block1a40.clk1_output_clock_enable = "ena1";
defparam ram_block1a40.data_interleave_offset_in_bits = 1;
defparam ram_block1a40.data_interleave_width_in_bits = 1;
defparam ram_block1a40.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a40.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a40.operation_mode = "dual_port";
defparam ram_block1a40.port_a_address_clear = "none";
defparam ram_block1a40.port_a_address_width = 14;
defparam ram_block1a40.port_a_data_out_clear = "none";
defparam ram_block1a40.port_a_data_out_clock = "none";
defparam ram_block1a40.port_a_data_width = 1;
defparam ram_block1a40.port_a_first_address = 81920;
defparam ram_block1a40.port_a_first_bit_number = 0;
defparam ram_block1a40.port_a_last_address = 98303;
defparam ram_block1a40.port_a_logical_ram_depth = 131072;
defparam ram_block1a40.port_a_logical_ram_width = 8;
defparam ram_block1a40.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a40.port_b_address_clear = "none";
defparam ram_block1a40.port_b_address_clock = "clock1";
defparam ram_block1a40.port_b_address_width = 14;
defparam ram_block1a40.port_b_data_out_clear = "none";
defparam ram_block1a40.port_b_data_out_clock = "clock1";
defparam ram_block1a40.port_b_data_width = 1;
defparam ram_block1a40.port_b_first_address = 81920;
defparam ram_block1a40.port_b_first_bit_number = 0;
defparam ram_block1a40.port_b_last_address = 98303;
defparam ram_block1a40.port_b_logical_ram_depth = 131072;
defparam ram_block1a40.port_b_logical_ram_width = 8;
defparam ram_block1a40.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a40.port_b_read_enable_clock = "clock1";
defparam ram_block1a40.ram_block_type = "auto";

twentynm_ram_block ram_block1a48(
	.portawe(\decode2|w_anode685w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode685w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[0]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a48_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a48.clk0_core_clock_enable = "ena0";
defparam ram_block1a48.clk1_output_clock_enable = "ena1";
defparam ram_block1a48.data_interleave_offset_in_bits = 1;
defparam ram_block1a48.data_interleave_width_in_bits = 1;
defparam ram_block1a48.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a48.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a48.operation_mode = "dual_port";
defparam ram_block1a48.port_a_address_clear = "none";
defparam ram_block1a48.port_a_address_width = 14;
defparam ram_block1a48.port_a_data_out_clear = "none";
defparam ram_block1a48.port_a_data_out_clock = "none";
defparam ram_block1a48.port_a_data_width = 1;
defparam ram_block1a48.port_a_first_address = 98304;
defparam ram_block1a48.port_a_first_bit_number = 0;
defparam ram_block1a48.port_a_last_address = 114687;
defparam ram_block1a48.port_a_logical_ram_depth = 131072;
defparam ram_block1a48.port_a_logical_ram_width = 8;
defparam ram_block1a48.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a48.port_b_address_clear = "none";
defparam ram_block1a48.port_b_address_clock = "clock1";
defparam ram_block1a48.port_b_address_width = 14;
defparam ram_block1a48.port_b_data_out_clear = "none";
defparam ram_block1a48.port_b_data_out_clock = "clock1";
defparam ram_block1a48.port_b_data_width = 1;
defparam ram_block1a48.port_b_first_address = 98304;
defparam ram_block1a48.port_b_first_bit_number = 0;
defparam ram_block1a48.port_b_last_address = 114687;
defparam ram_block1a48.port_b_logical_ram_depth = 131072;
defparam ram_block1a48.port_b_logical_ram_width = 8;
defparam ram_block1a48.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a48.port_b_read_enable_clock = "clock1";
defparam ram_block1a48.ram_block_type = "auto";

twentynm_ram_block ram_block1a56(
	.portawe(\decode2|w_anode695w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode695w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[0]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a56_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a56.clk0_core_clock_enable = "ena0";
defparam ram_block1a56.clk1_output_clock_enable = "ena1";
defparam ram_block1a56.data_interleave_offset_in_bits = 1;
defparam ram_block1a56.data_interleave_width_in_bits = 1;
defparam ram_block1a56.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a56.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a56.operation_mode = "dual_port";
defparam ram_block1a56.port_a_address_clear = "none";
defparam ram_block1a56.port_a_address_width = 14;
defparam ram_block1a56.port_a_data_out_clear = "none";
defparam ram_block1a56.port_a_data_out_clock = "none";
defparam ram_block1a56.port_a_data_width = 1;
defparam ram_block1a56.port_a_first_address = 114688;
defparam ram_block1a56.port_a_first_bit_number = 0;
defparam ram_block1a56.port_a_last_address = 131071;
defparam ram_block1a56.port_a_logical_ram_depth = 131072;
defparam ram_block1a56.port_a_logical_ram_width = 8;
defparam ram_block1a56.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a56.port_b_address_clear = "none";
defparam ram_block1a56.port_b_address_clock = "clock1";
defparam ram_block1a56.port_b_address_width = 14;
defparam ram_block1a56.port_b_data_out_clear = "none";
defparam ram_block1a56.port_b_data_out_clock = "clock1";
defparam ram_block1a56.port_b_data_width = 1;
defparam ram_block1a56.port_b_first_address = 114688;
defparam ram_block1a56.port_b_first_bit_number = 0;
defparam ram_block1a56.port_b_last_address = 131071;
defparam ram_block1a56.port_b_logical_ram_depth = 131072;
defparam ram_block1a56.port_b_logical_ram_width = 8;
defparam ram_block1a56.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a56.port_b_read_enable_clock = "clock1";
defparam ram_block1a56.ram_block_type = "auto";

twentynm_ram_block ram_block1a16(
	.portawe(\decode2|w_anode645w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode645w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[0]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a16_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a16.clk0_core_clock_enable = "ena0";
defparam ram_block1a16.clk1_output_clock_enable = "ena1";
defparam ram_block1a16.data_interleave_offset_in_bits = 1;
defparam ram_block1a16.data_interleave_width_in_bits = 1;
defparam ram_block1a16.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a16.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a16.operation_mode = "dual_port";
defparam ram_block1a16.port_a_address_clear = "none";
defparam ram_block1a16.port_a_address_width = 14;
defparam ram_block1a16.port_a_data_out_clear = "none";
defparam ram_block1a16.port_a_data_out_clock = "none";
defparam ram_block1a16.port_a_data_width = 1;
defparam ram_block1a16.port_a_first_address = 32768;
defparam ram_block1a16.port_a_first_bit_number = 0;
defparam ram_block1a16.port_a_last_address = 49151;
defparam ram_block1a16.port_a_logical_ram_depth = 131072;
defparam ram_block1a16.port_a_logical_ram_width = 8;
defparam ram_block1a16.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a16.port_b_address_clear = "none";
defparam ram_block1a16.port_b_address_clock = "clock1";
defparam ram_block1a16.port_b_address_width = 14;
defparam ram_block1a16.port_b_data_out_clear = "none";
defparam ram_block1a16.port_b_data_out_clock = "clock1";
defparam ram_block1a16.port_b_data_width = 1;
defparam ram_block1a16.port_b_first_address = 32768;
defparam ram_block1a16.port_b_first_bit_number = 0;
defparam ram_block1a16.port_b_last_address = 49151;
defparam ram_block1a16.port_b_logical_ram_depth = 131072;
defparam ram_block1a16.port_b_logical_ram_width = 8;
defparam ram_block1a16.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a16.port_b_read_enable_clock = "clock1";
defparam ram_block1a16.ram_block_type = "auto";

twentynm_ram_block ram_block1a24(
	.portawe(\decode2|w_anode655w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode655w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[0]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a24_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a24.clk0_core_clock_enable = "ena0";
defparam ram_block1a24.clk1_output_clock_enable = "ena1";
defparam ram_block1a24.data_interleave_offset_in_bits = 1;
defparam ram_block1a24.data_interleave_width_in_bits = 1;
defparam ram_block1a24.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a24.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a24.operation_mode = "dual_port";
defparam ram_block1a24.port_a_address_clear = "none";
defparam ram_block1a24.port_a_address_width = 14;
defparam ram_block1a24.port_a_data_out_clear = "none";
defparam ram_block1a24.port_a_data_out_clock = "none";
defparam ram_block1a24.port_a_data_width = 1;
defparam ram_block1a24.port_a_first_address = 49152;
defparam ram_block1a24.port_a_first_bit_number = 0;
defparam ram_block1a24.port_a_last_address = 65535;
defparam ram_block1a24.port_a_logical_ram_depth = 131072;
defparam ram_block1a24.port_a_logical_ram_width = 8;
defparam ram_block1a24.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a24.port_b_address_clear = "none";
defparam ram_block1a24.port_b_address_clock = "clock1";
defparam ram_block1a24.port_b_address_width = 14;
defparam ram_block1a24.port_b_data_out_clear = "none";
defparam ram_block1a24.port_b_data_out_clock = "clock1";
defparam ram_block1a24.port_b_data_width = 1;
defparam ram_block1a24.port_b_first_address = 49152;
defparam ram_block1a24.port_b_first_bit_number = 0;
defparam ram_block1a24.port_b_last_address = 65535;
defparam ram_block1a24.port_b_logical_ram_depth = 131072;
defparam ram_block1a24.port_b_logical_ram_width = 8;
defparam ram_block1a24.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a24.port_b_read_enable_clock = "clock1";
defparam ram_block1a24.ram_block_type = "auto";

twentynm_ram_block ram_block1a0(
	.portawe(\decode2|w_anode618w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode618w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[0]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a0_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a0.clk0_core_clock_enable = "ena0";
defparam ram_block1a0.clk1_output_clock_enable = "ena1";
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a0.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a0.operation_mode = "dual_port";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 14;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "none";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 16383;
defparam ram_block1a0.port_a_logical_ram_depth = 131072;
defparam ram_block1a0.port_a_logical_ram_width = 8;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a0.port_b_address_clear = "none";
defparam ram_block1a0.port_b_address_clock = "clock1";
defparam ram_block1a0.port_b_address_width = 14;
defparam ram_block1a0.port_b_data_out_clear = "none";
defparam ram_block1a0.port_b_data_out_clock = "clock1";
defparam ram_block1a0.port_b_data_width = 1;
defparam ram_block1a0.port_b_first_address = 0;
defparam ram_block1a0.port_b_first_bit_number = 0;
defparam ram_block1a0.port_b_last_address = 16383;
defparam ram_block1a0.port_b_logical_ram_depth = 131072;
defparam ram_block1a0.port_b_logical_ram_width = 8;
defparam ram_block1a0.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a0.port_b_read_enable_clock = "clock1";
defparam ram_block1a0.ram_block_type = "auto";

twentynm_ram_block ram_block1a8(
	.portawe(\decode2|w_anode635w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode635w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[0]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a8_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a8.clk0_core_clock_enable = "ena0";
defparam ram_block1a8.clk1_output_clock_enable = "ena1";
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a8.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a8.operation_mode = "dual_port";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 14;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "none";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 16384;
defparam ram_block1a8.port_a_first_bit_number = 0;
defparam ram_block1a8.port_a_last_address = 32767;
defparam ram_block1a8.port_a_logical_ram_depth = 131072;
defparam ram_block1a8.port_a_logical_ram_width = 8;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a8.port_b_address_clear = "none";
defparam ram_block1a8.port_b_address_clock = "clock1";
defparam ram_block1a8.port_b_address_width = 14;
defparam ram_block1a8.port_b_data_out_clear = "none";
defparam ram_block1a8.port_b_data_out_clock = "clock1";
defparam ram_block1a8.port_b_data_width = 1;
defparam ram_block1a8.port_b_first_address = 16384;
defparam ram_block1a8.port_b_first_bit_number = 0;
defparam ram_block1a8.port_b_last_address = 32767;
defparam ram_block1a8.port_b_logical_ram_depth = 131072;
defparam ram_block1a8.port_b_logical_ram_width = 8;
defparam ram_block1a8.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a8.port_b_read_enable_clock = "clock1";
defparam ram_block1a8.ram_block_type = "auto";

twentynm_ram_block ram_block1a33(
	.portawe(\decode2|w_anode665w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode665w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[1]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a33_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a33.clk0_core_clock_enable = "ena0";
defparam ram_block1a33.clk1_output_clock_enable = "ena1";
defparam ram_block1a33.data_interleave_offset_in_bits = 1;
defparam ram_block1a33.data_interleave_width_in_bits = 1;
defparam ram_block1a33.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a33.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a33.operation_mode = "dual_port";
defparam ram_block1a33.port_a_address_clear = "none";
defparam ram_block1a33.port_a_address_width = 14;
defparam ram_block1a33.port_a_data_out_clear = "none";
defparam ram_block1a33.port_a_data_out_clock = "none";
defparam ram_block1a33.port_a_data_width = 1;
defparam ram_block1a33.port_a_first_address = 65536;
defparam ram_block1a33.port_a_first_bit_number = 1;
defparam ram_block1a33.port_a_last_address = 81919;
defparam ram_block1a33.port_a_logical_ram_depth = 131072;
defparam ram_block1a33.port_a_logical_ram_width = 8;
defparam ram_block1a33.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a33.port_b_address_clear = "none";
defparam ram_block1a33.port_b_address_clock = "clock1";
defparam ram_block1a33.port_b_address_width = 14;
defparam ram_block1a33.port_b_data_out_clear = "none";
defparam ram_block1a33.port_b_data_out_clock = "clock1";
defparam ram_block1a33.port_b_data_width = 1;
defparam ram_block1a33.port_b_first_address = 65536;
defparam ram_block1a33.port_b_first_bit_number = 1;
defparam ram_block1a33.port_b_last_address = 81919;
defparam ram_block1a33.port_b_logical_ram_depth = 131072;
defparam ram_block1a33.port_b_logical_ram_width = 8;
defparam ram_block1a33.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a33.port_b_read_enable_clock = "clock1";
defparam ram_block1a33.ram_block_type = "auto";

twentynm_ram_block ram_block1a41(
	.portawe(\decode2|w_anode675w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode675w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[1]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a41_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a41.clk0_core_clock_enable = "ena0";
defparam ram_block1a41.clk1_output_clock_enable = "ena1";
defparam ram_block1a41.data_interleave_offset_in_bits = 1;
defparam ram_block1a41.data_interleave_width_in_bits = 1;
defparam ram_block1a41.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a41.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a41.operation_mode = "dual_port";
defparam ram_block1a41.port_a_address_clear = "none";
defparam ram_block1a41.port_a_address_width = 14;
defparam ram_block1a41.port_a_data_out_clear = "none";
defparam ram_block1a41.port_a_data_out_clock = "none";
defparam ram_block1a41.port_a_data_width = 1;
defparam ram_block1a41.port_a_first_address = 81920;
defparam ram_block1a41.port_a_first_bit_number = 1;
defparam ram_block1a41.port_a_last_address = 98303;
defparam ram_block1a41.port_a_logical_ram_depth = 131072;
defparam ram_block1a41.port_a_logical_ram_width = 8;
defparam ram_block1a41.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a41.port_b_address_clear = "none";
defparam ram_block1a41.port_b_address_clock = "clock1";
defparam ram_block1a41.port_b_address_width = 14;
defparam ram_block1a41.port_b_data_out_clear = "none";
defparam ram_block1a41.port_b_data_out_clock = "clock1";
defparam ram_block1a41.port_b_data_width = 1;
defparam ram_block1a41.port_b_first_address = 81920;
defparam ram_block1a41.port_b_first_bit_number = 1;
defparam ram_block1a41.port_b_last_address = 98303;
defparam ram_block1a41.port_b_logical_ram_depth = 131072;
defparam ram_block1a41.port_b_logical_ram_width = 8;
defparam ram_block1a41.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a41.port_b_read_enable_clock = "clock1";
defparam ram_block1a41.ram_block_type = "auto";

twentynm_ram_block ram_block1a49(
	.portawe(\decode2|w_anode685w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode685w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[1]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a49_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a49.clk0_core_clock_enable = "ena0";
defparam ram_block1a49.clk1_output_clock_enable = "ena1";
defparam ram_block1a49.data_interleave_offset_in_bits = 1;
defparam ram_block1a49.data_interleave_width_in_bits = 1;
defparam ram_block1a49.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a49.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a49.operation_mode = "dual_port";
defparam ram_block1a49.port_a_address_clear = "none";
defparam ram_block1a49.port_a_address_width = 14;
defparam ram_block1a49.port_a_data_out_clear = "none";
defparam ram_block1a49.port_a_data_out_clock = "none";
defparam ram_block1a49.port_a_data_width = 1;
defparam ram_block1a49.port_a_first_address = 98304;
defparam ram_block1a49.port_a_first_bit_number = 1;
defparam ram_block1a49.port_a_last_address = 114687;
defparam ram_block1a49.port_a_logical_ram_depth = 131072;
defparam ram_block1a49.port_a_logical_ram_width = 8;
defparam ram_block1a49.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a49.port_b_address_clear = "none";
defparam ram_block1a49.port_b_address_clock = "clock1";
defparam ram_block1a49.port_b_address_width = 14;
defparam ram_block1a49.port_b_data_out_clear = "none";
defparam ram_block1a49.port_b_data_out_clock = "clock1";
defparam ram_block1a49.port_b_data_width = 1;
defparam ram_block1a49.port_b_first_address = 98304;
defparam ram_block1a49.port_b_first_bit_number = 1;
defparam ram_block1a49.port_b_last_address = 114687;
defparam ram_block1a49.port_b_logical_ram_depth = 131072;
defparam ram_block1a49.port_b_logical_ram_width = 8;
defparam ram_block1a49.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a49.port_b_read_enable_clock = "clock1";
defparam ram_block1a49.ram_block_type = "auto";

twentynm_ram_block ram_block1a57(
	.portawe(\decode2|w_anode695w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode695w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[1]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a57_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a57.clk0_core_clock_enable = "ena0";
defparam ram_block1a57.clk1_output_clock_enable = "ena1";
defparam ram_block1a57.data_interleave_offset_in_bits = 1;
defparam ram_block1a57.data_interleave_width_in_bits = 1;
defparam ram_block1a57.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a57.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a57.operation_mode = "dual_port";
defparam ram_block1a57.port_a_address_clear = "none";
defparam ram_block1a57.port_a_address_width = 14;
defparam ram_block1a57.port_a_data_out_clear = "none";
defparam ram_block1a57.port_a_data_out_clock = "none";
defparam ram_block1a57.port_a_data_width = 1;
defparam ram_block1a57.port_a_first_address = 114688;
defparam ram_block1a57.port_a_first_bit_number = 1;
defparam ram_block1a57.port_a_last_address = 131071;
defparam ram_block1a57.port_a_logical_ram_depth = 131072;
defparam ram_block1a57.port_a_logical_ram_width = 8;
defparam ram_block1a57.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a57.port_b_address_clear = "none";
defparam ram_block1a57.port_b_address_clock = "clock1";
defparam ram_block1a57.port_b_address_width = 14;
defparam ram_block1a57.port_b_data_out_clear = "none";
defparam ram_block1a57.port_b_data_out_clock = "clock1";
defparam ram_block1a57.port_b_data_width = 1;
defparam ram_block1a57.port_b_first_address = 114688;
defparam ram_block1a57.port_b_first_bit_number = 1;
defparam ram_block1a57.port_b_last_address = 131071;
defparam ram_block1a57.port_b_logical_ram_depth = 131072;
defparam ram_block1a57.port_b_logical_ram_width = 8;
defparam ram_block1a57.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a57.port_b_read_enable_clock = "clock1";
defparam ram_block1a57.ram_block_type = "auto";

twentynm_ram_block ram_block1a17(
	.portawe(\decode2|w_anode645w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode645w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[1]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a17_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a17.clk0_core_clock_enable = "ena0";
defparam ram_block1a17.clk1_output_clock_enable = "ena1";
defparam ram_block1a17.data_interleave_offset_in_bits = 1;
defparam ram_block1a17.data_interleave_width_in_bits = 1;
defparam ram_block1a17.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a17.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a17.operation_mode = "dual_port";
defparam ram_block1a17.port_a_address_clear = "none";
defparam ram_block1a17.port_a_address_width = 14;
defparam ram_block1a17.port_a_data_out_clear = "none";
defparam ram_block1a17.port_a_data_out_clock = "none";
defparam ram_block1a17.port_a_data_width = 1;
defparam ram_block1a17.port_a_first_address = 32768;
defparam ram_block1a17.port_a_first_bit_number = 1;
defparam ram_block1a17.port_a_last_address = 49151;
defparam ram_block1a17.port_a_logical_ram_depth = 131072;
defparam ram_block1a17.port_a_logical_ram_width = 8;
defparam ram_block1a17.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a17.port_b_address_clear = "none";
defparam ram_block1a17.port_b_address_clock = "clock1";
defparam ram_block1a17.port_b_address_width = 14;
defparam ram_block1a17.port_b_data_out_clear = "none";
defparam ram_block1a17.port_b_data_out_clock = "clock1";
defparam ram_block1a17.port_b_data_width = 1;
defparam ram_block1a17.port_b_first_address = 32768;
defparam ram_block1a17.port_b_first_bit_number = 1;
defparam ram_block1a17.port_b_last_address = 49151;
defparam ram_block1a17.port_b_logical_ram_depth = 131072;
defparam ram_block1a17.port_b_logical_ram_width = 8;
defparam ram_block1a17.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a17.port_b_read_enable_clock = "clock1";
defparam ram_block1a17.ram_block_type = "auto";

twentynm_ram_block ram_block1a25(
	.portawe(\decode2|w_anode655w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode655w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[1]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a25_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a25.clk0_core_clock_enable = "ena0";
defparam ram_block1a25.clk1_output_clock_enable = "ena1";
defparam ram_block1a25.data_interleave_offset_in_bits = 1;
defparam ram_block1a25.data_interleave_width_in_bits = 1;
defparam ram_block1a25.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a25.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a25.operation_mode = "dual_port";
defparam ram_block1a25.port_a_address_clear = "none";
defparam ram_block1a25.port_a_address_width = 14;
defparam ram_block1a25.port_a_data_out_clear = "none";
defparam ram_block1a25.port_a_data_out_clock = "none";
defparam ram_block1a25.port_a_data_width = 1;
defparam ram_block1a25.port_a_first_address = 49152;
defparam ram_block1a25.port_a_first_bit_number = 1;
defparam ram_block1a25.port_a_last_address = 65535;
defparam ram_block1a25.port_a_logical_ram_depth = 131072;
defparam ram_block1a25.port_a_logical_ram_width = 8;
defparam ram_block1a25.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a25.port_b_address_clear = "none";
defparam ram_block1a25.port_b_address_clock = "clock1";
defparam ram_block1a25.port_b_address_width = 14;
defparam ram_block1a25.port_b_data_out_clear = "none";
defparam ram_block1a25.port_b_data_out_clock = "clock1";
defparam ram_block1a25.port_b_data_width = 1;
defparam ram_block1a25.port_b_first_address = 49152;
defparam ram_block1a25.port_b_first_bit_number = 1;
defparam ram_block1a25.port_b_last_address = 65535;
defparam ram_block1a25.port_b_logical_ram_depth = 131072;
defparam ram_block1a25.port_b_logical_ram_width = 8;
defparam ram_block1a25.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a25.port_b_read_enable_clock = "clock1";
defparam ram_block1a25.ram_block_type = "auto";

twentynm_ram_block ram_block1a1(
	.portawe(\decode2|w_anode618w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode618w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[1]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a1_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a1.clk0_core_clock_enable = "ena0";
defparam ram_block1a1.clk1_output_clock_enable = "ena1";
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a1.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a1.operation_mode = "dual_port";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 14;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "none";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 16383;
defparam ram_block1a1.port_a_logical_ram_depth = 131072;
defparam ram_block1a1.port_a_logical_ram_width = 8;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a1.port_b_address_clear = "none";
defparam ram_block1a1.port_b_address_clock = "clock1";
defparam ram_block1a1.port_b_address_width = 14;
defparam ram_block1a1.port_b_data_out_clear = "none";
defparam ram_block1a1.port_b_data_out_clock = "clock1";
defparam ram_block1a1.port_b_data_width = 1;
defparam ram_block1a1.port_b_first_address = 0;
defparam ram_block1a1.port_b_first_bit_number = 1;
defparam ram_block1a1.port_b_last_address = 16383;
defparam ram_block1a1.port_b_logical_ram_depth = 131072;
defparam ram_block1a1.port_b_logical_ram_width = 8;
defparam ram_block1a1.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a1.port_b_read_enable_clock = "clock1";
defparam ram_block1a1.ram_block_type = "auto";

twentynm_ram_block ram_block1a9(
	.portawe(\decode2|w_anode635w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode635w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[1]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a9_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a9.clk0_core_clock_enable = "ena0";
defparam ram_block1a9.clk1_output_clock_enable = "ena1";
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a9.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a9.operation_mode = "dual_port";
defparam ram_block1a9.port_a_address_clear = "none";
defparam ram_block1a9.port_a_address_width = 14;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "none";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 16384;
defparam ram_block1a9.port_a_first_bit_number = 1;
defparam ram_block1a9.port_a_last_address = 32767;
defparam ram_block1a9.port_a_logical_ram_depth = 131072;
defparam ram_block1a9.port_a_logical_ram_width = 8;
defparam ram_block1a9.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a9.port_b_address_clear = "none";
defparam ram_block1a9.port_b_address_clock = "clock1";
defparam ram_block1a9.port_b_address_width = 14;
defparam ram_block1a9.port_b_data_out_clear = "none";
defparam ram_block1a9.port_b_data_out_clock = "clock1";
defparam ram_block1a9.port_b_data_width = 1;
defparam ram_block1a9.port_b_first_address = 16384;
defparam ram_block1a9.port_b_first_bit_number = 1;
defparam ram_block1a9.port_b_last_address = 32767;
defparam ram_block1a9.port_b_logical_ram_depth = 131072;
defparam ram_block1a9.port_b_logical_ram_width = 8;
defparam ram_block1a9.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a9.port_b_read_enable_clock = "clock1";
defparam ram_block1a9.ram_block_type = "auto";

twentynm_ram_block ram_block1a34(
	.portawe(\decode2|w_anode665w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode665w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[2]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a34_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a34.clk0_core_clock_enable = "ena0";
defparam ram_block1a34.clk1_output_clock_enable = "ena1";
defparam ram_block1a34.data_interleave_offset_in_bits = 1;
defparam ram_block1a34.data_interleave_width_in_bits = 1;
defparam ram_block1a34.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a34.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a34.operation_mode = "dual_port";
defparam ram_block1a34.port_a_address_clear = "none";
defparam ram_block1a34.port_a_address_width = 14;
defparam ram_block1a34.port_a_data_out_clear = "none";
defparam ram_block1a34.port_a_data_out_clock = "none";
defparam ram_block1a34.port_a_data_width = 1;
defparam ram_block1a34.port_a_first_address = 65536;
defparam ram_block1a34.port_a_first_bit_number = 2;
defparam ram_block1a34.port_a_last_address = 81919;
defparam ram_block1a34.port_a_logical_ram_depth = 131072;
defparam ram_block1a34.port_a_logical_ram_width = 8;
defparam ram_block1a34.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a34.port_b_address_clear = "none";
defparam ram_block1a34.port_b_address_clock = "clock1";
defparam ram_block1a34.port_b_address_width = 14;
defparam ram_block1a34.port_b_data_out_clear = "none";
defparam ram_block1a34.port_b_data_out_clock = "clock1";
defparam ram_block1a34.port_b_data_width = 1;
defparam ram_block1a34.port_b_first_address = 65536;
defparam ram_block1a34.port_b_first_bit_number = 2;
defparam ram_block1a34.port_b_last_address = 81919;
defparam ram_block1a34.port_b_logical_ram_depth = 131072;
defparam ram_block1a34.port_b_logical_ram_width = 8;
defparam ram_block1a34.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a34.port_b_read_enable_clock = "clock1";
defparam ram_block1a34.ram_block_type = "auto";

twentynm_ram_block ram_block1a42(
	.portawe(\decode2|w_anode675w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode675w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[2]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a42_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a42.clk0_core_clock_enable = "ena0";
defparam ram_block1a42.clk1_output_clock_enable = "ena1";
defparam ram_block1a42.data_interleave_offset_in_bits = 1;
defparam ram_block1a42.data_interleave_width_in_bits = 1;
defparam ram_block1a42.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a42.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a42.operation_mode = "dual_port";
defparam ram_block1a42.port_a_address_clear = "none";
defparam ram_block1a42.port_a_address_width = 14;
defparam ram_block1a42.port_a_data_out_clear = "none";
defparam ram_block1a42.port_a_data_out_clock = "none";
defparam ram_block1a42.port_a_data_width = 1;
defparam ram_block1a42.port_a_first_address = 81920;
defparam ram_block1a42.port_a_first_bit_number = 2;
defparam ram_block1a42.port_a_last_address = 98303;
defparam ram_block1a42.port_a_logical_ram_depth = 131072;
defparam ram_block1a42.port_a_logical_ram_width = 8;
defparam ram_block1a42.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a42.port_b_address_clear = "none";
defparam ram_block1a42.port_b_address_clock = "clock1";
defparam ram_block1a42.port_b_address_width = 14;
defparam ram_block1a42.port_b_data_out_clear = "none";
defparam ram_block1a42.port_b_data_out_clock = "clock1";
defparam ram_block1a42.port_b_data_width = 1;
defparam ram_block1a42.port_b_first_address = 81920;
defparam ram_block1a42.port_b_first_bit_number = 2;
defparam ram_block1a42.port_b_last_address = 98303;
defparam ram_block1a42.port_b_logical_ram_depth = 131072;
defparam ram_block1a42.port_b_logical_ram_width = 8;
defparam ram_block1a42.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a42.port_b_read_enable_clock = "clock1";
defparam ram_block1a42.ram_block_type = "auto";

twentynm_ram_block ram_block1a50(
	.portawe(\decode2|w_anode685w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode685w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[2]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a50_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a50.clk0_core_clock_enable = "ena0";
defparam ram_block1a50.clk1_output_clock_enable = "ena1";
defparam ram_block1a50.data_interleave_offset_in_bits = 1;
defparam ram_block1a50.data_interleave_width_in_bits = 1;
defparam ram_block1a50.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a50.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a50.operation_mode = "dual_port";
defparam ram_block1a50.port_a_address_clear = "none";
defparam ram_block1a50.port_a_address_width = 14;
defparam ram_block1a50.port_a_data_out_clear = "none";
defparam ram_block1a50.port_a_data_out_clock = "none";
defparam ram_block1a50.port_a_data_width = 1;
defparam ram_block1a50.port_a_first_address = 98304;
defparam ram_block1a50.port_a_first_bit_number = 2;
defparam ram_block1a50.port_a_last_address = 114687;
defparam ram_block1a50.port_a_logical_ram_depth = 131072;
defparam ram_block1a50.port_a_logical_ram_width = 8;
defparam ram_block1a50.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a50.port_b_address_clear = "none";
defparam ram_block1a50.port_b_address_clock = "clock1";
defparam ram_block1a50.port_b_address_width = 14;
defparam ram_block1a50.port_b_data_out_clear = "none";
defparam ram_block1a50.port_b_data_out_clock = "clock1";
defparam ram_block1a50.port_b_data_width = 1;
defparam ram_block1a50.port_b_first_address = 98304;
defparam ram_block1a50.port_b_first_bit_number = 2;
defparam ram_block1a50.port_b_last_address = 114687;
defparam ram_block1a50.port_b_logical_ram_depth = 131072;
defparam ram_block1a50.port_b_logical_ram_width = 8;
defparam ram_block1a50.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a50.port_b_read_enable_clock = "clock1";
defparam ram_block1a50.ram_block_type = "auto";

twentynm_ram_block ram_block1a58(
	.portawe(\decode2|w_anode695w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode695w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[2]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a58_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a58.clk0_core_clock_enable = "ena0";
defparam ram_block1a58.clk1_output_clock_enable = "ena1";
defparam ram_block1a58.data_interleave_offset_in_bits = 1;
defparam ram_block1a58.data_interleave_width_in_bits = 1;
defparam ram_block1a58.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a58.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a58.operation_mode = "dual_port";
defparam ram_block1a58.port_a_address_clear = "none";
defparam ram_block1a58.port_a_address_width = 14;
defparam ram_block1a58.port_a_data_out_clear = "none";
defparam ram_block1a58.port_a_data_out_clock = "none";
defparam ram_block1a58.port_a_data_width = 1;
defparam ram_block1a58.port_a_first_address = 114688;
defparam ram_block1a58.port_a_first_bit_number = 2;
defparam ram_block1a58.port_a_last_address = 131071;
defparam ram_block1a58.port_a_logical_ram_depth = 131072;
defparam ram_block1a58.port_a_logical_ram_width = 8;
defparam ram_block1a58.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a58.port_b_address_clear = "none";
defparam ram_block1a58.port_b_address_clock = "clock1";
defparam ram_block1a58.port_b_address_width = 14;
defparam ram_block1a58.port_b_data_out_clear = "none";
defparam ram_block1a58.port_b_data_out_clock = "clock1";
defparam ram_block1a58.port_b_data_width = 1;
defparam ram_block1a58.port_b_first_address = 114688;
defparam ram_block1a58.port_b_first_bit_number = 2;
defparam ram_block1a58.port_b_last_address = 131071;
defparam ram_block1a58.port_b_logical_ram_depth = 131072;
defparam ram_block1a58.port_b_logical_ram_width = 8;
defparam ram_block1a58.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a58.port_b_read_enable_clock = "clock1";
defparam ram_block1a58.ram_block_type = "auto";

twentynm_ram_block ram_block1a18(
	.portawe(\decode2|w_anode645w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode645w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[2]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a18_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a18.clk0_core_clock_enable = "ena0";
defparam ram_block1a18.clk1_output_clock_enable = "ena1";
defparam ram_block1a18.data_interleave_offset_in_bits = 1;
defparam ram_block1a18.data_interleave_width_in_bits = 1;
defparam ram_block1a18.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a18.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a18.operation_mode = "dual_port";
defparam ram_block1a18.port_a_address_clear = "none";
defparam ram_block1a18.port_a_address_width = 14;
defparam ram_block1a18.port_a_data_out_clear = "none";
defparam ram_block1a18.port_a_data_out_clock = "none";
defparam ram_block1a18.port_a_data_width = 1;
defparam ram_block1a18.port_a_first_address = 32768;
defparam ram_block1a18.port_a_first_bit_number = 2;
defparam ram_block1a18.port_a_last_address = 49151;
defparam ram_block1a18.port_a_logical_ram_depth = 131072;
defparam ram_block1a18.port_a_logical_ram_width = 8;
defparam ram_block1a18.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a18.port_b_address_clear = "none";
defparam ram_block1a18.port_b_address_clock = "clock1";
defparam ram_block1a18.port_b_address_width = 14;
defparam ram_block1a18.port_b_data_out_clear = "none";
defparam ram_block1a18.port_b_data_out_clock = "clock1";
defparam ram_block1a18.port_b_data_width = 1;
defparam ram_block1a18.port_b_first_address = 32768;
defparam ram_block1a18.port_b_first_bit_number = 2;
defparam ram_block1a18.port_b_last_address = 49151;
defparam ram_block1a18.port_b_logical_ram_depth = 131072;
defparam ram_block1a18.port_b_logical_ram_width = 8;
defparam ram_block1a18.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a18.port_b_read_enable_clock = "clock1";
defparam ram_block1a18.ram_block_type = "auto";

twentynm_ram_block ram_block1a26(
	.portawe(\decode2|w_anode655w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode655w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[2]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a26_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a26.clk0_core_clock_enable = "ena0";
defparam ram_block1a26.clk1_output_clock_enable = "ena1";
defparam ram_block1a26.data_interleave_offset_in_bits = 1;
defparam ram_block1a26.data_interleave_width_in_bits = 1;
defparam ram_block1a26.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a26.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a26.operation_mode = "dual_port";
defparam ram_block1a26.port_a_address_clear = "none";
defparam ram_block1a26.port_a_address_width = 14;
defparam ram_block1a26.port_a_data_out_clear = "none";
defparam ram_block1a26.port_a_data_out_clock = "none";
defparam ram_block1a26.port_a_data_width = 1;
defparam ram_block1a26.port_a_first_address = 49152;
defparam ram_block1a26.port_a_first_bit_number = 2;
defparam ram_block1a26.port_a_last_address = 65535;
defparam ram_block1a26.port_a_logical_ram_depth = 131072;
defparam ram_block1a26.port_a_logical_ram_width = 8;
defparam ram_block1a26.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a26.port_b_address_clear = "none";
defparam ram_block1a26.port_b_address_clock = "clock1";
defparam ram_block1a26.port_b_address_width = 14;
defparam ram_block1a26.port_b_data_out_clear = "none";
defparam ram_block1a26.port_b_data_out_clock = "clock1";
defparam ram_block1a26.port_b_data_width = 1;
defparam ram_block1a26.port_b_first_address = 49152;
defparam ram_block1a26.port_b_first_bit_number = 2;
defparam ram_block1a26.port_b_last_address = 65535;
defparam ram_block1a26.port_b_logical_ram_depth = 131072;
defparam ram_block1a26.port_b_logical_ram_width = 8;
defparam ram_block1a26.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a26.port_b_read_enable_clock = "clock1";
defparam ram_block1a26.ram_block_type = "auto";

twentynm_ram_block ram_block1a2(
	.portawe(\decode2|w_anode618w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode618w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[2]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a2_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a2.clk0_core_clock_enable = "ena0";
defparam ram_block1a2.clk1_output_clock_enable = "ena1";
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a2.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a2.operation_mode = "dual_port";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 14;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "none";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 16383;
defparam ram_block1a2.port_a_logical_ram_depth = 131072;
defparam ram_block1a2.port_a_logical_ram_width = 8;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a2.port_b_address_clear = "none";
defparam ram_block1a2.port_b_address_clock = "clock1";
defparam ram_block1a2.port_b_address_width = 14;
defparam ram_block1a2.port_b_data_out_clear = "none";
defparam ram_block1a2.port_b_data_out_clock = "clock1";
defparam ram_block1a2.port_b_data_width = 1;
defparam ram_block1a2.port_b_first_address = 0;
defparam ram_block1a2.port_b_first_bit_number = 2;
defparam ram_block1a2.port_b_last_address = 16383;
defparam ram_block1a2.port_b_logical_ram_depth = 131072;
defparam ram_block1a2.port_b_logical_ram_width = 8;
defparam ram_block1a2.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a2.port_b_read_enable_clock = "clock1";
defparam ram_block1a2.ram_block_type = "auto";

twentynm_ram_block ram_block1a10(
	.portawe(\decode2|w_anode635w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode635w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[2]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a10_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a10.clk0_core_clock_enable = "ena0";
defparam ram_block1a10.clk1_output_clock_enable = "ena1";
defparam ram_block1a10.data_interleave_offset_in_bits = 1;
defparam ram_block1a10.data_interleave_width_in_bits = 1;
defparam ram_block1a10.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a10.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a10.operation_mode = "dual_port";
defparam ram_block1a10.port_a_address_clear = "none";
defparam ram_block1a10.port_a_address_width = 14;
defparam ram_block1a10.port_a_data_out_clear = "none";
defparam ram_block1a10.port_a_data_out_clock = "none";
defparam ram_block1a10.port_a_data_width = 1;
defparam ram_block1a10.port_a_first_address = 16384;
defparam ram_block1a10.port_a_first_bit_number = 2;
defparam ram_block1a10.port_a_last_address = 32767;
defparam ram_block1a10.port_a_logical_ram_depth = 131072;
defparam ram_block1a10.port_a_logical_ram_width = 8;
defparam ram_block1a10.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a10.port_b_address_clear = "none";
defparam ram_block1a10.port_b_address_clock = "clock1";
defparam ram_block1a10.port_b_address_width = 14;
defparam ram_block1a10.port_b_data_out_clear = "none";
defparam ram_block1a10.port_b_data_out_clock = "clock1";
defparam ram_block1a10.port_b_data_width = 1;
defparam ram_block1a10.port_b_first_address = 16384;
defparam ram_block1a10.port_b_first_bit_number = 2;
defparam ram_block1a10.port_b_last_address = 32767;
defparam ram_block1a10.port_b_logical_ram_depth = 131072;
defparam ram_block1a10.port_b_logical_ram_width = 8;
defparam ram_block1a10.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a10.port_b_read_enable_clock = "clock1";
defparam ram_block1a10.ram_block_type = "auto";

twentynm_ram_block ram_block1a35(
	.portawe(\decode2|w_anode665w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode665w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[3]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a35_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a35.clk0_core_clock_enable = "ena0";
defparam ram_block1a35.clk1_output_clock_enable = "ena1";
defparam ram_block1a35.data_interleave_offset_in_bits = 1;
defparam ram_block1a35.data_interleave_width_in_bits = 1;
defparam ram_block1a35.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a35.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a35.operation_mode = "dual_port";
defparam ram_block1a35.port_a_address_clear = "none";
defparam ram_block1a35.port_a_address_width = 14;
defparam ram_block1a35.port_a_data_out_clear = "none";
defparam ram_block1a35.port_a_data_out_clock = "none";
defparam ram_block1a35.port_a_data_width = 1;
defparam ram_block1a35.port_a_first_address = 65536;
defparam ram_block1a35.port_a_first_bit_number = 3;
defparam ram_block1a35.port_a_last_address = 81919;
defparam ram_block1a35.port_a_logical_ram_depth = 131072;
defparam ram_block1a35.port_a_logical_ram_width = 8;
defparam ram_block1a35.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a35.port_b_address_clear = "none";
defparam ram_block1a35.port_b_address_clock = "clock1";
defparam ram_block1a35.port_b_address_width = 14;
defparam ram_block1a35.port_b_data_out_clear = "none";
defparam ram_block1a35.port_b_data_out_clock = "clock1";
defparam ram_block1a35.port_b_data_width = 1;
defparam ram_block1a35.port_b_first_address = 65536;
defparam ram_block1a35.port_b_first_bit_number = 3;
defparam ram_block1a35.port_b_last_address = 81919;
defparam ram_block1a35.port_b_logical_ram_depth = 131072;
defparam ram_block1a35.port_b_logical_ram_width = 8;
defparam ram_block1a35.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a35.port_b_read_enable_clock = "clock1";
defparam ram_block1a35.ram_block_type = "auto";

twentynm_ram_block ram_block1a43(
	.portawe(\decode2|w_anode675w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode675w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[3]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a43_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a43.clk0_core_clock_enable = "ena0";
defparam ram_block1a43.clk1_output_clock_enable = "ena1";
defparam ram_block1a43.data_interleave_offset_in_bits = 1;
defparam ram_block1a43.data_interleave_width_in_bits = 1;
defparam ram_block1a43.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a43.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a43.operation_mode = "dual_port";
defparam ram_block1a43.port_a_address_clear = "none";
defparam ram_block1a43.port_a_address_width = 14;
defparam ram_block1a43.port_a_data_out_clear = "none";
defparam ram_block1a43.port_a_data_out_clock = "none";
defparam ram_block1a43.port_a_data_width = 1;
defparam ram_block1a43.port_a_first_address = 81920;
defparam ram_block1a43.port_a_first_bit_number = 3;
defparam ram_block1a43.port_a_last_address = 98303;
defparam ram_block1a43.port_a_logical_ram_depth = 131072;
defparam ram_block1a43.port_a_logical_ram_width = 8;
defparam ram_block1a43.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a43.port_b_address_clear = "none";
defparam ram_block1a43.port_b_address_clock = "clock1";
defparam ram_block1a43.port_b_address_width = 14;
defparam ram_block1a43.port_b_data_out_clear = "none";
defparam ram_block1a43.port_b_data_out_clock = "clock1";
defparam ram_block1a43.port_b_data_width = 1;
defparam ram_block1a43.port_b_first_address = 81920;
defparam ram_block1a43.port_b_first_bit_number = 3;
defparam ram_block1a43.port_b_last_address = 98303;
defparam ram_block1a43.port_b_logical_ram_depth = 131072;
defparam ram_block1a43.port_b_logical_ram_width = 8;
defparam ram_block1a43.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a43.port_b_read_enable_clock = "clock1";
defparam ram_block1a43.ram_block_type = "auto";

twentynm_ram_block ram_block1a51(
	.portawe(\decode2|w_anode685w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode685w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[3]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a51_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a51.clk0_core_clock_enable = "ena0";
defparam ram_block1a51.clk1_output_clock_enable = "ena1";
defparam ram_block1a51.data_interleave_offset_in_bits = 1;
defparam ram_block1a51.data_interleave_width_in_bits = 1;
defparam ram_block1a51.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a51.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a51.operation_mode = "dual_port";
defparam ram_block1a51.port_a_address_clear = "none";
defparam ram_block1a51.port_a_address_width = 14;
defparam ram_block1a51.port_a_data_out_clear = "none";
defparam ram_block1a51.port_a_data_out_clock = "none";
defparam ram_block1a51.port_a_data_width = 1;
defparam ram_block1a51.port_a_first_address = 98304;
defparam ram_block1a51.port_a_first_bit_number = 3;
defparam ram_block1a51.port_a_last_address = 114687;
defparam ram_block1a51.port_a_logical_ram_depth = 131072;
defparam ram_block1a51.port_a_logical_ram_width = 8;
defparam ram_block1a51.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a51.port_b_address_clear = "none";
defparam ram_block1a51.port_b_address_clock = "clock1";
defparam ram_block1a51.port_b_address_width = 14;
defparam ram_block1a51.port_b_data_out_clear = "none";
defparam ram_block1a51.port_b_data_out_clock = "clock1";
defparam ram_block1a51.port_b_data_width = 1;
defparam ram_block1a51.port_b_first_address = 98304;
defparam ram_block1a51.port_b_first_bit_number = 3;
defparam ram_block1a51.port_b_last_address = 114687;
defparam ram_block1a51.port_b_logical_ram_depth = 131072;
defparam ram_block1a51.port_b_logical_ram_width = 8;
defparam ram_block1a51.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a51.port_b_read_enable_clock = "clock1";
defparam ram_block1a51.ram_block_type = "auto";

twentynm_ram_block ram_block1a59(
	.portawe(\decode2|w_anode695w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode695w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[3]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a59_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a59.clk0_core_clock_enable = "ena0";
defparam ram_block1a59.clk1_output_clock_enable = "ena1";
defparam ram_block1a59.data_interleave_offset_in_bits = 1;
defparam ram_block1a59.data_interleave_width_in_bits = 1;
defparam ram_block1a59.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a59.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a59.operation_mode = "dual_port";
defparam ram_block1a59.port_a_address_clear = "none";
defparam ram_block1a59.port_a_address_width = 14;
defparam ram_block1a59.port_a_data_out_clear = "none";
defparam ram_block1a59.port_a_data_out_clock = "none";
defparam ram_block1a59.port_a_data_width = 1;
defparam ram_block1a59.port_a_first_address = 114688;
defparam ram_block1a59.port_a_first_bit_number = 3;
defparam ram_block1a59.port_a_last_address = 131071;
defparam ram_block1a59.port_a_logical_ram_depth = 131072;
defparam ram_block1a59.port_a_logical_ram_width = 8;
defparam ram_block1a59.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a59.port_b_address_clear = "none";
defparam ram_block1a59.port_b_address_clock = "clock1";
defparam ram_block1a59.port_b_address_width = 14;
defparam ram_block1a59.port_b_data_out_clear = "none";
defparam ram_block1a59.port_b_data_out_clock = "clock1";
defparam ram_block1a59.port_b_data_width = 1;
defparam ram_block1a59.port_b_first_address = 114688;
defparam ram_block1a59.port_b_first_bit_number = 3;
defparam ram_block1a59.port_b_last_address = 131071;
defparam ram_block1a59.port_b_logical_ram_depth = 131072;
defparam ram_block1a59.port_b_logical_ram_width = 8;
defparam ram_block1a59.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a59.port_b_read_enable_clock = "clock1";
defparam ram_block1a59.ram_block_type = "auto";

twentynm_ram_block ram_block1a19(
	.portawe(\decode2|w_anode645w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode645w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[3]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a19_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a19.clk0_core_clock_enable = "ena0";
defparam ram_block1a19.clk1_output_clock_enable = "ena1";
defparam ram_block1a19.data_interleave_offset_in_bits = 1;
defparam ram_block1a19.data_interleave_width_in_bits = 1;
defparam ram_block1a19.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a19.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a19.operation_mode = "dual_port";
defparam ram_block1a19.port_a_address_clear = "none";
defparam ram_block1a19.port_a_address_width = 14;
defparam ram_block1a19.port_a_data_out_clear = "none";
defparam ram_block1a19.port_a_data_out_clock = "none";
defparam ram_block1a19.port_a_data_width = 1;
defparam ram_block1a19.port_a_first_address = 32768;
defparam ram_block1a19.port_a_first_bit_number = 3;
defparam ram_block1a19.port_a_last_address = 49151;
defparam ram_block1a19.port_a_logical_ram_depth = 131072;
defparam ram_block1a19.port_a_logical_ram_width = 8;
defparam ram_block1a19.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a19.port_b_address_clear = "none";
defparam ram_block1a19.port_b_address_clock = "clock1";
defparam ram_block1a19.port_b_address_width = 14;
defparam ram_block1a19.port_b_data_out_clear = "none";
defparam ram_block1a19.port_b_data_out_clock = "clock1";
defparam ram_block1a19.port_b_data_width = 1;
defparam ram_block1a19.port_b_first_address = 32768;
defparam ram_block1a19.port_b_first_bit_number = 3;
defparam ram_block1a19.port_b_last_address = 49151;
defparam ram_block1a19.port_b_logical_ram_depth = 131072;
defparam ram_block1a19.port_b_logical_ram_width = 8;
defparam ram_block1a19.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a19.port_b_read_enable_clock = "clock1";
defparam ram_block1a19.ram_block_type = "auto";

twentynm_ram_block ram_block1a27(
	.portawe(\decode2|w_anode655w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode655w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[3]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a27_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a27.clk0_core_clock_enable = "ena0";
defparam ram_block1a27.clk1_output_clock_enable = "ena1";
defparam ram_block1a27.data_interleave_offset_in_bits = 1;
defparam ram_block1a27.data_interleave_width_in_bits = 1;
defparam ram_block1a27.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a27.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a27.operation_mode = "dual_port";
defparam ram_block1a27.port_a_address_clear = "none";
defparam ram_block1a27.port_a_address_width = 14;
defparam ram_block1a27.port_a_data_out_clear = "none";
defparam ram_block1a27.port_a_data_out_clock = "none";
defparam ram_block1a27.port_a_data_width = 1;
defparam ram_block1a27.port_a_first_address = 49152;
defparam ram_block1a27.port_a_first_bit_number = 3;
defparam ram_block1a27.port_a_last_address = 65535;
defparam ram_block1a27.port_a_logical_ram_depth = 131072;
defparam ram_block1a27.port_a_logical_ram_width = 8;
defparam ram_block1a27.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a27.port_b_address_clear = "none";
defparam ram_block1a27.port_b_address_clock = "clock1";
defparam ram_block1a27.port_b_address_width = 14;
defparam ram_block1a27.port_b_data_out_clear = "none";
defparam ram_block1a27.port_b_data_out_clock = "clock1";
defparam ram_block1a27.port_b_data_width = 1;
defparam ram_block1a27.port_b_first_address = 49152;
defparam ram_block1a27.port_b_first_bit_number = 3;
defparam ram_block1a27.port_b_last_address = 65535;
defparam ram_block1a27.port_b_logical_ram_depth = 131072;
defparam ram_block1a27.port_b_logical_ram_width = 8;
defparam ram_block1a27.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a27.port_b_read_enable_clock = "clock1";
defparam ram_block1a27.ram_block_type = "auto";

twentynm_ram_block ram_block1a3(
	.portawe(\decode2|w_anode618w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode618w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[3]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a3_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a3.clk0_core_clock_enable = "ena0";
defparam ram_block1a3.clk1_output_clock_enable = "ena1";
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a3.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a3.operation_mode = "dual_port";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 14;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "none";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 16383;
defparam ram_block1a3.port_a_logical_ram_depth = 131072;
defparam ram_block1a3.port_a_logical_ram_width = 8;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a3.port_b_address_clear = "none";
defparam ram_block1a3.port_b_address_clock = "clock1";
defparam ram_block1a3.port_b_address_width = 14;
defparam ram_block1a3.port_b_data_out_clear = "none";
defparam ram_block1a3.port_b_data_out_clock = "clock1";
defparam ram_block1a3.port_b_data_width = 1;
defparam ram_block1a3.port_b_first_address = 0;
defparam ram_block1a3.port_b_first_bit_number = 3;
defparam ram_block1a3.port_b_last_address = 16383;
defparam ram_block1a3.port_b_logical_ram_depth = 131072;
defparam ram_block1a3.port_b_logical_ram_width = 8;
defparam ram_block1a3.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a3.port_b_read_enable_clock = "clock1";
defparam ram_block1a3.ram_block_type = "auto";

twentynm_ram_block ram_block1a11(
	.portawe(\decode2|w_anode635w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode635w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[3]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a11_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a11.clk0_core_clock_enable = "ena0";
defparam ram_block1a11.clk1_output_clock_enable = "ena1";
defparam ram_block1a11.data_interleave_offset_in_bits = 1;
defparam ram_block1a11.data_interleave_width_in_bits = 1;
defparam ram_block1a11.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a11.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a11.operation_mode = "dual_port";
defparam ram_block1a11.port_a_address_clear = "none";
defparam ram_block1a11.port_a_address_width = 14;
defparam ram_block1a11.port_a_data_out_clear = "none";
defparam ram_block1a11.port_a_data_out_clock = "none";
defparam ram_block1a11.port_a_data_width = 1;
defparam ram_block1a11.port_a_first_address = 16384;
defparam ram_block1a11.port_a_first_bit_number = 3;
defparam ram_block1a11.port_a_last_address = 32767;
defparam ram_block1a11.port_a_logical_ram_depth = 131072;
defparam ram_block1a11.port_a_logical_ram_width = 8;
defparam ram_block1a11.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a11.port_b_address_clear = "none";
defparam ram_block1a11.port_b_address_clock = "clock1";
defparam ram_block1a11.port_b_address_width = 14;
defparam ram_block1a11.port_b_data_out_clear = "none";
defparam ram_block1a11.port_b_data_out_clock = "clock1";
defparam ram_block1a11.port_b_data_width = 1;
defparam ram_block1a11.port_b_first_address = 16384;
defparam ram_block1a11.port_b_first_bit_number = 3;
defparam ram_block1a11.port_b_last_address = 32767;
defparam ram_block1a11.port_b_logical_ram_depth = 131072;
defparam ram_block1a11.port_b_logical_ram_width = 8;
defparam ram_block1a11.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a11.port_b_read_enable_clock = "clock1";
defparam ram_block1a11.ram_block_type = "auto";

twentynm_ram_block ram_block1a36(
	.portawe(\decode2|w_anode665w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode665w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[4]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a36_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a36.clk0_core_clock_enable = "ena0";
defparam ram_block1a36.clk1_output_clock_enable = "ena1";
defparam ram_block1a36.data_interleave_offset_in_bits = 1;
defparam ram_block1a36.data_interleave_width_in_bits = 1;
defparam ram_block1a36.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a36.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a36.operation_mode = "dual_port";
defparam ram_block1a36.port_a_address_clear = "none";
defparam ram_block1a36.port_a_address_width = 14;
defparam ram_block1a36.port_a_data_out_clear = "none";
defparam ram_block1a36.port_a_data_out_clock = "none";
defparam ram_block1a36.port_a_data_width = 1;
defparam ram_block1a36.port_a_first_address = 65536;
defparam ram_block1a36.port_a_first_bit_number = 4;
defparam ram_block1a36.port_a_last_address = 81919;
defparam ram_block1a36.port_a_logical_ram_depth = 131072;
defparam ram_block1a36.port_a_logical_ram_width = 8;
defparam ram_block1a36.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a36.port_b_address_clear = "none";
defparam ram_block1a36.port_b_address_clock = "clock1";
defparam ram_block1a36.port_b_address_width = 14;
defparam ram_block1a36.port_b_data_out_clear = "none";
defparam ram_block1a36.port_b_data_out_clock = "clock1";
defparam ram_block1a36.port_b_data_width = 1;
defparam ram_block1a36.port_b_first_address = 65536;
defparam ram_block1a36.port_b_first_bit_number = 4;
defparam ram_block1a36.port_b_last_address = 81919;
defparam ram_block1a36.port_b_logical_ram_depth = 131072;
defparam ram_block1a36.port_b_logical_ram_width = 8;
defparam ram_block1a36.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a36.port_b_read_enable_clock = "clock1";
defparam ram_block1a36.ram_block_type = "auto";

twentynm_ram_block ram_block1a44(
	.portawe(\decode2|w_anode675w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode675w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[4]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a44_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a44.clk0_core_clock_enable = "ena0";
defparam ram_block1a44.clk1_output_clock_enable = "ena1";
defparam ram_block1a44.data_interleave_offset_in_bits = 1;
defparam ram_block1a44.data_interleave_width_in_bits = 1;
defparam ram_block1a44.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a44.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a44.operation_mode = "dual_port";
defparam ram_block1a44.port_a_address_clear = "none";
defparam ram_block1a44.port_a_address_width = 14;
defparam ram_block1a44.port_a_data_out_clear = "none";
defparam ram_block1a44.port_a_data_out_clock = "none";
defparam ram_block1a44.port_a_data_width = 1;
defparam ram_block1a44.port_a_first_address = 81920;
defparam ram_block1a44.port_a_first_bit_number = 4;
defparam ram_block1a44.port_a_last_address = 98303;
defparam ram_block1a44.port_a_logical_ram_depth = 131072;
defparam ram_block1a44.port_a_logical_ram_width = 8;
defparam ram_block1a44.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a44.port_b_address_clear = "none";
defparam ram_block1a44.port_b_address_clock = "clock1";
defparam ram_block1a44.port_b_address_width = 14;
defparam ram_block1a44.port_b_data_out_clear = "none";
defparam ram_block1a44.port_b_data_out_clock = "clock1";
defparam ram_block1a44.port_b_data_width = 1;
defparam ram_block1a44.port_b_first_address = 81920;
defparam ram_block1a44.port_b_first_bit_number = 4;
defparam ram_block1a44.port_b_last_address = 98303;
defparam ram_block1a44.port_b_logical_ram_depth = 131072;
defparam ram_block1a44.port_b_logical_ram_width = 8;
defparam ram_block1a44.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a44.port_b_read_enable_clock = "clock1";
defparam ram_block1a44.ram_block_type = "auto";

twentynm_ram_block ram_block1a52(
	.portawe(\decode2|w_anode685w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode685w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[4]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a52_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a52.clk0_core_clock_enable = "ena0";
defparam ram_block1a52.clk1_output_clock_enable = "ena1";
defparam ram_block1a52.data_interleave_offset_in_bits = 1;
defparam ram_block1a52.data_interleave_width_in_bits = 1;
defparam ram_block1a52.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a52.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a52.operation_mode = "dual_port";
defparam ram_block1a52.port_a_address_clear = "none";
defparam ram_block1a52.port_a_address_width = 14;
defparam ram_block1a52.port_a_data_out_clear = "none";
defparam ram_block1a52.port_a_data_out_clock = "none";
defparam ram_block1a52.port_a_data_width = 1;
defparam ram_block1a52.port_a_first_address = 98304;
defparam ram_block1a52.port_a_first_bit_number = 4;
defparam ram_block1a52.port_a_last_address = 114687;
defparam ram_block1a52.port_a_logical_ram_depth = 131072;
defparam ram_block1a52.port_a_logical_ram_width = 8;
defparam ram_block1a52.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a52.port_b_address_clear = "none";
defparam ram_block1a52.port_b_address_clock = "clock1";
defparam ram_block1a52.port_b_address_width = 14;
defparam ram_block1a52.port_b_data_out_clear = "none";
defparam ram_block1a52.port_b_data_out_clock = "clock1";
defparam ram_block1a52.port_b_data_width = 1;
defparam ram_block1a52.port_b_first_address = 98304;
defparam ram_block1a52.port_b_first_bit_number = 4;
defparam ram_block1a52.port_b_last_address = 114687;
defparam ram_block1a52.port_b_logical_ram_depth = 131072;
defparam ram_block1a52.port_b_logical_ram_width = 8;
defparam ram_block1a52.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a52.port_b_read_enable_clock = "clock1";
defparam ram_block1a52.ram_block_type = "auto";

twentynm_ram_block ram_block1a60(
	.portawe(\decode2|w_anode695w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode695w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[4]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a60_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a60.clk0_core_clock_enable = "ena0";
defparam ram_block1a60.clk1_output_clock_enable = "ena1";
defparam ram_block1a60.data_interleave_offset_in_bits = 1;
defparam ram_block1a60.data_interleave_width_in_bits = 1;
defparam ram_block1a60.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a60.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a60.operation_mode = "dual_port";
defparam ram_block1a60.port_a_address_clear = "none";
defparam ram_block1a60.port_a_address_width = 14;
defparam ram_block1a60.port_a_data_out_clear = "none";
defparam ram_block1a60.port_a_data_out_clock = "none";
defparam ram_block1a60.port_a_data_width = 1;
defparam ram_block1a60.port_a_first_address = 114688;
defparam ram_block1a60.port_a_first_bit_number = 4;
defparam ram_block1a60.port_a_last_address = 131071;
defparam ram_block1a60.port_a_logical_ram_depth = 131072;
defparam ram_block1a60.port_a_logical_ram_width = 8;
defparam ram_block1a60.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a60.port_b_address_clear = "none";
defparam ram_block1a60.port_b_address_clock = "clock1";
defparam ram_block1a60.port_b_address_width = 14;
defparam ram_block1a60.port_b_data_out_clear = "none";
defparam ram_block1a60.port_b_data_out_clock = "clock1";
defparam ram_block1a60.port_b_data_width = 1;
defparam ram_block1a60.port_b_first_address = 114688;
defparam ram_block1a60.port_b_first_bit_number = 4;
defparam ram_block1a60.port_b_last_address = 131071;
defparam ram_block1a60.port_b_logical_ram_depth = 131072;
defparam ram_block1a60.port_b_logical_ram_width = 8;
defparam ram_block1a60.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a60.port_b_read_enable_clock = "clock1";
defparam ram_block1a60.ram_block_type = "auto";

twentynm_ram_block ram_block1a20(
	.portawe(\decode2|w_anode645w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode645w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[4]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a20_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a20.clk0_core_clock_enable = "ena0";
defparam ram_block1a20.clk1_output_clock_enable = "ena1";
defparam ram_block1a20.data_interleave_offset_in_bits = 1;
defparam ram_block1a20.data_interleave_width_in_bits = 1;
defparam ram_block1a20.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a20.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a20.operation_mode = "dual_port";
defparam ram_block1a20.port_a_address_clear = "none";
defparam ram_block1a20.port_a_address_width = 14;
defparam ram_block1a20.port_a_data_out_clear = "none";
defparam ram_block1a20.port_a_data_out_clock = "none";
defparam ram_block1a20.port_a_data_width = 1;
defparam ram_block1a20.port_a_first_address = 32768;
defparam ram_block1a20.port_a_first_bit_number = 4;
defparam ram_block1a20.port_a_last_address = 49151;
defparam ram_block1a20.port_a_logical_ram_depth = 131072;
defparam ram_block1a20.port_a_logical_ram_width = 8;
defparam ram_block1a20.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a20.port_b_address_clear = "none";
defparam ram_block1a20.port_b_address_clock = "clock1";
defparam ram_block1a20.port_b_address_width = 14;
defparam ram_block1a20.port_b_data_out_clear = "none";
defparam ram_block1a20.port_b_data_out_clock = "clock1";
defparam ram_block1a20.port_b_data_width = 1;
defparam ram_block1a20.port_b_first_address = 32768;
defparam ram_block1a20.port_b_first_bit_number = 4;
defparam ram_block1a20.port_b_last_address = 49151;
defparam ram_block1a20.port_b_logical_ram_depth = 131072;
defparam ram_block1a20.port_b_logical_ram_width = 8;
defparam ram_block1a20.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a20.port_b_read_enable_clock = "clock1";
defparam ram_block1a20.ram_block_type = "auto";

twentynm_ram_block ram_block1a28(
	.portawe(\decode2|w_anode655w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode655w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[4]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a28_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a28.clk0_core_clock_enable = "ena0";
defparam ram_block1a28.clk1_output_clock_enable = "ena1";
defparam ram_block1a28.data_interleave_offset_in_bits = 1;
defparam ram_block1a28.data_interleave_width_in_bits = 1;
defparam ram_block1a28.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a28.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a28.operation_mode = "dual_port";
defparam ram_block1a28.port_a_address_clear = "none";
defparam ram_block1a28.port_a_address_width = 14;
defparam ram_block1a28.port_a_data_out_clear = "none";
defparam ram_block1a28.port_a_data_out_clock = "none";
defparam ram_block1a28.port_a_data_width = 1;
defparam ram_block1a28.port_a_first_address = 49152;
defparam ram_block1a28.port_a_first_bit_number = 4;
defparam ram_block1a28.port_a_last_address = 65535;
defparam ram_block1a28.port_a_logical_ram_depth = 131072;
defparam ram_block1a28.port_a_logical_ram_width = 8;
defparam ram_block1a28.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a28.port_b_address_clear = "none";
defparam ram_block1a28.port_b_address_clock = "clock1";
defparam ram_block1a28.port_b_address_width = 14;
defparam ram_block1a28.port_b_data_out_clear = "none";
defparam ram_block1a28.port_b_data_out_clock = "clock1";
defparam ram_block1a28.port_b_data_width = 1;
defparam ram_block1a28.port_b_first_address = 49152;
defparam ram_block1a28.port_b_first_bit_number = 4;
defparam ram_block1a28.port_b_last_address = 65535;
defparam ram_block1a28.port_b_logical_ram_depth = 131072;
defparam ram_block1a28.port_b_logical_ram_width = 8;
defparam ram_block1a28.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a28.port_b_read_enable_clock = "clock1";
defparam ram_block1a28.ram_block_type = "auto";

twentynm_ram_block ram_block1a4(
	.portawe(\decode2|w_anode618w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode618w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[4]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a4_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a4.clk0_core_clock_enable = "ena0";
defparam ram_block1a4.clk1_output_clock_enable = "ena1";
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a4.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a4.operation_mode = "dual_port";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 14;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "none";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 16383;
defparam ram_block1a4.port_a_logical_ram_depth = 131072;
defparam ram_block1a4.port_a_logical_ram_width = 8;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a4.port_b_address_clear = "none";
defparam ram_block1a4.port_b_address_clock = "clock1";
defparam ram_block1a4.port_b_address_width = 14;
defparam ram_block1a4.port_b_data_out_clear = "none";
defparam ram_block1a4.port_b_data_out_clock = "clock1";
defparam ram_block1a4.port_b_data_width = 1;
defparam ram_block1a4.port_b_first_address = 0;
defparam ram_block1a4.port_b_first_bit_number = 4;
defparam ram_block1a4.port_b_last_address = 16383;
defparam ram_block1a4.port_b_logical_ram_depth = 131072;
defparam ram_block1a4.port_b_logical_ram_width = 8;
defparam ram_block1a4.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a4.port_b_read_enable_clock = "clock1";
defparam ram_block1a4.ram_block_type = "auto";

twentynm_ram_block ram_block1a12(
	.portawe(\decode2|w_anode635w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode635w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[4]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a12_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a12.clk0_core_clock_enable = "ena0";
defparam ram_block1a12.clk1_output_clock_enable = "ena1";
defparam ram_block1a12.data_interleave_offset_in_bits = 1;
defparam ram_block1a12.data_interleave_width_in_bits = 1;
defparam ram_block1a12.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a12.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a12.operation_mode = "dual_port";
defparam ram_block1a12.port_a_address_clear = "none";
defparam ram_block1a12.port_a_address_width = 14;
defparam ram_block1a12.port_a_data_out_clear = "none";
defparam ram_block1a12.port_a_data_out_clock = "none";
defparam ram_block1a12.port_a_data_width = 1;
defparam ram_block1a12.port_a_first_address = 16384;
defparam ram_block1a12.port_a_first_bit_number = 4;
defparam ram_block1a12.port_a_last_address = 32767;
defparam ram_block1a12.port_a_logical_ram_depth = 131072;
defparam ram_block1a12.port_a_logical_ram_width = 8;
defparam ram_block1a12.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a12.port_b_address_clear = "none";
defparam ram_block1a12.port_b_address_clock = "clock1";
defparam ram_block1a12.port_b_address_width = 14;
defparam ram_block1a12.port_b_data_out_clear = "none";
defparam ram_block1a12.port_b_data_out_clock = "clock1";
defparam ram_block1a12.port_b_data_width = 1;
defparam ram_block1a12.port_b_first_address = 16384;
defparam ram_block1a12.port_b_first_bit_number = 4;
defparam ram_block1a12.port_b_last_address = 32767;
defparam ram_block1a12.port_b_logical_ram_depth = 131072;
defparam ram_block1a12.port_b_logical_ram_width = 8;
defparam ram_block1a12.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a12.port_b_read_enable_clock = "clock1";
defparam ram_block1a12.ram_block_type = "auto";

twentynm_ram_block ram_block1a37(
	.portawe(\decode2|w_anode665w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode665w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[5]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a37_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a37.clk0_core_clock_enable = "ena0";
defparam ram_block1a37.clk1_output_clock_enable = "ena1";
defparam ram_block1a37.data_interleave_offset_in_bits = 1;
defparam ram_block1a37.data_interleave_width_in_bits = 1;
defparam ram_block1a37.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a37.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a37.operation_mode = "dual_port";
defparam ram_block1a37.port_a_address_clear = "none";
defparam ram_block1a37.port_a_address_width = 14;
defparam ram_block1a37.port_a_data_out_clear = "none";
defparam ram_block1a37.port_a_data_out_clock = "none";
defparam ram_block1a37.port_a_data_width = 1;
defparam ram_block1a37.port_a_first_address = 65536;
defparam ram_block1a37.port_a_first_bit_number = 5;
defparam ram_block1a37.port_a_last_address = 81919;
defparam ram_block1a37.port_a_logical_ram_depth = 131072;
defparam ram_block1a37.port_a_logical_ram_width = 8;
defparam ram_block1a37.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a37.port_b_address_clear = "none";
defparam ram_block1a37.port_b_address_clock = "clock1";
defparam ram_block1a37.port_b_address_width = 14;
defparam ram_block1a37.port_b_data_out_clear = "none";
defparam ram_block1a37.port_b_data_out_clock = "clock1";
defparam ram_block1a37.port_b_data_width = 1;
defparam ram_block1a37.port_b_first_address = 65536;
defparam ram_block1a37.port_b_first_bit_number = 5;
defparam ram_block1a37.port_b_last_address = 81919;
defparam ram_block1a37.port_b_logical_ram_depth = 131072;
defparam ram_block1a37.port_b_logical_ram_width = 8;
defparam ram_block1a37.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a37.port_b_read_enable_clock = "clock1";
defparam ram_block1a37.ram_block_type = "auto";

twentynm_ram_block ram_block1a45(
	.portawe(\decode2|w_anode675w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode675w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[5]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a45_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a45.clk0_core_clock_enable = "ena0";
defparam ram_block1a45.clk1_output_clock_enable = "ena1";
defparam ram_block1a45.data_interleave_offset_in_bits = 1;
defparam ram_block1a45.data_interleave_width_in_bits = 1;
defparam ram_block1a45.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a45.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a45.operation_mode = "dual_port";
defparam ram_block1a45.port_a_address_clear = "none";
defparam ram_block1a45.port_a_address_width = 14;
defparam ram_block1a45.port_a_data_out_clear = "none";
defparam ram_block1a45.port_a_data_out_clock = "none";
defparam ram_block1a45.port_a_data_width = 1;
defparam ram_block1a45.port_a_first_address = 81920;
defparam ram_block1a45.port_a_first_bit_number = 5;
defparam ram_block1a45.port_a_last_address = 98303;
defparam ram_block1a45.port_a_logical_ram_depth = 131072;
defparam ram_block1a45.port_a_logical_ram_width = 8;
defparam ram_block1a45.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a45.port_b_address_clear = "none";
defparam ram_block1a45.port_b_address_clock = "clock1";
defparam ram_block1a45.port_b_address_width = 14;
defparam ram_block1a45.port_b_data_out_clear = "none";
defparam ram_block1a45.port_b_data_out_clock = "clock1";
defparam ram_block1a45.port_b_data_width = 1;
defparam ram_block1a45.port_b_first_address = 81920;
defparam ram_block1a45.port_b_first_bit_number = 5;
defparam ram_block1a45.port_b_last_address = 98303;
defparam ram_block1a45.port_b_logical_ram_depth = 131072;
defparam ram_block1a45.port_b_logical_ram_width = 8;
defparam ram_block1a45.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a45.port_b_read_enable_clock = "clock1";
defparam ram_block1a45.ram_block_type = "auto";

twentynm_ram_block ram_block1a53(
	.portawe(\decode2|w_anode685w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode685w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[5]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a53_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a53.clk0_core_clock_enable = "ena0";
defparam ram_block1a53.clk1_output_clock_enable = "ena1";
defparam ram_block1a53.data_interleave_offset_in_bits = 1;
defparam ram_block1a53.data_interleave_width_in_bits = 1;
defparam ram_block1a53.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a53.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a53.operation_mode = "dual_port";
defparam ram_block1a53.port_a_address_clear = "none";
defparam ram_block1a53.port_a_address_width = 14;
defparam ram_block1a53.port_a_data_out_clear = "none";
defparam ram_block1a53.port_a_data_out_clock = "none";
defparam ram_block1a53.port_a_data_width = 1;
defparam ram_block1a53.port_a_first_address = 98304;
defparam ram_block1a53.port_a_first_bit_number = 5;
defparam ram_block1a53.port_a_last_address = 114687;
defparam ram_block1a53.port_a_logical_ram_depth = 131072;
defparam ram_block1a53.port_a_logical_ram_width = 8;
defparam ram_block1a53.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a53.port_b_address_clear = "none";
defparam ram_block1a53.port_b_address_clock = "clock1";
defparam ram_block1a53.port_b_address_width = 14;
defparam ram_block1a53.port_b_data_out_clear = "none";
defparam ram_block1a53.port_b_data_out_clock = "clock1";
defparam ram_block1a53.port_b_data_width = 1;
defparam ram_block1a53.port_b_first_address = 98304;
defparam ram_block1a53.port_b_first_bit_number = 5;
defparam ram_block1a53.port_b_last_address = 114687;
defparam ram_block1a53.port_b_logical_ram_depth = 131072;
defparam ram_block1a53.port_b_logical_ram_width = 8;
defparam ram_block1a53.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a53.port_b_read_enable_clock = "clock1";
defparam ram_block1a53.ram_block_type = "auto";

twentynm_ram_block ram_block1a61(
	.portawe(\decode2|w_anode695w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode695w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[5]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a61_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a61.clk0_core_clock_enable = "ena0";
defparam ram_block1a61.clk1_output_clock_enable = "ena1";
defparam ram_block1a61.data_interleave_offset_in_bits = 1;
defparam ram_block1a61.data_interleave_width_in_bits = 1;
defparam ram_block1a61.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a61.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a61.operation_mode = "dual_port";
defparam ram_block1a61.port_a_address_clear = "none";
defparam ram_block1a61.port_a_address_width = 14;
defparam ram_block1a61.port_a_data_out_clear = "none";
defparam ram_block1a61.port_a_data_out_clock = "none";
defparam ram_block1a61.port_a_data_width = 1;
defparam ram_block1a61.port_a_first_address = 114688;
defparam ram_block1a61.port_a_first_bit_number = 5;
defparam ram_block1a61.port_a_last_address = 131071;
defparam ram_block1a61.port_a_logical_ram_depth = 131072;
defparam ram_block1a61.port_a_logical_ram_width = 8;
defparam ram_block1a61.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a61.port_b_address_clear = "none";
defparam ram_block1a61.port_b_address_clock = "clock1";
defparam ram_block1a61.port_b_address_width = 14;
defparam ram_block1a61.port_b_data_out_clear = "none";
defparam ram_block1a61.port_b_data_out_clock = "clock1";
defparam ram_block1a61.port_b_data_width = 1;
defparam ram_block1a61.port_b_first_address = 114688;
defparam ram_block1a61.port_b_first_bit_number = 5;
defparam ram_block1a61.port_b_last_address = 131071;
defparam ram_block1a61.port_b_logical_ram_depth = 131072;
defparam ram_block1a61.port_b_logical_ram_width = 8;
defparam ram_block1a61.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a61.port_b_read_enable_clock = "clock1";
defparam ram_block1a61.ram_block_type = "auto";

twentynm_ram_block ram_block1a21(
	.portawe(\decode2|w_anode645w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode645w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[5]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a21_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a21.clk0_core_clock_enable = "ena0";
defparam ram_block1a21.clk1_output_clock_enable = "ena1";
defparam ram_block1a21.data_interleave_offset_in_bits = 1;
defparam ram_block1a21.data_interleave_width_in_bits = 1;
defparam ram_block1a21.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a21.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a21.operation_mode = "dual_port";
defparam ram_block1a21.port_a_address_clear = "none";
defparam ram_block1a21.port_a_address_width = 14;
defparam ram_block1a21.port_a_data_out_clear = "none";
defparam ram_block1a21.port_a_data_out_clock = "none";
defparam ram_block1a21.port_a_data_width = 1;
defparam ram_block1a21.port_a_first_address = 32768;
defparam ram_block1a21.port_a_first_bit_number = 5;
defparam ram_block1a21.port_a_last_address = 49151;
defparam ram_block1a21.port_a_logical_ram_depth = 131072;
defparam ram_block1a21.port_a_logical_ram_width = 8;
defparam ram_block1a21.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a21.port_b_address_clear = "none";
defparam ram_block1a21.port_b_address_clock = "clock1";
defparam ram_block1a21.port_b_address_width = 14;
defparam ram_block1a21.port_b_data_out_clear = "none";
defparam ram_block1a21.port_b_data_out_clock = "clock1";
defparam ram_block1a21.port_b_data_width = 1;
defparam ram_block1a21.port_b_first_address = 32768;
defparam ram_block1a21.port_b_first_bit_number = 5;
defparam ram_block1a21.port_b_last_address = 49151;
defparam ram_block1a21.port_b_logical_ram_depth = 131072;
defparam ram_block1a21.port_b_logical_ram_width = 8;
defparam ram_block1a21.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a21.port_b_read_enable_clock = "clock1";
defparam ram_block1a21.ram_block_type = "auto";

twentynm_ram_block ram_block1a29(
	.portawe(\decode2|w_anode655w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode655w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[5]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a29_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a29.clk0_core_clock_enable = "ena0";
defparam ram_block1a29.clk1_output_clock_enable = "ena1";
defparam ram_block1a29.data_interleave_offset_in_bits = 1;
defparam ram_block1a29.data_interleave_width_in_bits = 1;
defparam ram_block1a29.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a29.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a29.operation_mode = "dual_port";
defparam ram_block1a29.port_a_address_clear = "none";
defparam ram_block1a29.port_a_address_width = 14;
defparam ram_block1a29.port_a_data_out_clear = "none";
defparam ram_block1a29.port_a_data_out_clock = "none";
defparam ram_block1a29.port_a_data_width = 1;
defparam ram_block1a29.port_a_first_address = 49152;
defparam ram_block1a29.port_a_first_bit_number = 5;
defparam ram_block1a29.port_a_last_address = 65535;
defparam ram_block1a29.port_a_logical_ram_depth = 131072;
defparam ram_block1a29.port_a_logical_ram_width = 8;
defparam ram_block1a29.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a29.port_b_address_clear = "none";
defparam ram_block1a29.port_b_address_clock = "clock1";
defparam ram_block1a29.port_b_address_width = 14;
defparam ram_block1a29.port_b_data_out_clear = "none";
defparam ram_block1a29.port_b_data_out_clock = "clock1";
defparam ram_block1a29.port_b_data_width = 1;
defparam ram_block1a29.port_b_first_address = 49152;
defparam ram_block1a29.port_b_first_bit_number = 5;
defparam ram_block1a29.port_b_last_address = 65535;
defparam ram_block1a29.port_b_logical_ram_depth = 131072;
defparam ram_block1a29.port_b_logical_ram_width = 8;
defparam ram_block1a29.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a29.port_b_read_enable_clock = "clock1";
defparam ram_block1a29.ram_block_type = "auto";

twentynm_ram_block ram_block1a5(
	.portawe(\decode2|w_anode618w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode618w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[5]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a5_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a5.clk0_core_clock_enable = "ena0";
defparam ram_block1a5.clk1_output_clock_enable = "ena1";
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a5.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a5.operation_mode = "dual_port";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 14;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "none";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 16383;
defparam ram_block1a5.port_a_logical_ram_depth = 131072;
defparam ram_block1a5.port_a_logical_ram_width = 8;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a5.port_b_address_clear = "none";
defparam ram_block1a5.port_b_address_clock = "clock1";
defparam ram_block1a5.port_b_address_width = 14;
defparam ram_block1a5.port_b_data_out_clear = "none";
defparam ram_block1a5.port_b_data_out_clock = "clock1";
defparam ram_block1a5.port_b_data_width = 1;
defparam ram_block1a5.port_b_first_address = 0;
defparam ram_block1a5.port_b_first_bit_number = 5;
defparam ram_block1a5.port_b_last_address = 16383;
defparam ram_block1a5.port_b_logical_ram_depth = 131072;
defparam ram_block1a5.port_b_logical_ram_width = 8;
defparam ram_block1a5.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a5.port_b_read_enable_clock = "clock1";
defparam ram_block1a5.ram_block_type = "auto";

twentynm_ram_block ram_block1a13(
	.portawe(\decode2|w_anode635w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode635w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[5]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a13_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a13.clk0_core_clock_enable = "ena0";
defparam ram_block1a13.clk1_output_clock_enable = "ena1";
defparam ram_block1a13.data_interleave_offset_in_bits = 1;
defparam ram_block1a13.data_interleave_width_in_bits = 1;
defparam ram_block1a13.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a13.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a13.operation_mode = "dual_port";
defparam ram_block1a13.port_a_address_clear = "none";
defparam ram_block1a13.port_a_address_width = 14;
defparam ram_block1a13.port_a_data_out_clear = "none";
defparam ram_block1a13.port_a_data_out_clock = "none";
defparam ram_block1a13.port_a_data_width = 1;
defparam ram_block1a13.port_a_first_address = 16384;
defparam ram_block1a13.port_a_first_bit_number = 5;
defparam ram_block1a13.port_a_last_address = 32767;
defparam ram_block1a13.port_a_logical_ram_depth = 131072;
defparam ram_block1a13.port_a_logical_ram_width = 8;
defparam ram_block1a13.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a13.port_b_address_clear = "none";
defparam ram_block1a13.port_b_address_clock = "clock1";
defparam ram_block1a13.port_b_address_width = 14;
defparam ram_block1a13.port_b_data_out_clear = "none";
defparam ram_block1a13.port_b_data_out_clock = "clock1";
defparam ram_block1a13.port_b_data_width = 1;
defparam ram_block1a13.port_b_first_address = 16384;
defparam ram_block1a13.port_b_first_bit_number = 5;
defparam ram_block1a13.port_b_last_address = 32767;
defparam ram_block1a13.port_b_logical_ram_depth = 131072;
defparam ram_block1a13.port_b_logical_ram_width = 8;
defparam ram_block1a13.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a13.port_b_read_enable_clock = "clock1";
defparam ram_block1a13.ram_block_type = "auto";

twentynm_ram_block ram_block1a38(
	.portawe(\decode2|w_anode665w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode665w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a38_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a38.clk0_core_clock_enable = "ena0";
defparam ram_block1a38.clk1_output_clock_enable = "ena1";
defparam ram_block1a38.data_interleave_offset_in_bits = 1;
defparam ram_block1a38.data_interleave_width_in_bits = 1;
defparam ram_block1a38.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a38.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a38.operation_mode = "dual_port";
defparam ram_block1a38.port_a_address_clear = "none";
defparam ram_block1a38.port_a_address_width = 14;
defparam ram_block1a38.port_a_data_out_clear = "none";
defparam ram_block1a38.port_a_data_out_clock = "none";
defparam ram_block1a38.port_a_data_width = 1;
defparam ram_block1a38.port_a_first_address = 65536;
defparam ram_block1a38.port_a_first_bit_number = 6;
defparam ram_block1a38.port_a_last_address = 81919;
defparam ram_block1a38.port_a_logical_ram_depth = 131072;
defparam ram_block1a38.port_a_logical_ram_width = 8;
defparam ram_block1a38.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a38.port_b_address_clear = "none";
defparam ram_block1a38.port_b_address_clock = "clock1";
defparam ram_block1a38.port_b_address_width = 14;
defparam ram_block1a38.port_b_data_out_clear = "none";
defparam ram_block1a38.port_b_data_out_clock = "clock1";
defparam ram_block1a38.port_b_data_width = 1;
defparam ram_block1a38.port_b_first_address = 65536;
defparam ram_block1a38.port_b_first_bit_number = 6;
defparam ram_block1a38.port_b_last_address = 81919;
defparam ram_block1a38.port_b_logical_ram_depth = 131072;
defparam ram_block1a38.port_b_logical_ram_width = 8;
defparam ram_block1a38.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a38.port_b_read_enable_clock = "clock1";
defparam ram_block1a38.ram_block_type = "auto";

twentynm_ram_block ram_block1a46(
	.portawe(\decode2|w_anode675w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode675w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a46_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a46.clk0_core_clock_enable = "ena0";
defparam ram_block1a46.clk1_output_clock_enable = "ena1";
defparam ram_block1a46.data_interleave_offset_in_bits = 1;
defparam ram_block1a46.data_interleave_width_in_bits = 1;
defparam ram_block1a46.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a46.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a46.operation_mode = "dual_port";
defparam ram_block1a46.port_a_address_clear = "none";
defparam ram_block1a46.port_a_address_width = 14;
defparam ram_block1a46.port_a_data_out_clear = "none";
defparam ram_block1a46.port_a_data_out_clock = "none";
defparam ram_block1a46.port_a_data_width = 1;
defparam ram_block1a46.port_a_first_address = 81920;
defparam ram_block1a46.port_a_first_bit_number = 6;
defparam ram_block1a46.port_a_last_address = 98303;
defparam ram_block1a46.port_a_logical_ram_depth = 131072;
defparam ram_block1a46.port_a_logical_ram_width = 8;
defparam ram_block1a46.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a46.port_b_address_clear = "none";
defparam ram_block1a46.port_b_address_clock = "clock1";
defparam ram_block1a46.port_b_address_width = 14;
defparam ram_block1a46.port_b_data_out_clear = "none";
defparam ram_block1a46.port_b_data_out_clock = "clock1";
defparam ram_block1a46.port_b_data_width = 1;
defparam ram_block1a46.port_b_first_address = 81920;
defparam ram_block1a46.port_b_first_bit_number = 6;
defparam ram_block1a46.port_b_last_address = 98303;
defparam ram_block1a46.port_b_logical_ram_depth = 131072;
defparam ram_block1a46.port_b_logical_ram_width = 8;
defparam ram_block1a46.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a46.port_b_read_enable_clock = "clock1";
defparam ram_block1a46.ram_block_type = "auto";

twentynm_ram_block ram_block1a54(
	.portawe(\decode2|w_anode685w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode685w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a54_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a54.clk0_core_clock_enable = "ena0";
defparam ram_block1a54.clk1_output_clock_enable = "ena1";
defparam ram_block1a54.data_interleave_offset_in_bits = 1;
defparam ram_block1a54.data_interleave_width_in_bits = 1;
defparam ram_block1a54.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a54.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a54.operation_mode = "dual_port";
defparam ram_block1a54.port_a_address_clear = "none";
defparam ram_block1a54.port_a_address_width = 14;
defparam ram_block1a54.port_a_data_out_clear = "none";
defparam ram_block1a54.port_a_data_out_clock = "none";
defparam ram_block1a54.port_a_data_width = 1;
defparam ram_block1a54.port_a_first_address = 98304;
defparam ram_block1a54.port_a_first_bit_number = 6;
defparam ram_block1a54.port_a_last_address = 114687;
defparam ram_block1a54.port_a_logical_ram_depth = 131072;
defparam ram_block1a54.port_a_logical_ram_width = 8;
defparam ram_block1a54.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a54.port_b_address_clear = "none";
defparam ram_block1a54.port_b_address_clock = "clock1";
defparam ram_block1a54.port_b_address_width = 14;
defparam ram_block1a54.port_b_data_out_clear = "none";
defparam ram_block1a54.port_b_data_out_clock = "clock1";
defparam ram_block1a54.port_b_data_width = 1;
defparam ram_block1a54.port_b_first_address = 98304;
defparam ram_block1a54.port_b_first_bit_number = 6;
defparam ram_block1a54.port_b_last_address = 114687;
defparam ram_block1a54.port_b_logical_ram_depth = 131072;
defparam ram_block1a54.port_b_logical_ram_width = 8;
defparam ram_block1a54.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a54.port_b_read_enable_clock = "clock1";
defparam ram_block1a54.ram_block_type = "auto";

twentynm_ram_block ram_block1a62(
	.portawe(\decode2|w_anode695w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode695w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a62_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a62.clk0_core_clock_enable = "ena0";
defparam ram_block1a62.clk1_output_clock_enable = "ena1";
defparam ram_block1a62.data_interleave_offset_in_bits = 1;
defparam ram_block1a62.data_interleave_width_in_bits = 1;
defparam ram_block1a62.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a62.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a62.operation_mode = "dual_port";
defparam ram_block1a62.port_a_address_clear = "none";
defparam ram_block1a62.port_a_address_width = 14;
defparam ram_block1a62.port_a_data_out_clear = "none";
defparam ram_block1a62.port_a_data_out_clock = "none";
defparam ram_block1a62.port_a_data_width = 1;
defparam ram_block1a62.port_a_first_address = 114688;
defparam ram_block1a62.port_a_first_bit_number = 6;
defparam ram_block1a62.port_a_last_address = 131071;
defparam ram_block1a62.port_a_logical_ram_depth = 131072;
defparam ram_block1a62.port_a_logical_ram_width = 8;
defparam ram_block1a62.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a62.port_b_address_clear = "none";
defparam ram_block1a62.port_b_address_clock = "clock1";
defparam ram_block1a62.port_b_address_width = 14;
defparam ram_block1a62.port_b_data_out_clear = "none";
defparam ram_block1a62.port_b_data_out_clock = "clock1";
defparam ram_block1a62.port_b_data_width = 1;
defparam ram_block1a62.port_b_first_address = 114688;
defparam ram_block1a62.port_b_first_bit_number = 6;
defparam ram_block1a62.port_b_last_address = 131071;
defparam ram_block1a62.port_b_logical_ram_depth = 131072;
defparam ram_block1a62.port_b_logical_ram_width = 8;
defparam ram_block1a62.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a62.port_b_read_enable_clock = "clock1";
defparam ram_block1a62.ram_block_type = "auto";

twentynm_ram_block ram_block1a22(
	.portawe(\decode2|w_anode645w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode645w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a22_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a22.clk0_core_clock_enable = "ena0";
defparam ram_block1a22.clk1_output_clock_enable = "ena1";
defparam ram_block1a22.data_interleave_offset_in_bits = 1;
defparam ram_block1a22.data_interleave_width_in_bits = 1;
defparam ram_block1a22.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a22.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a22.operation_mode = "dual_port";
defparam ram_block1a22.port_a_address_clear = "none";
defparam ram_block1a22.port_a_address_width = 14;
defparam ram_block1a22.port_a_data_out_clear = "none";
defparam ram_block1a22.port_a_data_out_clock = "none";
defparam ram_block1a22.port_a_data_width = 1;
defparam ram_block1a22.port_a_first_address = 32768;
defparam ram_block1a22.port_a_first_bit_number = 6;
defparam ram_block1a22.port_a_last_address = 49151;
defparam ram_block1a22.port_a_logical_ram_depth = 131072;
defparam ram_block1a22.port_a_logical_ram_width = 8;
defparam ram_block1a22.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a22.port_b_address_clear = "none";
defparam ram_block1a22.port_b_address_clock = "clock1";
defparam ram_block1a22.port_b_address_width = 14;
defparam ram_block1a22.port_b_data_out_clear = "none";
defparam ram_block1a22.port_b_data_out_clock = "clock1";
defparam ram_block1a22.port_b_data_width = 1;
defparam ram_block1a22.port_b_first_address = 32768;
defparam ram_block1a22.port_b_first_bit_number = 6;
defparam ram_block1a22.port_b_last_address = 49151;
defparam ram_block1a22.port_b_logical_ram_depth = 131072;
defparam ram_block1a22.port_b_logical_ram_width = 8;
defparam ram_block1a22.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a22.port_b_read_enable_clock = "clock1";
defparam ram_block1a22.ram_block_type = "auto";

twentynm_ram_block ram_block1a30(
	.portawe(\decode2|w_anode655w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode655w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a30_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a30.clk0_core_clock_enable = "ena0";
defparam ram_block1a30.clk1_output_clock_enable = "ena1";
defparam ram_block1a30.data_interleave_offset_in_bits = 1;
defparam ram_block1a30.data_interleave_width_in_bits = 1;
defparam ram_block1a30.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a30.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a30.operation_mode = "dual_port";
defparam ram_block1a30.port_a_address_clear = "none";
defparam ram_block1a30.port_a_address_width = 14;
defparam ram_block1a30.port_a_data_out_clear = "none";
defparam ram_block1a30.port_a_data_out_clock = "none";
defparam ram_block1a30.port_a_data_width = 1;
defparam ram_block1a30.port_a_first_address = 49152;
defparam ram_block1a30.port_a_first_bit_number = 6;
defparam ram_block1a30.port_a_last_address = 65535;
defparam ram_block1a30.port_a_logical_ram_depth = 131072;
defparam ram_block1a30.port_a_logical_ram_width = 8;
defparam ram_block1a30.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a30.port_b_address_clear = "none";
defparam ram_block1a30.port_b_address_clock = "clock1";
defparam ram_block1a30.port_b_address_width = 14;
defparam ram_block1a30.port_b_data_out_clear = "none";
defparam ram_block1a30.port_b_data_out_clock = "clock1";
defparam ram_block1a30.port_b_data_width = 1;
defparam ram_block1a30.port_b_first_address = 49152;
defparam ram_block1a30.port_b_first_bit_number = 6;
defparam ram_block1a30.port_b_last_address = 65535;
defparam ram_block1a30.port_b_logical_ram_depth = 131072;
defparam ram_block1a30.port_b_logical_ram_width = 8;
defparam ram_block1a30.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a30.port_b_read_enable_clock = "clock1";
defparam ram_block1a30.ram_block_type = "auto";

twentynm_ram_block ram_block1a6(
	.portawe(\decode2|w_anode618w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode618w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a6_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a6.clk0_core_clock_enable = "ena0";
defparam ram_block1a6.clk1_output_clock_enable = "ena1";
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a6.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a6.operation_mode = "dual_port";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 14;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "none";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 16383;
defparam ram_block1a6.port_a_logical_ram_depth = 131072;
defparam ram_block1a6.port_a_logical_ram_width = 8;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a6.port_b_address_clear = "none";
defparam ram_block1a6.port_b_address_clock = "clock1";
defparam ram_block1a6.port_b_address_width = 14;
defparam ram_block1a6.port_b_data_out_clear = "none";
defparam ram_block1a6.port_b_data_out_clock = "clock1";
defparam ram_block1a6.port_b_data_width = 1;
defparam ram_block1a6.port_b_first_address = 0;
defparam ram_block1a6.port_b_first_bit_number = 6;
defparam ram_block1a6.port_b_last_address = 16383;
defparam ram_block1a6.port_b_logical_ram_depth = 131072;
defparam ram_block1a6.port_b_logical_ram_width = 8;
defparam ram_block1a6.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a6.port_b_read_enable_clock = "clock1";
defparam ram_block1a6.ram_block_type = "auto";

twentynm_ram_block ram_block1a14(
	.portawe(\decode2|w_anode635w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode635w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a14_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a14.clk0_core_clock_enable = "ena0";
defparam ram_block1a14.clk1_output_clock_enable = "ena1";
defparam ram_block1a14.data_interleave_offset_in_bits = 1;
defparam ram_block1a14.data_interleave_width_in_bits = 1;
defparam ram_block1a14.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a14.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a14.operation_mode = "dual_port";
defparam ram_block1a14.port_a_address_clear = "none";
defparam ram_block1a14.port_a_address_width = 14;
defparam ram_block1a14.port_a_data_out_clear = "none";
defparam ram_block1a14.port_a_data_out_clock = "none";
defparam ram_block1a14.port_a_data_width = 1;
defparam ram_block1a14.port_a_first_address = 16384;
defparam ram_block1a14.port_a_first_bit_number = 6;
defparam ram_block1a14.port_a_last_address = 32767;
defparam ram_block1a14.port_a_logical_ram_depth = 131072;
defparam ram_block1a14.port_a_logical_ram_width = 8;
defparam ram_block1a14.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a14.port_b_address_clear = "none";
defparam ram_block1a14.port_b_address_clock = "clock1";
defparam ram_block1a14.port_b_address_width = 14;
defparam ram_block1a14.port_b_data_out_clear = "none";
defparam ram_block1a14.port_b_data_out_clock = "clock1";
defparam ram_block1a14.port_b_data_width = 1;
defparam ram_block1a14.port_b_first_address = 16384;
defparam ram_block1a14.port_b_first_bit_number = 6;
defparam ram_block1a14.port_b_last_address = 32767;
defparam ram_block1a14.port_b_logical_ram_depth = 131072;
defparam ram_block1a14.port_b_logical_ram_width = 8;
defparam ram_block1a14.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a14.port_b_read_enable_clock = "clock1";
defparam ram_block1a14.ram_block_type = "auto";

twentynm_ram_block ram_block1a39(
	.portawe(\decode2|w_anode665w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode665w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[7]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a39_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a39.clk0_core_clock_enable = "ena0";
defparam ram_block1a39.clk1_output_clock_enable = "ena1";
defparam ram_block1a39.data_interleave_offset_in_bits = 1;
defparam ram_block1a39.data_interleave_width_in_bits = 1;
defparam ram_block1a39.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a39.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a39.operation_mode = "dual_port";
defparam ram_block1a39.port_a_address_clear = "none";
defparam ram_block1a39.port_a_address_width = 14;
defparam ram_block1a39.port_a_data_out_clear = "none";
defparam ram_block1a39.port_a_data_out_clock = "none";
defparam ram_block1a39.port_a_data_width = 1;
defparam ram_block1a39.port_a_first_address = 65536;
defparam ram_block1a39.port_a_first_bit_number = 7;
defparam ram_block1a39.port_a_last_address = 81919;
defparam ram_block1a39.port_a_logical_ram_depth = 131072;
defparam ram_block1a39.port_a_logical_ram_width = 8;
defparam ram_block1a39.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a39.port_b_address_clear = "none";
defparam ram_block1a39.port_b_address_clock = "clock1";
defparam ram_block1a39.port_b_address_width = 14;
defparam ram_block1a39.port_b_data_out_clear = "none";
defparam ram_block1a39.port_b_data_out_clock = "clock1";
defparam ram_block1a39.port_b_data_width = 1;
defparam ram_block1a39.port_b_first_address = 65536;
defparam ram_block1a39.port_b_first_bit_number = 7;
defparam ram_block1a39.port_b_last_address = 81919;
defparam ram_block1a39.port_b_logical_ram_depth = 131072;
defparam ram_block1a39.port_b_logical_ram_width = 8;
defparam ram_block1a39.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a39.port_b_read_enable_clock = "clock1";
defparam ram_block1a39.ram_block_type = "auto";

twentynm_ram_block ram_block1a47(
	.portawe(\decode2|w_anode675w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode675w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[7]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a47_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a47.clk0_core_clock_enable = "ena0";
defparam ram_block1a47.clk1_output_clock_enable = "ena1";
defparam ram_block1a47.data_interleave_offset_in_bits = 1;
defparam ram_block1a47.data_interleave_width_in_bits = 1;
defparam ram_block1a47.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a47.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a47.operation_mode = "dual_port";
defparam ram_block1a47.port_a_address_clear = "none";
defparam ram_block1a47.port_a_address_width = 14;
defparam ram_block1a47.port_a_data_out_clear = "none";
defparam ram_block1a47.port_a_data_out_clock = "none";
defparam ram_block1a47.port_a_data_width = 1;
defparam ram_block1a47.port_a_first_address = 81920;
defparam ram_block1a47.port_a_first_bit_number = 7;
defparam ram_block1a47.port_a_last_address = 98303;
defparam ram_block1a47.port_a_logical_ram_depth = 131072;
defparam ram_block1a47.port_a_logical_ram_width = 8;
defparam ram_block1a47.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a47.port_b_address_clear = "none";
defparam ram_block1a47.port_b_address_clock = "clock1";
defparam ram_block1a47.port_b_address_width = 14;
defparam ram_block1a47.port_b_data_out_clear = "none";
defparam ram_block1a47.port_b_data_out_clock = "clock1";
defparam ram_block1a47.port_b_data_width = 1;
defparam ram_block1a47.port_b_first_address = 81920;
defparam ram_block1a47.port_b_first_bit_number = 7;
defparam ram_block1a47.port_b_last_address = 98303;
defparam ram_block1a47.port_b_logical_ram_depth = 131072;
defparam ram_block1a47.port_b_logical_ram_width = 8;
defparam ram_block1a47.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a47.port_b_read_enable_clock = "clock1";
defparam ram_block1a47.ram_block_type = "auto";

twentynm_ram_block ram_block1a55(
	.portawe(\decode2|w_anode685w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode685w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[7]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a55_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a55.clk0_core_clock_enable = "ena0";
defparam ram_block1a55.clk1_output_clock_enable = "ena1";
defparam ram_block1a55.data_interleave_offset_in_bits = 1;
defparam ram_block1a55.data_interleave_width_in_bits = 1;
defparam ram_block1a55.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a55.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a55.operation_mode = "dual_port";
defparam ram_block1a55.port_a_address_clear = "none";
defparam ram_block1a55.port_a_address_width = 14;
defparam ram_block1a55.port_a_data_out_clear = "none";
defparam ram_block1a55.port_a_data_out_clock = "none";
defparam ram_block1a55.port_a_data_width = 1;
defparam ram_block1a55.port_a_first_address = 98304;
defparam ram_block1a55.port_a_first_bit_number = 7;
defparam ram_block1a55.port_a_last_address = 114687;
defparam ram_block1a55.port_a_logical_ram_depth = 131072;
defparam ram_block1a55.port_a_logical_ram_width = 8;
defparam ram_block1a55.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a55.port_b_address_clear = "none";
defparam ram_block1a55.port_b_address_clock = "clock1";
defparam ram_block1a55.port_b_address_width = 14;
defparam ram_block1a55.port_b_data_out_clear = "none";
defparam ram_block1a55.port_b_data_out_clock = "clock1";
defparam ram_block1a55.port_b_data_width = 1;
defparam ram_block1a55.port_b_first_address = 98304;
defparam ram_block1a55.port_b_first_bit_number = 7;
defparam ram_block1a55.port_b_last_address = 114687;
defparam ram_block1a55.port_b_logical_ram_depth = 131072;
defparam ram_block1a55.port_b_logical_ram_width = 8;
defparam ram_block1a55.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a55.port_b_read_enable_clock = "clock1";
defparam ram_block1a55.ram_block_type = "auto";

twentynm_ram_block ram_block1a63(
	.portawe(\decode2|w_anode695w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode695w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[7]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a63_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a63.clk0_core_clock_enable = "ena0";
defparam ram_block1a63.clk1_output_clock_enable = "ena1";
defparam ram_block1a63.data_interleave_offset_in_bits = 1;
defparam ram_block1a63.data_interleave_width_in_bits = 1;
defparam ram_block1a63.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a63.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a63.operation_mode = "dual_port";
defparam ram_block1a63.port_a_address_clear = "none";
defparam ram_block1a63.port_a_address_width = 14;
defparam ram_block1a63.port_a_data_out_clear = "none";
defparam ram_block1a63.port_a_data_out_clock = "none";
defparam ram_block1a63.port_a_data_width = 1;
defparam ram_block1a63.port_a_first_address = 114688;
defparam ram_block1a63.port_a_first_bit_number = 7;
defparam ram_block1a63.port_a_last_address = 131071;
defparam ram_block1a63.port_a_logical_ram_depth = 131072;
defparam ram_block1a63.port_a_logical_ram_width = 8;
defparam ram_block1a63.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a63.port_b_address_clear = "none";
defparam ram_block1a63.port_b_address_clock = "clock1";
defparam ram_block1a63.port_b_address_width = 14;
defparam ram_block1a63.port_b_data_out_clear = "none";
defparam ram_block1a63.port_b_data_out_clock = "clock1";
defparam ram_block1a63.port_b_data_width = 1;
defparam ram_block1a63.port_b_first_address = 114688;
defparam ram_block1a63.port_b_first_bit_number = 7;
defparam ram_block1a63.port_b_last_address = 131071;
defparam ram_block1a63.port_b_logical_ram_depth = 131072;
defparam ram_block1a63.port_b_logical_ram_width = 8;
defparam ram_block1a63.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a63.port_b_read_enable_clock = "clock1";
defparam ram_block1a63.ram_block_type = "auto";

twentynm_ram_block ram_block1a23(
	.portawe(\decode2|w_anode645w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode645w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[7]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a23_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a23.clk0_core_clock_enable = "ena0";
defparam ram_block1a23.clk1_output_clock_enable = "ena1";
defparam ram_block1a23.data_interleave_offset_in_bits = 1;
defparam ram_block1a23.data_interleave_width_in_bits = 1;
defparam ram_block1a23.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a23.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a23.operation_mode = "dual_port";
defparam ram_block1a23.port_a_address_clear = "none";
defparam ram_block1a23.port_a_address_width = 14;
defparam ram_block1a23.port_a_data_out_clear = "none";
defparam ram_block1a23.port_a_data_out_clock = "none";
defparam ram_block1a23.port_a_data_width = 1;
defparam ram_block1a23.port_a_first_address = 32768;
defparam ram_block1a23.port_a_first_bit_number = 7;
defparam ram_block1a23.port_a_last_address = 49151;
defparam ram_block1a23.port_a_logical_ram_depth = 131072;
defparam ram_block1a23.port_a_logical_ram_width = 8;
defparam ram_block1a23.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a23.port_b_address_clear = "none";
defparam ram_block1a23.port_b_address_clock = "clock1";
defparam ram_block1a23.port_b_address_width = 14;
defparam ram_block1a23.port_b_data_out_clear = "none";
defparam ram_block1a23.port_b_data_out_clock = "clock1";
defparam ram_block1a23.port_b_data_width = 1;
defparam ram_block1a23.port_b_first_address = 32768;
defparam ram_block1a23.port_b_first_bit_number = 7;
defparam ram_block1a23.port_b_last_address = 49151;
defparam ram_block1a23.port_b_logical_ram_depth = 131072;
defparam ram_block1a23.port_b_logical_ram_width = 8;
defparam ram_block1a23.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a23.port_b_read_enable_clock = "clock1";
defparam ram_block1a23.ram_block_type = "auto";

twentynm_ram_block ram_block1a31(
	.portawe(\decode2|w_anode655w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode655w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[7]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a31_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a31.clk0_core_clock_enable = "ena0";
defparam ram_block1a31.clk1_output_clock_enable = "ena1";
defparam ram_block1a31.data_interleave_offset_in_bits = 1;
defparam ram_block1a31.data_interleave_width_in_bits = 1;
defparam ram_block1a31.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a31.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a31.operation_mode = "dual_port";
defparam ram_block1a31.port_a_address_clear = "none";
defparam ram_block1a31.port_a_address_width = 14;
defparam ram_block1a31.port_a_data_out_clear = "none";
defparam ram_block1a31.port_a_data_out_clock = "none";
defparam ram_block1a31.port_a_data_width = 1;
defparam ram_block1a31.port_a_first_address = 49152;
defparam ram_block1a31.port_a_first_bit_number = 7;
defparam ram_block1a31.port_a_last_address = 65535;
defparam ram_block1a31.port_a_logical_ram_depth = 131072;
defparam ram_block1a31.port_a_logical_ram_width = 8;
defparam ram_block1a31.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a31.port_b_address_clear = "none";
defparam ram_block1a31.port_b_address_clock = "clock1";
defparam ram_block1a31.port_b_address_width = 14;
defparam ram_block1a31.port_b_data_out_clear = "none";
defparam ram_block1a31.port_b_data_out_clock = "clock1";
defparam ram_block1a31.port_b_data_width = 1;
defparam ram_block1a31.port_b_first_address = 49152;
defparam ram_block1a31.port_b_first_bit_number = 7;
defparam ram_block1a31.port_b_last_address = 65535;
defparam ram_block1a31.port_b_logical_ram_depth = 131072;
defparam ram_block1a31.port_b_logical_ram_width = 8;
defparam ram_block1a31.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a31.port_b_read_enable_clock = "clock1";
defparam ram_block1a31.ram_block_type = "auto";

twentynm_ram_block ram_block1a7(
	.portawe(\decode2|w_anode618w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode618w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[7]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a7_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a7.clk0_core_clock_enable = "ena0";
defparam ram_block1a7.clk1_output_clock_enable = "ena1";
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a7.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a7.operation_mode = "dual_port";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 14;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "none";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 16383;
defparam ram_block1a7.port_a_logical_ram_depth = 131072;
defparam ram_block1a7.port_a_logical_ram_width = 8;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a7.port_b_address_clear = "none";
defparam ram_block1a7.port_b_address_clock = "clock1";
defparam ram_block1a7.port_b_address_width = 14;
defparam ram_block1a7.port_b_data_out_clear = "none";
defparam ram_block1a7.port_b_data_out_clock = "clock1";
defparam ram_block1a7.port_b_data_width = 1;
defparam ram_block1a7.port_b_first_address = 0;
defparam ram_block1a7.port_b_first_bit_number = 7;
defparam ram_block1a7.port_b_last_address = 16383;
defparam ram_block1a7.port_b_logical_ram_depth = 131072;
defparam ram_block1a7.port_b_logical_ram_width = 8;
defparam ram_block1a7.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a7.port_b_read_enable_clock = "clock1";
defparam ram_block1a7.ram_block_type = "auto";

twentynm_ram_block ram_block1a15(
	.portawe(\decode2|w_anode635w[3]~0_combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(\decode2|w_anode635w[3]~0_combout ),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[7]}),
	.portaaddr({gnd,gnd,address_a[13],address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,address_b[13],address_b[12],address_b[11],address_b[10],address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a15_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a15.clk0_core_clock_enable = "ena0";
defparam ram_block1a15.clk1_output_clock_enable = "ena1";
defparam ram_block1a15.data_interleave_offset_in_bits = 1;
defparam ram_block1a15.data_interleave_width_in_bits = 1;
defparam ram_block1a15.logical_ram_name = "out_fifo_fifo_171_onw3uty:fifo_0|scfifo:scfifo_component|scfifo_tcb1:auto_generated|a_dpfifo_g4b1:dpfifo|altsyncram_6mn1:FIFOram|ALTSYNCRAM";
defparam ram_block1a15.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a15.operation_mode = "dual_port";
defparam ram_block1a15.port_a_address_clear = "none";
defparam ram_block1a15.port_a_address_width = 14;
defparam ram_block1a15.port_a_data_out_clear = "none";
defparam ram_block1a15.port_a_data_out_clock = "none";
defparam ram_block1a15.port_a_data_width = 1;
defparam ram_block1a15.port_a_first_address = 16384;
defparam ram_block1a15.port_a_first_bit_number = 7;
defparam ram_block1a15.port_a_last_address = 32767;
defparam ram_block1a15.port_a_logical_ram_depth = 131072;
defparam ram_block1a15.port_a_logical_ram_width = 8;
defparam ram_block1a15.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a15.port_b_address_clear = "none";
defparam ram_block1a15.port_b_address_clock = "clock1";
defparam ram_block1a15.port_b_address_width = 14;
defparam ram_block1a15.port_b_data_out_clear = "none";
defparam ram_block1a15.port_b_data_out_clock = "clock1";
defparam ram_block1a15.port_b_data_width = 1;
defparam ram_block1a15.port_b_first_address = 16384;
defparam ram_block1a15.port_b_first_bit_number = 7;
defparam ram_block1a15.port_b_last_address = 32767;
defparam ram_block1a15.port_b_logical_ram_depth = 131072;
defparam ram_block1a15.port_b_logical_ram_width = 8;
defparam ram_block1a15.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a15.port_b_read_enable_clock = "clock1";
defparam ram_block1a15.ram_block_type = "auto";

dffeas \out_address_reg_b[2] (
	.clk(clock0),
	.d(\address_reg_b[2]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clocken1),
	.q(\out_address_reg_b[2]~q ),
	.prn(vcc));
defparam \out_address_reg_b[2] .is_wysiwyg = "true";
defparam \out_address_reg_b[2] .power_up = "low";

dffeas \out_address_reg_b[0] (
	.clk(clock0),
	.d(\address_reg_b[0]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clocken1),
	.q(\out_address_reg_b[0]~q ),
	.prn(vcc));
defparam \out_address_reg_b[0] .is_wysiwyg = "true";
defparam \out_address_reg_b[0] .power_up = "low";

dffeas \out_address_reg_b[1] (
	.clk(clock0),
	.d(\address_reg_b[1]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clocken1),
	.q(\out_address_reg_b[1]~q ),
	.prn(vcc));
defparam \out_address_reg_b[1] .is_wysiwyg = "true";
defparam \out_address_reg_b[1] .power_up = "low";

dffeas \address_reg_b[2] (
	.clk(clock0),
	.d(address_b[16]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\address_reg_b[2]~q ),
	.prn(vcc));
defparam \address_reg_b[2] .is_wysiwyg = "true";
defparam \address_reg_b[2] .power_up = "low";

dffeas \address_reg_b[0] (
	.clk(clock0),
	.d(address_b[14]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\address_reg_b[0]~q ),
	.prn(vcc));
defparam \address_reg_b[0] .is_wysiwyg = "true";
defparam \address_reg_b[0] .power_up = "low";

dffeas \address_reg_b[1] (
	.clk(clock0),
	.d(address_b[15]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\address_reg_b[1]~q ),
	.prn(vcc));
defparam \address_reg_b[1] .is_wysiwyg = "true";
defparam \address_reg_b[1] .power_up = "low";

endmodule

module out_fifo_decode_hp6 (
	full_dff,
	counter_reg_bit_14,
	counter_reg_bit_15,
	counter_reg_bit_16,
	w_anode665w_3,
	w_anode675w_3,
	w_anode685w_3,
	w_anode695w_3,
	w_anode645w_3,
	w_anode655w_3,
	w_anode618w_3,
	w_anode635w_3,
	wrreq)/* synthesis synthesis_greybox=0 */;
input 	full_dff;
input 	counter_reg_bit_14;
input 	counter_reg_bit_15;
input 	counter_reg_bit_16;
output 	w_anode665w_3;
output 	w_anode675w_3;
output 	w_anode685w_3;
output 	w_anode695w_3;
output 	w_anode645w_3;
output 	w_anode655w_3;
output 	w_anode618w_3;
output 	w_anode635w_3;
input 	wrreq;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



twentynm_lcell_comb \w_anode665w[3]~0 (
	.dataa(!full_dff),
	.datab(!counter_reg_bit_14),
	.datac(!counter_reg_bit_15),
	.datad(!wrreq),
	.datae(!counter_reg_bit_16),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(w_anode665w_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \w_anode665w[3]~0 .extended_lut = "off";
defparam \w_anode665w[3]~0 .lut_mask = 64'h0000008000000080;
defparam \w_anode665w[3]~0 .shared_arith = "off";

twentynm_lcell_comb \w_anode675w[3]~0 (
	.dataa(!full_dff),
	.datab(!counter_reg_bit_14),
	.datac(!counter_reg_bit_15),
	.datad(!wrreq),
	.datae(!counter_reg_bit_16),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(w_anode675w_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \w_anode675w[3]~0 .extended_lut = "off";
defparam \w_anode675w[3]~0 .lut_mask = 64'h0000002000000020;
defparam \w_anode675w[3]~0 .shared_arith = "off";

twentynm_lcell_comb \w_anode685w[3]~0 (
	.dataa(!full_dff),
	.datab(!counter_reg_bit_14),
	.datac(!counter_reg_bit_15),
	.datad(!wrreq),
	.datae(!counter_reg_bit_16),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(w_anode685w_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \w_anode685w[3]~0 .extended_lut = "off";
defparam \w_anode685w[3]~0 .lut_mask = 64'h0000000800000008;
defparam \w_anode685w[3]~0 .shared_arith = "off";

twentynm_lcell_comb \w_anode695w[3]~0 (
	.dataa(!full_dff),
	.datab(!counter_reg_bit_14),
	.datac(!counter_reg_bit_15),
	.datad(!wrreq),
	.datae(!counter_reg_bit_16),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(w_anode695w_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \w_anode695w[3]~0 .extended_lut = "off";
defparam \w_anode695w[3]~0 .lut_mask = 64'h0000000200000002;
defparam \w_anode695w[3]~0 .shared_arith = "off";

twentynm_lcell_comb \w_anode645w[3]~0 (
	.dataa(!full_dff),
	.datab(!counter_reg_bit_14),
	.datac(!counter_reg_bit_15),
	.datad(!wrreq),
	.datae(!counter_reg_bit_16),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(w_anode645w_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \w_anode645w[3]~0 .extended_lut = "off";
defparam \w_anode645w[3]~0 .lut_mask = 64'h0008000000080000;
defparam \w_anode645w[3]~0 .shared_arith = "off";

twentynm_lcell_comb \w_anode655w[3]~0 (
	.dataa(!full_dff),
	.datab(!counter_reg_bit_14),
	.datac(!counter_reg_bit_15),
	.datad(!wrreq),
	.datae(!counter_reg_bit_16),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(w_anode655w_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \w_anode655w[3]~0 .extended_lut = "off";
defparam \w_anode655w[3]~0 .lut_mask = 64'h0002000000020000;
defparam \w_anode655w[3]~0 .shared_arith = "off";

twentynm_lcell_comb \w_anode618w[3]~0 (
	.dataa(!full_dff),
	.datab(!counter_reg_bit_14),
	.datac(!counter_reg_bit_15),
	.datad(!wrreq),
	.datae(!counter_reg_bit_16),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(w_anode618w_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \w_anode618w[3]~0 .extended_lut = "off";
defparam \w_anode618w[3]~0 .lut_mask = 64'h0080000000800000;
defparam \w_anode618w[3]~0 .shared_arith = "off";

twentynm_lcell_comb \w_anode635w[3]~0 (
	.dataa(!full_dff),
	.datab(!counter_reg_bit_14),
	.datac(!counter_reg_bit_15),
	.datad(!wrreq),
	.datae(!counter_reg_bit_16),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(w_anode635w_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \w_anode635w[3]~0 .extended_lut = "off";
defparam \w_anode635w[3]~0 .lut_mask = 64'h0020000000200000;
defparam \w_anode635w[3]~0 .shared_arith = "off";

endmodule

module out_fifo_mux_1k7 (
	ram_block1a32,
	ram_block1a40,
	ram_block1a48,
	ram_block1a56,
	ram_block1a16,
	ram_block1a24,
	ram_block1a0,
	ram_block1a8,
	ram_block1a33,
	ram_block1a41,
	ram_block1a49,
	ram_block1a57,
	ram_block1a17,
	ram_block1a25,
	ram_block1a1,
	ram_block1a9,
	ram_block1a34,
	ram_block1a42,
	ram_block1a50,
	ram_block1a58,
	ram_block1a18,
	ram_block1a26,
	ram_block1a2,
	ram_block1a10,
	ram_block1a35,
	ram_block1a43,
	ram_block1a51,
	ram_block1a59,
	ram_block1a19,
	ram_block1a27,
	ram_block1a3,
	ram_block1a11,
	ram_block1a36,
	ram_block1a44,
	ram_block1a52,
	ram_block1a60,
	ram_block1a20,
	ram_block1a28,
	ram_block1a4,
	ram_block1a12,
	ram_block1a37,
	ram_block1a45,
	ram_block1a53,
	ram_block1a61,
	ram_block1a21,
	ram_block1a29,
	ram_block1a5,
	ram_block1a13,
	ram_block1a38,
	ram_block1a46,
	ram_block1a54,
	ram_block1a62,
	ram_block1a22,
	ram_block1a30,
	ram_block1a6,
	ram_block1a14,
	ram_block1a39,
	ram_block1a47,
	ram_block1a55,
	ram_block1a63,
	ram_block1a23,
	ram_block1a31,
	ram_block1a7,
	ram_block1a15,
	out_address_reg_b_2,
	out_address_reg_b_0,
	out_address_reg_b_1,
	l3_w0_n0_mux_dataout,
	l3_w1_n0_mux_dataout,
	l3_w2_n0_mux_dataout,
	l3_w3_n0_mux_dataout,
	l3_w4_n0_mux_dataout,
	l3_w5_n0_mux_dataout,
	l3_w6_n0_mux_dataout,
	l3_w7_n0_mux_dataout)/* synthesis synthesis_greybox=0 */;
input 	ram_block1a32;
input 	ram_block1a40;
input 	ram_block1a48;
input 	ram_block1a56;
input 	ram_block1a16;
input 	ram_block1a24;
input 	ram_block1a0;
input 	ram_block1a8;
input 	ram_block1a33;
input 	ram_block1a41;
input 	ram_block1a49;
input 	ram_block1a57;
input 	ram_block1a17;
input 	ram_block1a25;
input 	ram_block1a1;
input 	ram_block1a9;
input 	ram_block1a34;
input 	ram_block1a42;
input 	ram_block1a50;
input 	ram_block1a58;
input 	ram_block1a18;
input 	ram_block1a26;
input 	ram_block1a2;
input 	ram_block1a10;
input 	ram_block1a35;
input 	ram_block1a43;
input 	ram_block1a51;
input 	ram_block1a59;
input 	ram_block1a19;
input 	ram_block1a27;
input 	ram_block1a3;
input 	ram_block1a11;
input 	ram_block1a36;
input 	ram_block1a44;
input 	ram_block1a52;
input 	ram_block1a60;
input 	ram_block1a20;
input 	ram_block1a28;
input 	ram_block1a4;
input 	ram_block1a12;
input 	ram_block1a37;
input 	ram_block1a45;
input 	ram_block1a53;
input 	ram_block1a61;
input 	ram_block1a21;
input 	ram_block1a29;
input 	ram_block1a5;
input 	ram_block1a13;
input 	ram_block1a38;
input 	ram_block1a46;
input 	ram_block1a54;
input 	ram_block1a62;
input 	ram_block1a22;
input 	ram_block1a30;
input 	ram_block1a6;
input 	ram_block1a14;
input 	ram_block1a39;
input 	ram_block1a47;
input 	ram_block1a55;
input 	ram_block1a63;
input 	ram_block1a23;
input 	ram_block1a31;
input 	ram_block1a7;
input 	ram_block1a15;
input 	out_address_reg_b_2;
input 	out_address_reg_b_0;
input 	out_address_reg_b_1;
output 	l3_w0_n0_mux_dataout;
output 	l3_w1_n0_mux_dataout;
output 	l3_w2_n0_mux_dataout;
output 	l3_w3_n0_mux_dataout;
output 	l3_w4_n0_mux_dataout;
output 	l3_w5_n0_mux_dataout;
output 	l3_w6_n0_mux_dataout;
output 	l3_w7_n0_mux_dataout;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \l3_w0_n0_mux_dataout~0_combout ;
wire \l3_w0_n0_mux_dataout~1_combout ;
wire \l3_w1_n0_mux_dataout~0_combout ;
wire \l3_w1_n0_mux_dataout~1_combout ;
wire \l3_w2_n0_mux_dataout~0_combout ;
wire \l3_w2_n0_mux_dataout~1_combout ;
wire \l3_w3_n0_mux_dataout~0_combout ;
wire \l3_w3_n0_mux_dataout~1_combout ;
wire \l3_w4_n0_mux_dataout~0_combout ;
wire \l3_w4_n0_mux_dataout~1_combout ;
wire \l3_w5_n0_mux_dataout~0_combout ;
wire \l3_w5_n0_mux_dataout~1_combout ;
wire \l3_w6_n0_mux_dataout~0_combout ;
wire \l3_w6_n0_mux_dataout~1_combout ;
wire \l3_w7_n0_mux_dataout~0_combout ;
wire \l3_w7_n0_mux_dataout~1_combout ;


twentynm_lcell_comb \l3_w0_n0_mux_dataout~2 (
	.dataa(!out_address_reg_b_2),
	.datab(!\l3_w0_n0_mux_dataout~0_combout ),
	.datac(!\l3_w0_n0_mux_dataout~1_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(l3_w0_n0_mux_dataout),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w0_n0_mux_dataout~2 .extended_lut = "off";
defparam \l3_w0_n0_mux_dataout~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \l3_w0_n0_mux_dataout~2 .shared_arith = "off";

twentynm_lcell_comb \l3_w1_n0_mux_dataout~2 (
	.dataa(!out_address_reg_b_2),
	.datab(!\l3_w1_n0_mux_dataout~0_combout ),
	.datac(!\l3_w1_n0_mux_dataout~1_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(l3_w1_n0_mux_dataout),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w1_n0_mux_dataout~2 .extended_lut = "off";
defparam \l3_w1_n0_mux_dataout~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \l3_w1_n0_mux_dataout~2 .shared_arith = "off";

twentynm_lcell_comb \l3_w2_n0_mux_dataout~2 (
	.dataa(!out_address_reg_b_2),
	.datab(!\l3_w2_n0_mux_dataout~0_combout ),
	.datac(!\l3_w2_n0_mux_dataout~1_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(l3_w2_n0_mux_dataout),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w2_n0_mux_dataout~2 .extended_lut = "off";
defparam \l3_w2_n0_mux_dataout~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \l3_w2_n0_mux_dataout~2 .shared_arith = "off";

twentynm_lcell_comb \l3_w3_n0_mux_dataout~2 (
	.dataa(!out_address_reg_b_2),
	.datab(!\l3_w3_n0_mux_dataout~0_combout ),
	.datac(!\l3_w3_n0_mux_dataout~1_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(l3_w3_n0_mux_dataout),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w3_n0_mux_dataout~2 .extended_lut = "off";
defparam \l3_w3_n0_mux_dataout~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \l3_w3_n0_mux_dataout~2 .shared_arith = "off";

twentynm_lcell_comb \l3_w4_n0_mux_dataout~2 (
	.dataa(!out_address_reg_b_2),
	.datab(!\l3_w4_n0_mux_dataout~0_combout ),
	.datac(!\l3_w4_n0_mux_dataout~1_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(l3_w4_n0_mux_dataout),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w4_n0_mux_dataout~2 .extended_lut = "off";
defparam \l3_w4_n0_mux_dataout~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \l3_w4_n0_mux_dataout~2 .shared_arith = "off";

twentynm_lcell_comb \l3_w5_n0_mux_dataout~2 (
	.dataa(!out_address_reg_b_2),
	.datab(!\l3_w5_n0_mux_dataout~0_combout ),
	.datac(!\l3_w5_n0_mux_dataout~1_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(l3_w5_n0_mux_dataout),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w5_n0_mux_dataout~2 .extended_lut = "off";
defparam \l3_w5_n0_mux_dataout~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \l3_w5_n0_mux_dataout~2 .shared_arith = "off";

twentynm_lcell_comb \l3_w6_n0_mux_dataout~2 (
	.dataa(!out_address_reg_b_2),
	.datab(!\l3_w6_n0_mux_dataout~0_combout ),
	.datac(!\l3_w6_n0_mux_dataout~1_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(l3_w6_n0_mux_dataout),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w6_n0_mux_dataout~2 .extended_lut = "off";
defparam \l3_w6_n0_mux_dataout~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \l3_w6_n0_mux_dataout~2 .shared_arith = "off";

twentynm_lcell_comb \l3_w7_n0_mux_dataout~2 (
	.dataa(!out_address_reg_b_2),
	.datab(!\l3_w7_n0_mux_dataout~0_combout ),
	.datac(!\l3_w7_n0_mux_dataout~1_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(l3_w7_n0_mux_dataout),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w7_n0_mux_dataout~2 .extended_lut = "off";
defparam \l3_w7_n0_mux_dataout~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \l3_w7_n0_mux_dataout~2 .shared_arith = "off";

twentynm_lcell_comb \l3_w0_n0_mux_dataout~0 (
	.dataa(!ram_block1a32),
	.datab(!ram_block1a40),
	.datac(!ram_block1a48),
	.datad(!ram_block1a56),
	.datae(!out_address_reg_b_0),
	.dataf(!out_address_reg_b_1),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\l3_w0_n0_mux_dataout~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w0_n0_mux_dataout~0 .extended_lut = "off";
defparam \l3_w0_n0_mux_dataout~0 .lut_mask = 64'h555533330F0F00FF;
defparam \l3_w0_n0_mux_dataout~0 .shared_arith = "off";

twentynm_lcell_comb \l3_w0_n0_mux_dataout~1 (
	.dataa(!out_address_reg_b_0),
	.datab(!out_address_reg_b_1),
	.datac(!ram_block1a16),
	.datad(!ram_block1a24),
	.datae(!ram_block1a0),
	.dataf(!ram_block1a8),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\l3_w0_n0_mux_dataout~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w0_n0_mux_dataout~1 .extended_lut = "off";
defparam \l3_w0_n0_mux_dataout~1 .lut_mask = 64'h02138A9B4657CEDF;
defparam \l3_w0_n0_mux_dataout~1 .shared_arith = "off";

twentynm_lcell_comb \l3_w1_n0_mux_dataout~0 (
	.dataa(!ram_block1a33),
	.datab(!ram_block1a41),
	.datac(!ram_block1a49),
	.datad(!ram_block1a57),
	.datae(!out_address_reg_b_0),
	.dataf(!out_address_reg_b_1),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\l3_w1_n0_mux_dataout~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w1_n0_mux_dataout~0 .extended_lut = "off";
defparam \l3_w1_n0_mux_dataout~0 .lut_mask = 64'h555533330F0F00FF;
defparam \l3_w1_n0_mux_dataout~0 .shared_arith = "off";

twentynm_lcell_comb \l3_w1_n0_mux_dataout~1 (
	.dataa(!out_address_reg_b_0),
	.datab(!out_address_reg_b_1),
	.datac(!ram_block1a17),
	.datad(!ram_block1a25),
	.datae(!ram_block1a1),
	.dataf(!ram_block1a9),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\l3_w1_n0_mux_dataout~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w1_n0_mux_dataout~1 .extended_lut = "off";
defparam \l3_w1_n0_mux_dataout~1 .lut_mask = 64'h02138A9B4657CEDF;
defparam \l3_w1_n0_mux_dataout~1 .shared_arith = "off";

twentynm_lcell_comb \l3_w2_n0_mux_dataout~0 (
	.dataa(!ram_block1a34),
	.datab(!ram_block1a42),
	.datac(!ram_block1a50),
	.datad(!ram_block1a58),
	.datae(!out_address_reg_b_0),
	.dataf(!out_address_reg_b_1),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\l3_w2_n0_mux_dataout~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w2_n0_mux_dataout~0 .extended_lut = "off";
defparam \l3_w2_n0_mux_dataout~0 .lut_mask = 64'h555533330F0F00FF;
defparam \l3_w2_n0_mux_dataout~0 .shared_arith = "off";

twentynm_lcell_comb \l3_w2_n0_mux_dataout~1 (
	.dataa(!out_address_reg_b_0),
	.datab(!out_address_reg_b_1),
	.datac(!ram_block1a18),
	.datad(!ram_block1a26),
	.datae(!ram_block1a2),
	.dataf(!ram_block1a10),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\l3_w2_n0_mux_dataout~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w2_n0_mux_dataout~1 .extended_lut = "off";
defparam \l3_w2_n0_mux_dataout~1 .lut_mask = 64'h02138A9B4657CEDF;
defparam \l3_w2_n0_mux_dataout~1 .shared_arith = "off";

twentynm_lcell_comb \l3_w3_n0_mux_dataout~0 (
	.dataa(!ram_block1a35),
	.datab(!ram_block1a43),
	.datac(!ram_block1a51),
	.datad(!ram_block1a59),
	.datae(!out_address_reg_b_0),
	.dataf(!out_address_reg_b_1),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\l3_w3_n0_mux_dataout~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w3_n0_mux_dataout~0 .extended_lut = "off";
defparam \l3_w3_n0_mux_dataout~0 .lut_mask = 64'h555533330F0F00FF;
defparam \l3_w3_n0_mux_dataout~0 .shared_arith = "off";

twentynm_lcell_comb \l3_w3_n0_mux_dataout~1 (
	.dataa(!out_address_reg_b_0),
	.datab(!out_address_reg_b_1),
	.datac(!ram_block1a19),
	.datad(!ram_block1a27),
	.datae(!ram_block1a3),
	.dataf(!ram_block1a11),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\l3_w3_n0_mux_dataout~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w3_n0_mux_dataout~1 .extended_lut = "off";
defparam \l3_w3_n0_mux_dataout~1 .lut_mask = 64'h02138A9B4657CEDF;
defparam \l3_w3_n0_mux_dataout~1 .shared_arith = "off";

twentynm_lcell_comb \l3_w4_n0_mux_dataout~0 (
	.dataa(!ram_block1a36),
	.datab(!ram_block1a44),
	.datac(!ram_block1a52),
	.datad(!ram_block1a60),
	.datae(!out_address_reg_b_0),
	.dataf(!out_address_reg_b_1),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\l3_w4_n0_mux_dataout~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w4_n0_mux_dataout~0 .extended_lut = "off";
defparam \l3_w4_n0_mux_dataout~0 .lut_mask = 64'h555533330F0F00FF;
defparam \l3_w4_n0_mux_dataout~0 .shared_arith = "off";

twentynm_lcell_comb \l3_w4_n0_mux_dataout~1 (
	.dataa(!out_address_reg_b_0),
	.datab(!out_address_reg_b_1),
	.datac(!ram_block1a20),
	.datad(!ram_block1a28),
	.datae(!ram_block1a4),
	.dataf(!ram_block1a12),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\l3_w4_n0_mux_dataout~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w4_n0_mux_dataout~1 .extended_lut = "off";
defparam \l3_w4_n0_mux_dataout~1 .lut_mask = 64'h02138A9B4657CEDF;
defparam \l3_w4_n0_mux_dataout~1 .shared_arith = "off";

twentynm_lcell_comb \l3_w5_n0_mux_dataout~0 (
	.dataa(!ram_block1a37),
	.datab(!ram_block1a45),
	.datac(!ram_block1a53),
	.datad(!ram_block1a61),
	.datae(!out_address_reg_b_0),
	.dataf(!out_address_reg_b_1),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\l3_w5_n0_mux_dataout~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w5_n0_mux_dataout~0 .extended_lut = "off";
defparam \l3_w5_n0_mux_dataout~0 .lut_mask = 64'h555533330F0F00FF;
defparam \l3_w5_n0_mux_dataout~0 .shared_arith = "off";

twentynm_lcell_comb \l3_w5_n0_mux_dataout~1 (
	.dataa(!out_address_reg_b_0),
	.datab(!out_address_reg_b_1),
	.datac(!ram_block1a21),
	.datad(!ram_block1a29),
	.datae(!ram_block1a5),
	.dataf(!ram_block1a13),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\l3_w5_n0_mux_dataout~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w5_n0_mux_dataout~1 .extended_lut = "off";
defparam \l3_w5_n0_mux_dataout~1 .lut_mask = 64'h02138A9B4657CEDF;
defparam \l3_w5_n0_mux_dataout~1 .shared_arith = "off";

twentynm_lcell_comb \l3_w6_n0_mux_dataout~0 (
	.dataa(!ram_block1a38),
	.datab(!ram_block1a46),
	.datac(!ram_block1a54),
	.datad(!ram_block1a62),
	.datae(!out_address_reg_b_0),
	.dataf(!out_address_reg_b_1),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\l3_w6_n0_mux_dataout~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w6_n0_mux_dataout~0 .extended_lut = "off";
defparam \l3_w6_n0_mux_dataout~0 .lut_mask = 64'h555533330F0F00FF;
defparam \l3_w6_n0_mux_dataout~0 .shared_arith = "off";

twentynm_lcell_comb \l3_w6_n0_mux_dataout~1 (
	.dataa(!out_address_reg_b_0),
	.datab(!out_address_reg_b_1),
	.datac(!ram_block1a22),
	.datad(!ram_block1a30),
	.datae(!ram_block1a6),
	.dataf(!ram_block1a14),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\l3_w6_n0_mux_dataout~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w6_n0_mux_dataout~1 .extended_lut = "off";
defparam \l3_w6_n0_mux_dataout~1 .lut_mask = 64'h02138A9B4657CEDF;
defparam \l3_w6_n0_mux_dataout~1 .shared_arith = "off";

twentynm_lcell_comb \l3_w7_n0_mux_dataout~0 (
	.dataa(!ram_block1a39),
	.datab(!ram_block1a47),
	.datac(!ram_block1a55),
	.datad(!ram_block1a63),
	.datae(!out_address_reg_b_0),
	.dataf(!out_address_reg_b_1),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\l3_w7_n0_mux_dataout~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w7_n0_mux_dataout~0 .extended_lut = "off";
defparam \l3_w7_n0_mux_dataout~0 .lut_mask = 64'h555533330F0F00FF;
defparam \l3_w7_n0_mux_dataout~0 .shared_arith = "off";

twentynm_lcell_comb \l3_w7_n0_mux_dataout~1 (
	.dataa(!out_address_reg_b_0),
	.datab(!out_address_reg_b_1),
	.datac(!ram_block1a23),
	.datad(!ram_block1a31),
	.datae(!ram_block1a7),
	.dataf(!ram_block1a15),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\l3_w7_n0_mux_dataout~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \l3_w7_n0_mux_dataout~1 .extended_lut = "off";
defparam \l3_w7_n0_mux_dataout~1 .lut_mask = 64'h02138A9B4657CEDF;
defparam \l3_w7_n0_mux_dataout~1 .shared_arith = "off";

endmodule

module out_fifo_cntr_fsa (
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
	counter_reg_bit_12,
	counter_reg_bit_15,
	counter_reg_bit_13,
	counter_reg_bit_14,
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
output 	counter_reg_bit_11;
output 	counter_reg_bit_12;
output 	counter_reg_bit_15;
output 	counter_reg_bit_13;
output 	counter_reg_bit_14;
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
wire \counter_comb_bita10~COUT ;
wire \counter_comb_bita11~sumout ;
wire \counter_comb_bita11~COUT ;
wire \counter_comb_bita12~sumout ;
wire \counter_comb_bita12~COUT ;
wire \counter_comb_bita13~COUT ;
wire \counter_comb_bita14~COUT ;
wire \counter_comb_bita15~sumout ;
wire \counter_comb_bita13~sumout ;
wire \counter_comb_bita14~sumout ;


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

dffeas \counter_reg_bit[12] (
	.clk(clock),
	.d(\counter_comb_bita12~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_12),
	.prn(vcc));
defparam \counter_reg_bit[12] .is_wysiwyg = "true";
defparam \counter_reg_bit[12] .power_up = "low";

dffeas \counter_reg_bit[15] (
	.clk(clock),
	.d(\counter_comb_bita15~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_15),
	.prn(vcc));
defparam \counter_reg_bit[15] .is_wysiwyg = "true";
defparam \counter_reg_bit[15] .power_up = "low";

dffeas \counter_reg_bit[13] (
	.clk(clock),
	.d(\counter_comb_bita13~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_13),
	.prn(vcc));
defparam \counter_reg_bit[13] .is_wysiwyg = "true";
defparam \counter_reg_bit[13] .power_up = "low";

dffeas \counter_reg_bit[14] (
	.clk(clock),
	.d(\counter_comb_bita14~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_14),
	.prn(vcc));
defparam \counter_reg_bit[14] .is_wysiwyg = "true";
defparam \counter_reg_bit[14] .power_up = "low";

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
	.cout(\counter_comb_bita11~COUT ),
	.shareout());
defparam counter_comb_bita11.extended_lut = "off";
defparam counter_comb_bita11.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita11.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita12(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_12),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita11~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita12~sumout ),
	.cout(\counter_comb_bita12~COUT ),
	.shareout());
defparam counter_comb_bita12.extended_lut = "off";
defparam counter_comb_bita12.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita12.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita13(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_13),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita12~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita13~sumout ),
	.cout(\counter_comb_bita13~COUT ),
	.shareout());
defparam counter_comb_bita13.extended_lut = "off";
defparam counter_comb_bita13.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita13.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita14(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_14),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita13~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita14~sumout ),
	.cout(\counter_comb_bita14~COUT ),
	.shareout());
defparam counter_comb_bita14.extended_lut = "off";
defparam counter_comb_bita14.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita14.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita15(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_15),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita14~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita15~sumout ),
	.cout(),
	.shareout());
defparam counter_comb_bita15.extended_lut = "off";
defparam counter_comb_bita15.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita15.shared_arith = "off";

endmodule

module out_fifo_cntr_gsa (
	counter_reg_bit_14,
	counter_reg_bit_15,
	counter_reg_bit_16,
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
	counter_reg_bit_12,
	counter_reg_bit_13,
	usedw_will_be_1,
	clock,
	sclr)/* synthesis synthesis_greybox=0 */;
output 	counter_reg_bit_14;
output 	counter_reg_bit_15;
output 	counter_reg_bit_16;
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
output 	counter_reg_bit_12;
output 	counter_reg_bit_13;
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
wire \counter_comb_bita3~COUT ;
wire \counter_comb_bita4~COUT ;
wire \counter_comb_bita5~COUT ;
wire \counter_comb_bita6~COUT ;
wire \counter_comb_bita7~COUT ;
wire \counter_comb_bita8~COUT ;
wire \counter_comb_bita9~COUT ;
wire \counter_comb_bita10~COUT ;
wire \counter_comb_bita11~COUT ;
wire \counter_comb_bita12~COUT ;
wire \counter_comb_bita13~COUT ;
wire \counter_comb_bita14~sumout ;
wire \counter_comb_bita14~COUT ;
wire \counter_comb_bita15~sumout ;
wire \counter_comb_bita15~COUT ;
wire \counter_comb_bita16~sumout ;
wire \counter_comb_bita0~sumout ;
wire \counter_comb_bita1~sumout ;
wire \counter_comb_bita2~sumout ;
wire \counter_comb_bita3~sumout ;
wire \counter_comb_bita4~sumout ;
wire \counter_comb_bita5~sumout ;
wire \counter_comb_bita6~sumout ;
wire \counter_comb_bita7~sumout ;
wire \counter_comb_bita8~sumout ;
wire \counter_comb_bita9~sumout ;
wire \counter_comb_bita10~sumout ;
wire \counter_comb_bita11~sumout ;
wire \counter_comb_bita12~sumout ;
wire \counter_comb_bita13~sumout ;


dffeas \counter_reg_bit[14] (
	.clk(clock),
	.d(\counter_comb_bita14~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_14),
	.prn(vcc));
defparam \counter_reg_bit[14] .is_wysiwyg = "true";
defparam \counter_reg_bit[14] .power_up = "low";

dffeas \counter_reg_bit[15] (
	.clk(clock),
	.d(\counter_comb_bita15~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_15),
	.prn(vcc));
defparam \counter_reg_bit[15] .is_wysiwyg = "true";
defparam \counter_reg_bit[15] .power_up = "low";

dffeas \counter_reg_bit[16] (
	.clk(clock),
	.d(\counter_comb_bita16~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_16),
	.prn(vcc));
defparam \counter_reg_bit[16] .is_wysiwyg = "true";
defparam \counter_reg_bit[16] .power_up = "low";

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

dffeas \counter_reg_bit[10] (
	.clk(clock),
	.d(\counter_comb_bita10~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
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
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_11),
	.prn(vcc));
defparam \counter_reg_bit[11] .is_wysiwyg = "true";
defparam \counter_reg_bit[11] .power_up = "low";

dffeas \counter_reg_bit[12] (
	.clk(clock),
	.d(\counter_comb_bita12~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_12),
	.prn(vcc));
defparam \counter_reg_bit[12] .is_wysiwyg = "true";
defparam \counter_reg_bit[12] .power_up = "low";

dffeas \counter_reg_bit[13] (
	.clk(clock),
	.d(\counter_comb_bita13~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_13),
	.prn(vcc));
defparam \counter_reg_bit[13] .is_wysiwyg = "true";
defparam \counter_reg_bit[13] .power_up = "low";

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
	.cout(\counter_comb_bita11~COUT ),
	.shareout());
defparam counter_comb_bita11.extended_lut = "off";
defparam counter_comb_bita11.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita11.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita12(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_12),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita11~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita12~sumout ),
	.cout(\counter_comb_bita12~COUT ),
	.shareout());
defparam counter_comb_bita12.extended_lut = "off";
defparam counter_comb_bita12.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita12.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita13(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_13),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita12~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita13~sumout ),
	.cout(\counter_comb_bita13~COUT ),
	.shareout());
defparam counter_comb_bita13.extended_lut = "off";
defparam counter_comb_bita13.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita13.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita14(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_14),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita13~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita14~sumout ),
	.cout(\counter_comb_bita14~COUT ),
	.shareout());
defparam counter_comb_bita14.extended_lut = "off";
defparam counter_comb_bita14.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita14.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita15(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_15),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita14~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita15~sumout ),
	.cout(\counter_comb_bita15~COUT ),
	.shareout());
defparam counter_comb_bita15.extended_lut = "off";
defparam counter_comb_bita15.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita15.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita16(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_16),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita15~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita16~sumout ),
	.cout(),
	.shareout());
defparam counter_comb_bita16.extended_lut = "off";
defparam counter_comb_bita16.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita16.shared_arith = "off";

endmodule

module out_fifo_cntr_ss6 (
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
	counter_reg_bit_12,
	counter_reg_bit_13,
	counter_reg_bit_14,
	counter_reg_bit_15,
	counter_reg_bit_16,
	usedw_will_be_1,
	valid_wreq,
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
output 	counter_reg_bit_10;
output 	counter_reg_bit_11;
output 	counter_reg_bit_12;
output 	counter_reg_bit_13;
output 	counter_reg_bit_14;
output 	counter_reg_bit_15;
output 	counter_reg_bit_16;
input 	usedw_will_be_1;
input 	valid_wreq;
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
wire \counter_comb_bita9~COUT ;
wire \counter_comb_bita10~sumout ;
wire \counter_comb_bita10~COUT ;
wire \counter_comb_bita11~sumout ;
wire \counter_comb_bita11~COUT ;
wire \counter_comb_bita12~sumout ;
wire \counter_comb_bita12~COUT ;
wire \counter_comb_bita13~sumout ;
wire \counter_comb_bita13~COUT ;
wire \counter_comb_bita14~sumout ;
wire \counter_comb_bita14~COUT ;
wire \counter_comb_bita15~sumout ;
wire \counter_comb_bita15~COUT ;
wire \counter_comb_bita16~sumout ;


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

dffeas \counter_reg_bit[10] (
	.clk(clock),
	.d(\counter_comb_bita10~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
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
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_11),
	.prn(vcc));
defparam \counter_reg_bit[11] .is_wysiwyg = "true";
defparam \counter_reg_bit[11] .power_up = "low";

dffeas \counter_reg_bit[12] (
	.clk(clock),
	.d(\counter_comb_bita12~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_12),
	.prn(vcc));
defparam \counter_reg_bit[12] .is_wysiwyg = "true";
defparam \counter_reg_bit[12] .power_up = "low";

dffeas \counter_reg_bit[13] (
	.clk(clock),
	.d(\counter_comb_bita13~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_13),
	.prn(vcc));
defparam \counter_reg_bit[13] .is_wysiwyg = "true";
defparam \counter_reg_bit[13] .power_up = "low";

dffeas \counter_reg_bit[14] (
	.clk(clock),
	.d(\counter_comb_bita14~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_14),
	.prn(vcc));
defparam \counter_reg_bit[14] .is_wysiwyg = "true";
defparam \counter_reg_bit[14] .power_up = "low";

dffeas \counter_reg_bit[15] (
	.clk(clock),
	.d(\counter_comb_bita15~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_15),
	.prn(vcc));
defparam \counter_reg_bit[15] .is_wysiwyg = "true";
defparam \counter_reg_bit[15] .power_up = "low";

dffeas \counter_reg_bit[16] (
	.clk(clock),
	.d(\counter_comb_bita16~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_16),
	.prn(vcc));
defparam \counter_reg_bit[16] .is_wysiwyg = "true";
defparam \counter_reg_bit[16] .power_up = "low";

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
	.cout(\counter_comb_bita11~COUT ),
	.shareout());
defparam counter_comb_bita11.extended_lut = "off";
defparam counter_comb_bita11.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita11.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita12(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_12),
	.datae(gnd),
	.dataf(!valid_wreq),
	.datag(gnd),
	.cin(\counter_comb_bita11~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita12~sumout ),
	.cout(\counter_comb_bita12~COUT ),
	.shareout());
defparam counter_comb_bita12.extended_lut = "off";
defparam counter_comb_bita12.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita12.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita13(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_13),
	.datae(gnd),
	.dataf(!valid_wreq),
	.datag(gnd),
	.cin(\counter_comb_bita12~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita13~sumout ),
	.cout(\counter_comb_bita13~COUT ),
	.shareout());
defparam counter_comb_bita13.extended_lut = "off";
defparam counter_comb_bita13.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita13.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita14(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_14),
	.datae(gnd),
	.dataf(!valid_wreq),
	.datag(gnd),
	.cin(\counter_comb_bita13~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita14~sumout ),
	.cout(\counter_comb_bita14~COUT ),
	.shareout());
defparam counter_comb_bita14.extended_lut = "off";
defparam counter_comb_bita14.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita14.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita15(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_15),
	.datae(gnd),
	.dataf(!valid_wreq),
	.datag(gnd),
	.cin(\counter_comb_bita14~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita15~sumout ),
	.cout(\counter_comb_bita15~COUT ),
	.shareout());
defparam counter_comb_bita15.extended_lut = "off";
defparam counter_comb_bita15.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita15.shared_arith = "off";

twentynm_lcell_comb counter_comb_bita16(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_16),
	.datae(gnd),
	.dataf(!valid_wreq),
	.datag(gnd),
	.cin(\counter_comb_bita15~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita16~sumout ),
	.cout(),
	.shareout());
defparam counter_comb_bita16.extended_lut = "off";
defparam counter_comb_bita16.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita16.shared_arith = "off";

endmodule
