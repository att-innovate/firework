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

// DATE "03/02/2017 16:55:21"

// 
// Device: Altera 10AS066N3F40E2SGE2 Package FBGA1517
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module raw_data_in_fifo (
	data,
	wrreq,
	rdreq,
	clock,
	sclr,
	q,
	full,
	empty)/* synthesis synthesis_greybox=0 */;
input 	[31:0] data;
input 	wrreq;
input 	rdreq;
input 	clock;
input 	sclr;
output 	[31:0] q;
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
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[8] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[9] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[10] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[11] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[12] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[13] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[14] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[15] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[16] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[17] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[18] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[19] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[20] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[21] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[22] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[23] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[24] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[25] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[26] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[27] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[28] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[29] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[30] ;
wire \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[31] ;
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
wire \data[8]~input_o ;
wire \data[9]~input_o ;
wire \data[10]~input_o ;
wire \data[11]~input_o ;
wire \data[12]~input_o ;
wire \data[13]~input_o ;
wire \data[14]~input_o ;
wire \data[15]~input_o ;
wire \data[16]~input_o ;
wire \data[17]~input_o ;
wire \data[18]~input_o ;
wire \data[19]~input_o ;
wire \data[20]~input_o ;
wire \data[21]~input_o ;
wire \data[22]~input_o ;
wire \data[23]~input_o ;
wire \data[24]~input_o ;
wire \data[25]~input_o ;
wire \data[26]~input_o ;
wire \data[27]~input_o ;
wire \data[28]~input_o ;
wire \data[29]~input_o ;
wire \data[30]~input_o ;
wire \data[31]~input_o ;
wire \sclr~input_o ;


raw_data_in_fifo_raw_data_in_fifo_fifo_160_v2ho2aa fifo_0(
	.q_b_0(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[0] ),
	.q_b_1(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[1] ),
	.q_b_2(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[2] ),
	.q_b_3(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[3] ),
	.q_b_4(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[4] ),
	.q_b_5(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[5] ),
	.q_b_6(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[6] ),
	.q_b_7(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[7] ),
	.q_b_8(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[8] ),
	.q_b_9(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[9] ),
	.q_b_10(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[10] ),
	.q_b_11(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[11] ),
	.q_b_12(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[12] ),
	.q_b_13(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[13] ),
	.q_b_14(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[14] ),
	.q_b_15(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[15] ),
	.q_b_16(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[16] ),
	.q_b_17(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[17] ),
	.q_b_18(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[18] ),
	.q_b_19(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[19] ),
	.q_b_20(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[20] ),
	.q_b_21(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[21] ),
	.q_b_22(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[22] ),
	.q_b_23(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[23] ),
	.q_b_24(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[24] ),
	.q_b_25(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[25] ),
	.q_b_26(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[26] ),
	.q_b_27(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[27] ),
	.q_b_28(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[28] ),
	.q_b_29(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[29] ),
	.q_b_30(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[30] ),
	.q_b_31(\fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[31] ),
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
	.data_8(\data[8]~input_o ),
	.data_9(\data[9]~input_o ),
	.data_10(\data[10]~input_o ),
	.data_11(\data[11]~input_o ),
	.data_12(\data[12]~input_o ),
	.data_13(\data[13]~input_o ),
	.data_14(\data[14]~input_o ),
	.data_15(\data[15]~input_o ),
	.data_16(\data[16]~input_o ),
	.data_17(\data[17]~input_o ),
	.data_18(\data[18]~input_o ),
	.data_19(\data[19]~input_o ),
	.data_20(\data[20]~input_o ),
	.data_21(\data[21]~input_o ),
	.data_22(\data[22]~input_o ),
	.data_23(\data[23]~input_o ),
	.data_24(\data[24]~input_o ),
	.data_25(\data[25]~input_o ),
	.data_26(\data[26]~input_o ),
	.data_27(\data[27]~input_o ),
	.data_28(\data[28]~input_o ),
	.data_29(\data[29]~input_o ),
	.data_30(\data[30]~input_o ),
	.data_31(\data[31]~input_o ),
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

assign \data[8]~input_o  = data[8];

assign \data[9]~input_o  = data[9];

assign \data[10]~input_o  = data[10];

assign \data[11]~input_o  = data[11];

assign \data[12]~input_o  = data[12];

assign \data[13]~input_o  = data[13];

assign \data[14]~input_o  = data[14];

assign \data[15]~input_o  = data[15];

assign \data[16]~input_o  = data[16];

assign \data[17]~input_o  = data[17];

assign \data[18]~input_o  = data[18];

assign \data[19]~input_o  = data[19];

assign \data[20]~input_o  = data[20];

assign \data[21]~input_o  = data[21];

assign \data[22]~input_o  = data[22];

assign \data[23]~input_o  = data[23];

assign \data[24]~input_o  = data[24];

assign \data[25]~input_o  = data[25];

assign \data[26]~input_o  = data[26];

assign \data[27]~input_o  = data[27];

assign \data[28]~input_o  = data[28];

assign \data[29]~input_o  = data[29];

assign \data[30]~input_o  = data[30];

assign \data[31]~input_o  = data[31];

assign \sclr~input_o  = sclr;

assign q[0] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[0] ;

assign q[1] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[1] ;

assign q[2] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[2] ;

assign q[3] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[3] ;

assign q[4] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[4] ;

assign q[5] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[5] ;

assign q[6] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[6] ;

assign q[7] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[7] ;

assign q[8] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[8] ;

assign q[9] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[9] ;

assign q[10] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[10] ;

assign q[11] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[11] ;

assign q[12] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[12] ;

assign q[13] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[13] ;

assign q[14] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[14] ;

assign q[15] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[15] ;

assign q[16] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[16] ;

assign q[17] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[17] ;

assign q[18] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[18] ;

assign q[19] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[19] ;

assign q[20] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[20] ;

assign q[21] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[21] ;

assign q[22] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[22] ;

assign q[23] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[23] ;

assign q[24] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[24] ;

assign q[25] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[25] ;

assign q[26] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[26] ;

assign q[27] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[27] ;

assign q[28] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[28] ;

assign q[29] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[29] ;

assign q[30] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[30] ;

assign q[31] = \fifo_0|scfifo_component|auto_generated|dpfifo|FIFOram|q_b[31] ;

assign full = \fifo_0|scfifo_component|auto_generated|dpfifo|full_dff~q ;

assign empty = ~ \fifo_0|scfifo_component|auto_generated|dpfifo|empty_dff~q ;

endmodule

module raw_data_in_fifo_raw_data_in_fifo_fifo_160_v2ho2aa (
	q_b_0,
	q_b_1,
	q_b_2,
	q_b_3,
	q_b_4,
	q_b_5,
	q_b_6,
	q_b_7,
	q_b_8,
	q_b_9,
	q_b_10,
	q_b_11,
	q_b_12,
	q_b_13,
	q_b_14,
	q_b_15,
	q_b_16,
	q_b_17,
	q_b_18,
	q_b_19,
	q_b_20,
	q_b_21,
	q_b_22,
	q_b_23,
	q_b_24,
	q_b_25,
	q_b_26,
	q_b_27,
	q_b_28,
	q_b_29,
	q_b_30,
	q_b_31,
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
	data_8,
	data_9,
	data_10,
	data_11,
	data_12,
	data_13,
	data_14,
	data_15,
	data_16,
	data_17,
	data_18,
	data_19,
	data_20,
	data_21,
	data_22,
	data_23,
	data_24,
	data_25,
	data_26,
	data_27,
	data_28,
	data_29,
	data_30,
	data_31,
	sclr)/* synthesis synthesis_greybox=0 */;
output 	q_b_0;
output 	q_b_1;
output 	q_b_2;
output 	q_b_3;
output 	q_b_4;
output 	q_b_5;
output 	q_b_6;
output 	q_b_7;
output 	q_b_8;
output 	q_b_9;
output 	q_b_10;
output 	q_b_11;
output 	q_b_12;
output 	q_b_13;
output 	q_b_14;
output 	q_b_15;
output 	q_b_16;
output 	q_b_17;
output 	q_b_18;
output 	q_b_19;
output 	q_b_20;
output 	q_b_21;
output 	q_b_22;
output 	q_b_23;
output 	q_b_24;
output 	q_b_25;
output 	q_b_26;
output 	q_b_27;
output 	q_b_28;
output 	q_b_29;
output 	q_b_30;
output 	q_b_31;
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
input 	data_8;
input 	data_9;
input 	data_10;
input 	data_11;
input 	data_12;
input 	data_13;
input 	data_14;
input 	data_15;
input 	data_16;
input 	data_17;
input 	data_18;
input 	data_19;
input 	data_20;
input 	data_21;
input 	data_22;
input 	data_23;
input 	data_24;
input 	data_25;
input 	data_26;
input 	data_27;
input 	data_28;
input 	data_29;
input 	data_30;
input 	data_31;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



raw_data_in_fifo_scfifo_1 scfifo_component(
	.q({q_b_31,q_b_30,q_b_29,q_b_28,q_b_27,q_b_26,q_b_25,q_b_24,q_b_23,q_b_22,q_b_21,q_b_20,q_b_19,q_b_18,q_b_17,q_b_16,q_b_15,q_b_14,q_b_13,q_b_12,q_b_11,q_b_10,q_b_9,q_b_8,q_b_7,q_b_6,q_b_5,q_b_4,q_b_3,q_b_2,q_b_1,q_b_0}),
	.full_dff(full_dff),
	.empty_dff(empty_dff),
	.wrreq(wrreq),
	.clock(clock),
	.rdreq(rdreq),
	.data({data_31,data_30,data_29,data_28,data_27,data_26,data_25,data_24,data_23,data_22,data_21,data_20,data_19,data_18,data_17,data_16,data_15,data_14,data_13,data_12,data_11,data_10,data_9,data_8,data_7,data_6,data_5,data_4,data_3,data_2,data_1,data_0}),
	.sclr(sclr));

endmodule

module raw_data_in_fifo_scfifo_1 (
	q,
	full_dff,
	empty_dff,
	wrreq,
	clock,
	rdreq,
	data,
	sclr)/* synthesis synthesis_greybox=0 */;
output 	[31:0] q;
output 	full_dff;
output 	empty_dff;
input 	wrreq;
input 	clock;
input 	rdreq;
input 	[31:0] data;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



raw_data_in_fifo_scfifo_koa1 auto_generated(
	.q({q[31],q[30],q[29],q[28],q[27],q[26],q[25],q[24],q[23],q[22],q[21],q[20],q[19],q[18],q[17],q[16],q[15],q[14],q[13],q[12],q[11],q[10],q[9],q[8],q[7],q[6],q[5],q[4],q[3],q[2],q[1],q[0]}),
	.full_dff(full_dff),
	.empty_dff(empty_dff),
	.wrreq(wrreq),
	.clock(clock),
	.rdreq(rdreq),
	.data({data[31],data[30],data[29],data[28],data[27],data[26],data[25],data[24],data[23],data[22],data[21],data[20],data[19],data[18],data[17],data[16],data[15],data[14],data[13],data[12],data[11],data[10],data[9],data[8],data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]}),
	.sclr(sclr));

endmodule

module raw_data_in_fifo_scfifo_koa1 (
	q,
	full_dff,
	empty_dff,
	wrreq,
	clock,
	rdreq,
	data,
	sclr)/* synthesis synthesis_greybox=0 */;
output 	[31:0] q;
output 	full_dff;
output 	empty_dff;
input 	wrreq;
input 	clock;
input 	rdreq;
input 	[31:0] data;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



raw_data_in_fifo_a_dpfifo_7ga1 dpfifo(
	.q({q[31],q[30],q[29],q[28],q[27],q[26],q[25],q[24],q[23],q[22],q[21],q[20],q[19],q[18],q[17],q[16],q[15],q[14],q[13],q[12],q[11],q[10],q[9],q[8],q[7],q[6],q[5],q[4],q[3],q[2],q[1],q[0]}),
	.full_dff1(full_dff),
	.empty_dff1(empty_dff),
	.wrreq(wrreq),
	.clock(clock),
	.rdreq(rdreq),
	.data({data[31],data[30],data[29],data[28],data[27],data[26],data[25],data[24],data[23],data[22],data[21],data[20],data[19],data[18],data[17],data[16],data[15],data[14],data[13],data[12],data[11],data[10],data[9],data[8],data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]}),
	.sclr(sclr));

endmodule

module raw_data_in_fifo_a_dpfifo_7ga1 (
	q,
	full_dff1,
	empty_dff1,
	wrreq,
	clock,
	rdreq,
	data,
	sclr)/* synthesis synthesis_greybox=0 */;
output 	[31:0] q;
output 	full_dff1;
output 	empty_dff1;
input 	wrreq;
input 	clock;
input 	rdreq;
input 	[31:0] data;
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
wire \_~0_combout ;
wire \_~1_combout ;
wire \_~2_combout ;
wire \valid_wreq~combout ;
wire \usedw_will_be_1~0_combout ;
wire \usedw_is_1_dff~q ;
wire \usedw_will_be_1~1_combout ;
wire \usedw_will_be_1~2_combout ;
wire \usedw_will_be_1~3_combout ;
wire \usedw_will_be_0~0_combout ;
wire \usedw_is_0_dff~q ;
wire \usedw_will_be_1~4_combout ;
wire \usedw_will_be_1~5_combout ;
wire \empty_dff~0_combout ;


raw_data_in_fifo_cntr_9sa wr_ptr(
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

raw_data_in_fifo_cntr_ls6 usedw_counter(
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

raw_data_in_fifo_cntr_1ra rd_ptr_msb(
	.counter_reg_bit_0(\rd_ptr_msb|counter_reg_bit[0]~q ),
	.counter_reg_bit_1(\rd_ptr_msb|counter_reg_bit[1]~q ),
	.counter_reg_bit_2(\rd_ptr_msb|counter_reg_bit[2]~q ),
	.counter_reg_bit_3(\rd_ptr_msb|counter_reg_bit[3]~q ),
	.counter_reg_bit_4(\rd_ptr_msb|counter_reg_bit[4]~q ),
	.counter_reg_bit_5(\rd_ptr_msb|counter_reg_bit[5]~q ),
	.counter_reg_bit_6(\rd_ptr_msb|counter_reg_bit[6]~q ),
	.counter_reg_bit_7(\rd_ptr_msb|counter_reg_bit[7]~q ),
	.counter_reg_bit_8(\rd_ptr_msb|counter_reg_bit[8]~q ),
	.empty_dff(empty_dff1),
	.rd_ptr_lsb(\rd_ptr_lsb~q ),
	.clock(clock),
	.rdreq(rdreq),
	.sclr(sclr));

raw_data_in_fifo_altsyncram_4in1 FIFOram(
	.q_b({q[31],q[30],q[29],q[28],q[27],q[26],q[25],q[24],q[23],q[22],q[21],q[20],q[19],q[18],q[17],q[16],q[15],q[14],q[13],q[12],q[11],q[10],q[9],q[8],q[7],q[6],q[5],q[4],q[3],q[2],q[1],q[0]}),
	.address_a({\wr_ptr|counter_reg_bit[9]~q ,\wr_ptr|counter_reg_bit[8]~q ,\wr_ptr|counter_reg_bit[7]~q ,\wr_ptr|counter_reg_bit[6]~q ,\wr_ptr|counter_reg_bit[5]~q ,\wr_ptr|counter_reg_bit[4]~q ,\wr_ptr|counter_reg_bit[3]~q ,\wr_ptr|counter_reg_bit[2]~q ,
\wr_ptr|counter_reg_bit[1]~q ,\wr_ptr|counter_reg_bit[0]~q }),
	.wren_a(\valid_wreq~combout ),
	.clocken1(\valid_rreq~combout ),
	.address_b({\ram_read_address[9]~9_combout ,\ram_read_address[8]~8_combout ,\ram_read_address[7]~7_combout ,\ram_read_address[6]~6_combout ,\ram_read_address[5]~5_combout ,\ram_read_address[4]~4_combout ,\ram_read_address[3]~3_combout ,\ram_read_address[2]~2_combout ,
\ram_read_address[1]~1_combout ,\ram_read_address[0]~0_combout }),
	.clock0(clock),
	.clock1(clock),
	.data_a({data[31],data[30],data[29],data[28],data[27],data[26],data[25],data[24],data[23],data[22],data[21],data[20],data[19],data[18],data[17],data[16],data[15],data[14],data[13],data[12],data[11],data[10],data[9],data[8],data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]}));

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

twentynm_lcell_comb \usedw_will_be_1~0 (
	.dataa(!full_dff1),
	.datab(!wrreq),
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
defparam \usedw_will_be_1~0 .lut_mask = 64'h2F2F2F2F2F2F2F2F;
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
	.dataa(!full_dff1),
	.datab(!empty_dff1),
	.datac(!wrreq),
	.datad(!rdreq),
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
defparam \usedw_will_be_1~1 .lut_mask = 64'h0A39FFFF0A39FFFF;
defparam \usedw_will_be_1~1 .shared_arith = "off";

twentynm_lcell_comb \usedw_will_be_1~2 (
	.dataa(!empty_dff1),
	.datab(!rdreq),
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

twentynm_lcell_comb \usedw_will_be_1~4 (
	.dataa(!full_dff1),
	.datab(!empty_dff1),
	.datac(!wrreq),
	.datad(!rdreq),
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
defparam \usedw_will_be_1~4 .lut_mask = 64'h0A08000000000000;
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

endmodule

module raw_data_in_fifo_altsyncram_4in1 (
	q_b,
	address_a,
	wren_a,
	clocken1,
	address_b,
	clock0,
	clock1,
	data_a)/* synthesis synthesis_greybox=0 */;
output 	[31:0] q_b;
input 	[9:0] address_a;
input 	wren_a;
input 	clocken1;
input 	[9:0] address_b;
input 	clock0;
input 	clock1;
input 	[31:0] data_a;

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
wire [143:0] ram_block1a8_PORTBDATAOUT_bus;
wire [143:0] ram_block1a9_PORTBDATAOUT_bus;
wire [143:0] ram_block1a10_PORTBDATAOUT_bus;
wire [143:0] ram_block1a11_PORTBDATAOUT_bus;
wire [143:0] ram_block1a12_PORTBDATAOUT_bus;
wire [143:0] ram_block1a13_PORTBDATAOUT_bus;
wire [143:0] ram_block1a14_PORTBDATAOUT_bus;
wire [143:0] ram_block1a15_PORTBDATAOUT_bus;
wire [143:0] ram_block1a16_PORTBDATAOUT_bus;
wire [143:0] ram_block1a17_PORTBDATAOUT_bus;
wire [143:0] ram_block1a18_PORTBDATAOUT_bus;
wire [143:0] ram_block1a19_PORTBDATAOUT_bus;
wire [143:0] ram_block1a20_PORTBDATAOUT_bus;
wire [143:0] ram_block1a21_PORTBDATAOUT_bus;
wire [143:0] ram_block1a22_PORTBDATAOUT_bus;
wire [143:0] ram_block1a23_PORTBDATAOUT_bus;
wire [143:0] ram_block1a24_PORTBDATAOUT_bus;
wire [143:0] ram_block1a25_PORTBDATAOUT_bus;
wire [143:0] ram_block1a26_PORTBDATAOUT_bus;
wire [143:0] ram_block1a27_PORTBDATAOUT_bus;
wire [143:0] ram_block1a28_PORTBDATAOUT_bus;
wire [143:0] ram_block1a29_PORTBDATAOUT_bus;
wire [143:0] ram_block1a30_PORTBDATAOUT_bus;
wire [143:0] ram_block1a31_PORTBDATAOUT_bus;

assign q_b[0] = ram_block1a0_PORTBDATAOUT_bus[0];

assign q_b[1] = ram_block1a1_PORTBDATAOUT_bus[0];

assign q_b[2] = ram_block1a2_PORTBDATAOUT_bus[0];

assign q_b[3] = ram_block1a3_PORTBDATAOUT_bus[0];

assign q_b[4] = ram_block1a4_PORTBDATAOUT_bus[0];

assign q_b[5] = ram_block1a5_PORTBDATAOUT_bus[0];

assign q_b[6] = ram_block1a6_PORTBDATAOUT_bus[0];

assign q_b[7] = ram_block1a7_PORTBDATAOUT_bus[0];

assign q_b[8] = ram_block1a8_PORTBDATAOUT_bus[0];

assign q_b[9] = ram_block1a9_PORTBDATAOUT_bus[0];

assign q_b[10] = ram_block1a10_PORTBDATAOUT_bus[0];

assign q_b[11] = ram_block1a11_PORTBDATAOUT_bus[0];

assign q_b[12] = ram_block1a12_PORTBDATAOUT_bus[0];

assign q_b[13] = ram_block1a13_PORTBDATAOUT_bus[0];

assign q_b[14] = ram_block1a14_PORTBDATAOUT_bus[0];

assign q_b[15] = ram_block1a15_PORTBDATAOUT_bus[0];

assign q_b[16] = ram_block1a16_PORTBDATAOUT_bus[0];

assign q_b[17] = ram_block1a17_PORTBDATAOUT_bus[0];

assign q_b[18] = ram_block1a18_PORTBDATAOUT_bus[0];

assign q_b[19] = ram_block1a19_PORTBDATAOUT_bus[0];

assign q_b[20] = ram_block1a20_PORTBDATAOUT_bus[0];

assign q_b[21] = ram_block1a21_PORTBDATAOUT_bus[0];

assign q_b[22] = ram_block1a22_PORTBDATAOUT_bus[0];

assign q_b[23] = ram_block1a23_PORTBDATAOUT_bus[0];

assign q_b[24] = ram_block1a24_PORTBDATAOUT_bus[0];

assign q_b[25] = ram_block1a25_PORTBDATAOUT_bus[0];

assign q_b[26] = ram_block1a26_PORTBDATAOUT_bus[0];

assign q_b[27] = ram_block1a27_PORTBDATAOUT_bus[0];

assign q_b[28] = ram_block1a28_PORTBDATAOUT_bus[0];

assign q_b[29] = ram_block1a29_PORTBDATAOUT_bus[0];

assign q_b[30] = ram_block1a30_PORTBDATAOUT_bus[0];

assign q_b[31] = ram_block1a31_PORTBDATAOUT_bus[0];

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
defparam ram_block1a0.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
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
defparam ram_block1a0.port_a_logical_ram_width = 32;
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
defparam ram_block1a0.port_b_logical_ram_width = 32;
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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a1_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a1.clk0_core_clock_enable = "ena0";
defparam ram_block1a1.clk1_output_clock_enable = "ena1";
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a1.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a1.operation_mode = "dual_port";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 10;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "none";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 1023;
defparam ram_block1a1.port_a_logical_ram_depth = 1024;
defparam ram_block1a1.port_a_logical_ram_width = 32;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a1.port_b_address_clear = "none";
defparam ram_block1a1.port_b_address_clock = "clock1";
defparam ram_block1a1.port_b_address_width = 10;
defparam ram_block1a1.port_b_data_out_clear = "none";
defparam ram_block1a1.port_b_data_out_clock = "clock1";
defparam ram_block1a1.port_b_data_width = 1;
defparam ram_block1a1.port_b_first_address = 0;
defparam ram_block1a1.port_b_first_bit_number = 1;
defparam ram_block1a1.port_b_last_address = 1023;
defparam ram_block1a1.port_b_logical_ram_depth = 1024;
defparam ram_block1a1.port_b_logical_ram_width = 32;
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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a2_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a2.clk0_core_clock_enable = "ena0";
defparam ram_block1a2.clk1_output_clock_enable = "ena1";
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a2.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a2.operation_mode = "dual_port";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 10;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "none";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 1023;
defparam ram_block1a2.port_a_logical_ram_depth = 1024;
defparam ram_block1a2.port_a_logical_ram_width = 32;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a2.port_b_address_clear = "none";
defparam ram_block1a2.port_b_address_clock = "clock1";
defparam ram_block1a2.port_b_address_width = 10;
defparam ram_block1a2.port_b_data_out_clear = "none";
defparam ram_block1a2.port_b_data_out_clock = "clock1";
defparam ram_block1a2.port_b_data_width = 1;
defparam ram_block1a2.port_b_first_address = 0;
defparam ram_block1a2.port_b_first_bit_number = 2;
defparam ram_block1a2.port_b_last_address = 1023;
defparam ram_block1a2.port_b_logical_ram_depth = 1024;
defparam ram_block1a2.port_b_logical_ram_width = 32;
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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a3_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a3.clk0_core_clock_enable = "ena0";
defparam ram_block1a3.clk1_output_clock_enable = "ena1";
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a3.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a3.operation_mode = "dual_port";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 10;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "none";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 1023;
defparam ram_block1a3.port_a_logical_ram_depth = 1024;
defparam ram_block1a3.port_a_logical_ram_width = 32;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a3.port_b_address_clear = "none";
defparam ram_block1a3.port_b_address_clock = "clock1";
defparam ram_block1a3.port_b_address_width = 10;
defparam ram_block1a3.port_b_data_out_clear = "none";
defparam ram_block1a3.port_b_data_out_clock = "clock1";
defparam ram_block1a3.port_b_data_width = 1;
defparam ram_block1a3.port_b_first_address = 0;
defparam ram_block1a3.port_b_first_bit_number = 3;
defparam ram_block1a3.port_b_last_address = 1023;
defparam ram_block1a3.port_b_logical_ram_depth = 1024;
defparam ram_block1a3.port_b_logical_ram_width = 32;
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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a4_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a4.clk0_core_clock_enable = "ena0";
defparam ram_block1a4.clk1_output_clock_enable = "ena1";
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a4.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a4.operation_mode = "dual_port";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 10;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "none";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 1023;
defparam ram_block1a4.port_a_logical_ram_depth = 1024;
defparam ram_block1a4.port_a_logical_ram_width = 32;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a4.port_b_address_clear = "none";
defparam ram_block1a4.port_b_address_clock = "clock1";
defparam ram_block1a4.port_b_address_width = 10;
defparam ram_block1a4.port_b_data_out_clear = "none";
defparam ram_block1a4.port_b_data_out_clock = "clock1";
defparam ram_block1a4.port_b_data_width = 1;
defparam ram_block1a4.port_b_first_address = 0;
defparam ram_block1a4.port_b_first_bit_number = 4;
defparam ram_block1a4.port_b_last_address = 1023;
defparam ram_block1a4.port_b_logical_ram_depth = 1024;
defparam ram_block1a4.port_b_logical_ram_width = 32;
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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a5_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a5.clk0_core_clock_enable = "ena0";
defparam ram_block1a5.clk1_output_clock_enable = "ena1";
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a5.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a5.operation_mode = "dual_port";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 10;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "none";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 1023;
defparam ram_block1a5.port_a_logical_ram_depth = 1024;
defparam ram_block1a5.port_a_logical_ram_width = 32;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a5.port_b_address_clear = "none";
defparam ram_block1a5.port_b_address_clock = "clock1";
defparam ram_block1a5.port_b_address_width = 10;
defparam ram_block1a5.port_b_data_out_clear = "none";
defparam ram_block1a5.port_b_data_out_clock = "clock1";
defparam ram_block1a5.port_b_data_width = 1;
defparam ram_block1a5.port_b_first_address = 0;
defparam ram_block1a5.port_b_first_bit_number = 5;
defparam ram_block1a5.port_b_last_address = 1023;
defparam ram_block1a5.port_b_logical_ram_depth = 1024;
defparam ram_block1a5.port_b_logical_ram_width = 32;
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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a6_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a6.clk0_core_clock_enable = "ena0";
defparam ram_block1a6.clk1_output_clock_enable = "ena1";
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a6.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a6.operation_mode = "dual_port";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 10;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "none";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 1023;
defparam ram_block1a6.port_a_logical_ram_depth = 1024;
defparam ram_block1a6.port_a_logical_ram_width = 32;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a6.port_b_address_clear = "none";
defparam ram_block1a6.port_b_address_clock = "clock1";
defparam ram_block1a6.port_b_address_width = 10;
defparam ram_block1a6.port_b_data_out_clear = "none";
defparam ram_block1a6.port_b_data_out_clock = "clock1";
defparam ram_block1a6.port_b_data_width = 1;
defparam ram_block1a6.port_b_first_address = 0;
defparam ram_block1a6.port_b_first_bit_number = 6;
defparam ram_block1a6.port_b_last_address = 1023;
defparam ram_block1a6.port_b_logical_ram_depth = 1024;
defparam ram_block1a6.port_b_logical_ram_width = 32;
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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a7_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a7.clk0_core_clock_enable = "ena0";
defparam ram_block1a7.clk1_output_clock_enable = "ena1";
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a7.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a7.operation_mode = "dual_port";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 10;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "none";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 1023;
defparam ram_block1a7.port_a_logical_ram_depth = 1024;
defparam ram_block1a7.port_a_logical_ram_width = 32;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a7.port_b_address_clear = "none";
defparam ram_block1a7.port_b_address_clock = "clock1";
defparam ram_block1a7.port_b_address_width = 10;
defparam ram_block1a7.port_b_data_out_clear = "none";
defparam ram_block1a7.port_b_data_out_clock = "clock1";
defparam ram_block1a7.port_b_data_width = 1;
defparam ram_block1a7.port_b_first_address = 0;
defparam ram_block1a7.port_b_first_bit_number = 7;
defparam ram_block1a7.port_b_last_address = 1023;
defparam ram_block1a7.port_b_logical_ram_depth = 1024;
defparam ram_block1a7.port_b_logical_ram_width = 32;
defparam ram_block1a7.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a7.port_b_read_enable_clock = "clock1";
defparam ram_block1a7.ram_block_type = "auto";

twentynm_ram_block ram_block1a8(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[8]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a8_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a8.clk0_core_clock_enable = "ena0";
defparam ram_block1a8.clk1_output_clock_enable = "ena1";
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a8.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a8.operation_mode = "dual_port";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 10;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "none";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 1023;
defparam ram_block1a8.port_a_logical_ram_depth = 1024;
defparam ram_block1a8.port_a_logical_ram_width = 32;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a8.port_b_address_clear = "none";
defparam ram_block1a8.port_b_address_clock = "clock1";
defparam ram_block1a8.port_b_address_width = 10;
defparam ram_block1a8.port_b_data_out_clear = "none";
defparam ram_block1a8.port_b_data_out_clock = "clock1";
defparam ram_block1a8.port_b_data_width = 1;
defparam ram_block1a8.port_b_first_address = 0;
defparam ram_block1a8.port_b_first_bit_number = 8;
defparam ram_block1a8.port_b_last_address = 1023;
defparam ram_block1a8.port_b_logical_ram_depth = 1024;
defparam ram_block1a8.port_b_logical_ram_width = 32;
defparam ram_block1a8.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a8.port_b_read_enable_clock = "clock1";
defparam ram_block1a8.ram_block_type = "auto";

twentynm_ram_block ram_block1a9(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[9]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a9_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a9.clk0_core_clock_enable = "ena0";
defparam ram_block1a9.clk1_output_clock_enable = "ena1";
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a9.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a9.operation_mode = "dual_port";
defparam ram_block1a9.port_a_address_clear = "none";
defparam ram_block1a9.port_a_address_width = 10;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "none";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 0;
defparam ram_block1a9.port_a_first_bit_number = 9;
defparam ram_block1a9.port_a_last_address = 1023;
defparam ram_block1a9.port_a_logical_ram_depth = 1024;
defparam ram_block1a9.port_a_logical_ram_width = 32;
defparam ram_block1a9.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a9.port_b_address_clear = "none";
defparam ram_block1a9.port_b_address_clock = "clock1";
defparam ram_block1a9.port_b_address_width = 10;
defparam ram_block1a9.port_b_data_out_clear = "none";
defparam ram_block1a9.port_b_data_out_clock = "clock1";
defparam ram_block1a9.port_b_data_width = 1;
defparam ram_block1a9.port_b_first_address = 0;
defparam ram_block1a9.port_b_first_bit_number = 9;
defparam ram_block1a9.port_b_last_address = 1023;
defparam ram_block1a9.port_b_logical_ram_depth = 1024;
defparam ram_block1a9.port_b_logical_ram_width = 32;
defparam ram_block1a9.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a9.port_b_read_enable_clock = "clock1";
defparam ram_block1a9.ram_block_type = "auto";

twentynm_ram_block ram_block1a10(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[10]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a10_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a10.clk0_core_clock_enable = "ena0";
defparam ram_block1a10.clk1_output_clock_enable = "ena1";
defparam ram_block1a10.data_interleave_offset_in_bits = 1;
defparam ram_block1a10.data_interleave_width_in_bits = 1;
defparam ram_block1a10.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a10.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a10.operation_mode = "dual_port";
defparam ram_block1a10.port_a_address_clear = "none";
defparam ram_block1a10.port_a_address_width = 10;
defparam ram_block1a10.port_a_data_out_clear = "none";
defparam ram_block1a10.port_a_data_out_clock = "none";
defparam ram_block1a10.port_a_data_width = 1;
defparam ram_block1a10.port_a_first_address = 0;
defparam ram_block1a10.port_a_first_bit_number = 10;
defparam ram_block1a10.port_a_last_address = 1023;
defparam ram_block1a10.port_a_logical_ram_depth = 1024;
defparam ram_block1a10.port_a_logical_ram_width = 32;
defparam ram_block1a10.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a10.port_b_address_clear = "none";
defparam ram_block1a10.port_b_address_clock = "clock1";
defparam ram_block1a10.port_b_address_width = 10;
defparam ram_block1a10.port_b_data_out_clear = "none";
defparam ram_block1a10.port_b_data_out_clock = "clock1";
defparam ram_block1a10.port_b_data_width = 1;
defparam ram_block1a10.port_b_first_address = 0;
defparam ram_block1a10.port_b_first_bit_number = 10;
defparam ram_block1a10.port_b_last_address = 1023;
defparam ram_block1a10.port_b_logical_ram_depth = 1024;
defparam ram_block1a10.port_b_logical_ram_width = 32;
defparam ram_block1a10.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a10.port_b_read_enable_clock = "clock1";
defparam ram_block1a10.ram_block_type = "auto";

twentynm_ram_block ram_block1a11(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[11]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a11_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a11.clk0_core_clock_enable = "ena0";
defparam ram_block1a11.clk1_output_clock_enable = "ena1";
defparam ram_block1a11.data_interleave_offset_in_bits = 1;
defparam ram_block1a11.data_interleave_width_in_bits = 1;
defparam ram_block1a11.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a11.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a11.operation_mode = "dual_port";
defparam ram_block1a11.port_a_address_clear = "none";
defparam ram_block1a11.port_a_address_width = 10;
defparam ram_block1a11.port_a_data_out_clear = "none";
defparam ram_block1a11.port_a_data_out_clock = "none";
defparam ram_block1a11.port_a_data_width = 1;
defparam ram_block1a11.port_a_first_address = 0;
defparam ram_block1a11.port_a_first_bit_number = 11;
defparam ram_block1a11.port_a_last_address = 1023;
defparam ram_block1a11.port_a_logical_ram_depth = 1024;
defparam ram_block1a11.port_a_logical_ram_width = 32;
defparam ram_block1a11.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a11.port_b_address_clear = "none";
defparam ram_block1a11.port_b_address_clock = "clock1";
defparam ram_block1a11.port_b_address_width = 10;
defparam ram_block1a11.port_b_data_out_clear = "none";
defparam ram_block1a11.port_b_data_out_clock = "clock1";
defparam ram_block1a11.port_b_data_width = 1;
defparam ram_block1a11.port_b_first_address = 0;
defparam ram_block1a11.port_b_first_bit_number = 11;
defparam ram_block1a11.port_b_last_address = 1023;
defparam ram_block1a11.port_b_logical_ram_depth = 1024;
defparam ram_block1a11.port_b_logical_ram_width = 32;
defparam ram_block1a11.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a11.port_b_read_enable_clock = "clock1";
defparam ram_block1a11.ram_block_type = "auto";

twentynm_ram_block ram_block1a12(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[12]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a12_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a12.clk0_core_clock_enable = "ena0";
defparam ram_block1a12.clk1_output_clock_enable = "ena1";
defparam ram_block1a12.data_interleave_offset_in_bits = 1;
defparam ram_block1a12.data_interleave_width_in_bits = 1;
defparam ram_block1a12.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a12.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a12.operation_mode = "dual_port";
defparam ram_block1a12.port_a_address_clear = "none";
defparam ram_block1a12.port_a_address_width = 10;
defparam ram_block1a12.port_a_data_out_clear = "none";
defparam ram_block1a12.port_a_data_out_clock = "none";
defparam ram_block1a12.port_a_data_width = 1;
defparam ram_block1a12.port_a_first_address = 0;
defparam ram_block1a12.port_a_first_bit_number = 12;
defparam ram_block1a12.port_a_last_address = 1023;
defparam ram_block1a12.port_a_logical_ram_depth = 1024;
defparam ram_block1a12.port_a_logical_ram_width = 32;
defparam ram_block1a12.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a12.port_b_address_clear = "none";
defparam ram_block1a12.port_b_address_clock = "clock1";
defparam ram_block1a12.port_b_address_width = 10;
defparam ram_block1a12.port_b_data_out_clear = "none";
defparam ram_block1a12.port_b_data_out_clock = "clock1";
defparam ram_block1a12.port_b_data_width = 1;
defparam ram_block1a12.port_b_first_address = 0;
defparam ram_block1a12.port_b_first_bit_number = 12;
defparam ram_block1a12.port_b_last_address = 1023;
defparam ram_block1a12.port_b_logical_ram_depth = 1024;
defparam ram_block1a12.port_b_logical_ram_width = 32;
defparam ram_block1a12.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a12.port_b_read_enable_clock = "clock1";
defparam ram_block1a12.ram_block_type = "auto";

twentynm_ram_block ram_block1a13(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[13]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a13_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a13.clk0_core_clock_enable = "ena0";
defparam ram_block1a13.clk1_output_clock_enable = "ena1";
defparam ram_block1a13.data_interleave_offset_in_bits = 1;
defparam ram_block1a13.data_interleave_width_in_bits = 1;
defparam ram_block1a13.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a13.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a13.operation_mode = "dual_port";
defparam ram_block1a13.port_a_address_clear = "none";
defparam ram_block1a13.port_a_address_width = 10;
defparam ram_block1a13.port_a_data_out_clear = "none";
defparam ram_block1a13.port_a_data_out_clock = "none";
defparam ram_block1a13.port_a_data_width = 1;
defparam ram_block1a13.port_a_first_address = 0;
defparam ram_block1a13.port_a_first_bit_number = 13;
defparam ram_block1a13.port_a_last_address = 1023;
defparam ram_block1a13.port_a_logical_ram_depth = 1024;
defparam ram_block1a13.port_a_logical_ram_width = 32;
defparam ram_block1a13.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a13.port_b_address_clear = "none";
defparam ram_block1a13.port_b_address_clock = "clock1";
defparam ram_block1a13.port_b_address_width = 10;
defparam ram_block1a13.port_b_data_out_clear = "none";
defparam ram_block1a13.port_b_data_out_clock = "clock1";
defparam ram_block1a13.port_b_data_width = 1;
defparam ram_block1a13.port_b_first_address = 0;
defparam ram_block1a13.port_b_first_bit_number = 13;
defparam ram_block1a13.port_b_last_address = 1023;
defparam ram_block1a13.port_b_logical_ram_depth = 1024;
defparam ram_block1a13.port_b_logical_ram_width = 32;
defparam ram_block1a13.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a13.port_b_read_enable_clock = "clock1";
defparam ram_block1a13.ram_block_type = "auto";

twentynm_ram_block ram_block1a14(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[14]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a14_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a14.clk0_core_clock_enable = "ena0";
defparam ram_block1a14.clk1_output_clock_enable = "ena1";
defparam ram_block1a14.data_interleave_offset_in_bits = 1;
defparam ram_block1a14.data_interleave_width_in_bits = 1;
defparam ram_block1a14.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a14.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a14.operation_mode = "dual_port";
defparam ram_block1a14.port_a_address_clear = "none";
defparam ram_block1a14.port_a_address_width = 10;
defparam ram_block1a14.port_a_data_out_clear = "none";
defparam ram_block1a14.port_a_data_out_clock = "none";
defparam ram_block1a14.port_a_data_width = 1;
defparam ram_block1a14.port_a_first_address = 0;
defparam ram_block1a14.port_a_first_bit_number = 14;
defparam ram_block1a14.port_a_last_address = 1023;
defparam ram_block1a14.port_a_logical_ram_depth = 1024;
defparam ram_block1a14.port_a_logical_ram_width = 32;
defparam ram_block1a14.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a14.port_b_address_clear = "none";
defparam ram_block1a14.port_b_address_clock = "clock1";
defparam ram_block1a14.port_b_address_width = 10;
defparam ram_block1a14.port_b_data_out_clear = "none";
defparam ram_block1a14.port_b_data_out_clock = "clock1";
defparam ram_block1a14.port_b_data_width = 1;
defparam ram_block1a14.port_b_first_address = 0;
defparam ram_block1a14.port_b_first_bit_number = 14;
defparam ram_block1a14.port_b_last_address = 1023;
defparam ram_block1a14.port_b_logical_ram_depth = 1024;
defparam ram_block1a14.port_b_logical_ram_width = 32;
defparam ram_block1a14.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a14.port_b_read_enable_clock = "clock1";
defparam ram_block1a14.ram_block_type = "auto";

twentynm_ram_block ram_block1a15(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[15]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a15_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a15.clk0_core_clock_enable = "ena0";
defparam ram_block1a15.clk1_output_clock_enable = "ena1";
defparam ram_block1a15.data_interleave_offset_in_bits = 1;
defparam ram_block1a15.data_interleave_width_in_bits = 1;
defparam ram_block1a15.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a15.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a15.operation_mode = "dual_port";
defparam ram_block1a15.port_a_address_clear = "none";
defparam ram_block1a15.port_a_address_width = 10;
defparam ram_block1a15.port_a_data_out_clear = "none";
defparam ram_block1a15.port_a_data_out_clock = "none";
defparam ram_block1a15.port_a_data_width = 1;
defparam ram_block1a15.port_a_first_address = 0;
defparam ram_block1a15.port_a_first_bit_number = 15;
defparam ram_block1a15.port_a_last_address = 1023;
defparam ram_block1a15.port_a_logical_ram_depth = 1024;
defparam ram_block1a15.port_a_logical_ram_width = 32;
defparam ram_block1a15.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a15.port_b_address_clear = "none";
defparam ram_block1a15.port_b_address_clock = "clock1";
defparam ram_block1a15.port_b_address_width = 10;
defparam ram_block1a15.port_b_data_out_clear = "none";
defparam ram_block1a15.port_b_data_out_clock = "clock1";
defparam ram_block1a15.port_b_data_width = 1;
defparam ram_block1a15.port_b_first_address = 0;
defparam ram_block1a15.port_b_first_bit_number = 15;
defparam ram_block1a15.port_b_last_address = 1023;
defparam ram_block1a15.port_b_logical_ram_depth = 1024;
defparam ram_block1a15.port_b_logical_ram_width = 32;
defparam ram_block1a15.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a15.port_b_read_enable_clock = "clock1";
defparam ram_block1a15.ram_block_type = "auto";

twentynm_ram_block ram_block1a16(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[16]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a16_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a16.clk0_core_clock_enable = "ena0";
defparam ram_block1a16.clk1_output_clock_enable = "ena1";
defparam ram_block1a16.data_interleave_offset_in_bits = 1;
defparam ram_block1a16.data_interleave_width_in_bits = 1;
defparam ram_block1a16.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a16.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a16.operation_mode = "dual_port";
defparam ram_block1a16.port_a_address_clear = "none";
defparam ram_block1a16.port_a_address_width = 10;
defparam ram_block1a16.port_a_data_out_clear = "none";
defparam ram_block1a16.port_a_data_out_clock = "none";
defparam ram_block1a16.port_a_data_width = 1;
defparam ram_block1a16.port_a_first_address = 0;
defparam ram_block1a16.port_a_first_bit_number = 16;
defparam ram_block1a16.port_a_last_address = 1023;
defparam ram_block1a16.port_a_logical_ram_depth = 1024;
defparam ram_block1a16.port_a_logical_ram_width = 32;
defparam ram_block1a16.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a16.port_b_address_clear = "none";
defparam ram_block1a16.port_b_address_clock = "clock1";
defparam ram_block1a16.port_b_address_width = 10;
defparam ram_block1a16.port_b_data_out_clear = "none";
defparam ram_block1a16.port_b_data_out_clock = "clock1";
defparam ram_block1a16.port_b_data_width = 1;
defparam ram_block1a16.port_b_first_address = 0;
defparam ram_block1a16.port_b_first_bit_number = 16;
defparam ram_block1a16.port_b_last_address = 1023;
defparam ram_block1a16.port_b_logical_ram_depth = 1024;
defparam ram_block1a16.port_b_logical_ram_width = 32;
defparam ram_block1a16.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a16.port_b_read_enable_clock = "clock1";
defparam ram_block1a16.ram_block_type = "auto";

twentynm_ram_block ram_block1a17(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[17]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a17_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a17.clk0_core_clock_enable = "ena0";
defparam ram_block1a17.clk1_output_clock_enable = "ena1";
defparam ram_block1a17.data_interleave_offset_in_bits = 1;
defparam ram_block1a17.data_interleave_width_in_bits = 1;
defparam ram_block1a17.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a17.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a17.operation_mode = "dual_port";
defparam ram_block1a17.port_a_address_clear = "none";
defparam ram_block1a17.port_a_address_width = 10;
defparam ram_block1a17.port_a_data_out_clear = "none";
defparam ram_block1a17.port_a_data_out_clock = "none";
defparam ram_block1a17.port_a_data_width = 1;
defparam ram_block1a17.port_a_first_address = 0;
defparam ram_block1a17.port_a_first_bit_number = 17;
defparam ram_block1a17.port_a_last_address = 1023;
defparam ram_block1a17.port_a_logical_ram_depth = 1024;
defparam ram_block1a17.port_a_logical_ram_width = 32;
defparam ram_block1a17.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a17.port_b_address_clear = "none";
defparam ram_block1a17.port_b_address_clock = "clock1";
defparam ram_block1a17.port_b_address_width = 10;
defparam ram_block1a17.port_b_data_out_clear = "none";
defparam ram_block1a17.port_b_data_out_clock = "clock1";
defparam ram_block1a17.port_b_data_width = 1;
defparam ram_block1a17.port_b_first_address = 0;
defparam ram_block1a17.port_b_first_bit_number = 17;
defparam ram_block1a17.port_b_last_address = 1023;
defparam ram_block1a17.port_b_logical_ram_depth = 1024;
defparam ram_block1a17.port_b_logical_ram_width = 32;
defparam ram_block1a17.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a17.port_b_read_enable_clock = "clock1";
defparam ram_block1a17.ram_block_type = "auto";

twentynm_ram_block ram_block1a18(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[18]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a18_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a18.clk0_core_clock_enable = "ena0";
defparam ram_block1a18.clk1_output_clock_enable = "ena1";
defparam ram_block1a18.data_interleave_offset_in_bits = 1;
defparam ram_block1a18.data_interleave_width_in_bits = 1;
defparam ram_block1a18.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a18.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a18.operation_mode = "dual_port";
defparam ram_block1a18.port_a_address_clear = "none";
defparam ram_block1a18.port_a_address_width = 10;
defparam ram_block1a18.port_a_data_out_clear = "none";
defparam ram_block1a18.port_a_data_out_clock = "none";
defparam ram_block1a18.port_a_data_width = 1;
defparam ram_block1a18.port_a_first_address = 0;
defparam ram_block1a18.port_a_first_bit_number = 18;
defparam ram_block1a18.port_a_last_address = 1023;
defparam ram_block1a18.port_a_logical_ram_depth = 1024;
defparam ram_block1a18.port_a_logical_ram_width = 32;
defparam ram_block1a18.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a18.port_b_address_clear = "none";
defparam ram_block1a18.port_b_address_clock = "clock1";
defparam ram_block1a18.port_b_address_width = 10;
defparam ram_block1a18.port_b_data_out_clear = "none";
defparam ram_block1a18.port_b_data_out_clock = "clock1";
defparam ram_block1a18.port_b_data_width = 1;
defparam ram_block1a18.port_b_first_address = 0;
defparam ram_block1a18.port_b_first_bit_number = 18;
defparam ram_block1a18.port_b_last_address = 1023;
defparam ram_block1a18.port_b_logical_ram_depth = 1024;
defparam ram_block1a18.port_b_logical_ram_width = 32;
defparam ram_block1a18.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a18.port_b_read_enable_clock = "clock1";
defparam ram_block1a18.ram_block_type = "auto";

twentynm_ram_block ram_block1a19(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[19]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a19_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a19.clk0_core_clock_enable = "ena0";
defparam ram_block1a19.clk1_output_clock_enable = "ena1";
defparam ram_block1a19.data_interleave_offset_in_bits = 1;
defparam ram_block1a19.data_interleave_width_in_bits = 1;
defparam ram_block1a19.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a19.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a19.operation_mode = "dual_port";
defparam ram_block1a19.port_a_address_clear = "none";
defparam ram_block1a19.port_a_address_width = 10;
defparam ram_block1a19.port_a_data_out_clear = "none";
defparam ram_block1a19.port_a_data_out_clock = "none";
defparam ram_block1a19.port_a_data_width = 1;
defparam ram_block1a19.port_a_first_address = 0;
defparam ram_block1a19.port_a_first_bit_number = 19;
defparam ram_block1a19.port_a_last_address = 1023;
defparam ram_block1a19.port_a_logical_ram_depth = 1024;
defparam ram_block1a19.port_a_logical_ram_width = 32;
defparam ram_block1a19.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a19.port_b_address_clear = "none";
defparam ram_block1a19.port_b_address_clock = "clock1";
defparam ram_block1a19.port_b_address_width = 10;
defparam ram_block1a19.port_b_data_out_clear = "none";
defparam ram_block1a19.port_b_data_out_clock = "clock1";
defparam ram_block1a19.port_b_data_width = 1;
defparam ram_block1a19.port_b_first_address = 0;
defparam ram_block1a19.port_b_first_bit_number = 19;
defparam ram_block1a19.port_b_last_address = 1023;
defparam ram_block1a19.port_b_logical_ram_depth = 1024;
defparam ram_block1a19.port_b_logical_ram_width = 32;
defparam ram_block1a19.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a19.port_b_read_enable_clock = "clock1";
defparam ram_block1a19.ram_block_type = "auto";

twentynm_ram_block ram_block1a20(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[20]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a20_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a20.clk0_core_clock_enable = "ena0";
defparam ram_block1a20.clk1_output_clock_enable = "ena1";
defparam ram_block1a20.data_interleave_offset_in_bits = 1;
defparam ram_block1a20.data_interleave_width_in_bits = 1;
defparam ram_block1a20.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a20.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a20.operation_mode = "dual_port";
defparam ram_block1a20.port_a_address_clear = "none";
defparam ram_block1a20.port_a_address_width = 10;
defparam ram_block1a20.port_a_data_out_clear = "none";
defparam ram_block1a20.port_a_data_out_clock = "none";
defparam ram_block1a20.port_a_data_width = 1;
defparam ram_block1a20.port_a_first_address = 0;
defparam ram_block1a20.port_a_first_bit_number = 20;
defparam ram_block1a20.port_a_last_address = 1023;
defparam ram_block1a20.port_a_logical_ram_depth = 1024;
defparam ram_block1a20.port_a_logical_ram_width = 32;
defparam ram_block1a20.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a20.port_b_address_clear = "none";
defparam ram_block1a20.port_b_address_clock = "clock1";
defparam ram_block1a20.port_b_address_width = 10;
defparam ram_block1a20.port_b_data_out_clear = "none";
defparam ram_block1a20.port_b_data_out_clock = "clock1";
defparam ram_block1a20.port_b_data_width = 1;
defparam ram_block1a20.port_b_first_address = 0;
defparam ram_block1a20.port_b_first_bit_number = 20;
defparam ram_block1a20.port_b_last_address = 1023;
defparam ram_block1a20.port_b_logical_ram_depth = 1024;
defparam ram_block1a20.port_b_logical_ram_width = 32;
defparam ram_block1a20.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a20.port_b_read_enable_clock = "clock1";
defparam ram_block1a20.ram_block_type = "auto";

twentynm_ram_block ram_block1a21(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[21]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a21_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a21.clk0_core_clock_enable = "ena0";
defparam ram_block1a21.clk1_output_clock_enable = "ena1";
defparam ram_block1a21.data_interleave_offset_in_bits = 1;
defparam ram_block1a21.data_interleave_width_in_bits = 1;
defparam ram_block1a21.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a21.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a21.operation_mode = "dual_port";
defparam ram_block1a21.port_a_address_clear = "none";
defparam ram_block1a21.port_a_address_width = 10;
defparam ram_block1a21.port_a_data_out_clear = "none";
defparam ram_block1a21.port_a_data_out_clock = "none";
defparam ram_block1a21.port_a_data_width = 1;
defparam ram_block1a21.port_a_first_address = 0;
defparam ram_block1a21.port_a_first_bit_number = 21;
defparam ram_block1a21.port_a_last_address = 1023;
defparam ram_block1a21.port_a_logical_ram_depth = 1024;
defparam ram_block1a21.port_a_logical_ram_width = 32;
defparam ram_block1a21.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a21.port_b_address_clear = "none";
defparam ram_block1a21.port_b_address_clock = "clock1";
defparam ram_block1a21.port_b_address_width = 10;
defparam ram_block1a21.port_b_data_out_clear = "none";
defparam ram_block1a21.port_b_data_out_clock = "clock1";
defparam ram_block1a21.port_b_data_width = 1;
defparam ram_block1a21.port_b_first_address = 0;
defparam ram_block1a21.port_b_first_bit_number = 21;
defparam ram_block1a21.port_b_last_address = 1023;
defparam ram_block1a21.port_b_logical_ram_depth = 1024;
defparam ram_block1a21.port_b_logical_ram_width = 32;
defparam ram_block1a21.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a21.port_b_read_enable_clock = "clock1";
defparam ram_block1a21.ram_block_type = "auto";

twentynm_ram_block ram_block1a22(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[22]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a22_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a22.clk0_core_clock_enable = "ena0";
defparam ram_block1a22.clk1_output_clock_enable = "ena1";
defparam ram_block1a22.data_interleave_offset_in_bits = 1;
defparam ram_block1a22.data_interleave_width_in_bits = 1;
defparam ram_block1a22.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a22.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a22.operation_mode = "dual_port";
defparam ram_block1a22.port_a_address_clear = "none";
defparam ram_block1a22.port_a_address_width = 10;
defparam ram_block1a22.port_a_data_out_clear = "none";
defparam ram_block1a22.port_a_data_out_clock = "none";
defparam ram_block1a22.port_a_data_width = 1;
defparam ram_block1a22.port_a_first_address = 0;
defparam ram_block1a22.port_a_first_bit_number = 22;
defparam ram_block1a22.port_a_last_address = 1023;
defparam ram_block1a22.port_a_logical_ram_depth = 1024;
defparam ram_block1a22.port_a_logical_ram_width = 32;
defparam ram_block1a22.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a22.port_b_address_clear = "none";
defparam ram_block1a22.port_b_address_clock = "clock1";
defparam ram_block1a22.port_b_address_width = 10;
defparam ram_block1a22.port_b_data_out_clear = "none";
defparam ram_block1a22.port_b_data_out_clock = "clock1";
defparam ram_block1a22.port_b_data_width = 1;
defparam ram_block1a22.port_b_first_address = 0;
defparam ram_block1a22.port_b_first_bit_number = 22;
defparam ram_block1a22.port_b_last_address = 1023;
defparam ram_block1a22.port_b_logical_ram_depth = 1024;
defparam ram_block1a22.port_b_logical_ram_width = 32;
defparam ram_block1a22.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a22.port_b_read_enable_clock = "clock1";
defparam ram_block1a22.ram_block_type = "auto";

twentynm_ram_block ram_block1a23(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[23]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a23_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a23.clk0_core_clock_enable = "ena0";
defparam ram_block1a23.clk1_output_clock_enable = "ena1";
defparam ram_block1a23.data_interleave_offset_in_bits = 1;
defparam ram_block1a23.data_interleave_width_in_bits = 1;
defparam ram_block1a23.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a23.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a23.operation_mode = "dual_port";
defparam ram_block1a23.port_a_address_clear = "none";
defparam ram_block1a23.port_a_address_width = 10;
defparam ram_block1a23.port_a_data_out_clear = "none";
defparam ram_block1a23.port_a_data_out_clock = "none";
defparam ram_block1a23.port_a_data_width = 1;
defparam ram_block1a23.port_a_first_address = 0;
defparam ram_block1a23.port_a_first_bit_number = 23;
defparam ram_block1a23.port_a_last_address = 1023;
defparam ram_block1a23.port_a_logical_ram_depth = 1024;
defparam ram_block1a23.port_a_logical_ram_width = 32;
defparam ram_block1a23.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a23.port_b_address_clear = "none";
defparam ram_block1a23.port_b_address_clock = "clock1";
defparam ram_block1a23.port_b_address_width = 10;
defparam ram_block1a23.port_b_data_out_clear = "none";
defparam ram_block1a23.port_b_data_out_clock = "clock1";
defparam ram_block1a23.port_b_data_width = 1;
defparam ram_block1a23.port_b_first_address = 0;
defparam ram_block1a23.port_b_first_bit_number = 23;
defparam ram_block1a23.port_b_last_address = 1023;
defparam ram_block1a23.port_b_logical_ram_depth = 1024;
defparam ram_block1a23.port_b_logical_ram_width = 32;
defparam ram_block1a23.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a23.port_b_read_enable_clock = "clock1";
defparam ram_block1a23.ram_block_type = "auto";

twentynm_ram_block ram_block1a24(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[24]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a24_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a24.clk0_core_clock_enable = "ena0";
defparam ram_block1a24.clk1_output_clock_enable = "ena1";
defparam ram_block1a24.data_interleave_offset_in_bits = 1;
defparam ram_block1a24.data_interleave_width_in_bits = 1;
defparam ram_block1a24.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a24.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a24.operation_mode = "dual_port";
defparam ram_block1a24.port_a_address_clear = "none";
defparam ram_block1a24.port_a_address_width = 10;
defparam ram_block1a24.port_a_data_out_clear = "none";
defparam ram_block1a24.port_a_data_out_clock = "none";
defparam ram_block1a24.port_a_data_width = 1;
defparam ram_block1a24.port_a_first_address = 0;
defparam ram_block1a24.port_a_first_bit_number = 24;
defparam ram_block1a24.port_a_last_address = 1023;
defparam ram_block1a24.port_a_logical_ram_depth = 1024;
defparam ram_block1a24.port_a_logical_ram_width = 32;
defparam ram_block1a24.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a24.port_b_address_clear = "none";
defparam ram_block1a24.port_b_address_clock = "clock1";
defparam ram_block1a24.port_b_address_width = 10;
defparam ram_block1a24.port_b_data_out_clear = "none";
defparam ram_block1a24.port_b_data_out_clock = "clock1";
defparam ram_block1a24.port_b_data_width = 1;
defparam ram_block1a24.port_b_first_address = 0;
defparam ram_block1a24.port_b_first_bit_number = 24;
defparam ram_block1a24.port_b_last_address = 1023;
defparam ram_block1a24.port_b_logical_ram_depth = 1024;
defparam ram_block1a24.port_b_logical_ram_width = 32;
defparam ram_block1a24.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a24.port_b_read_enable_clock = "clock1";
defparam ram_block1a24.ram_block_type = "auto";

twentynm_ram_block ram_block1a25(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[25]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a25_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a25.clk0_core_clock_enable = "ena0";
defparam ram_block1a25.clk1_output_clock_enable = "ena1";
defparam ram_block1a25.data_interleave_offset_in_bits = 1;
defparam ram_block1a25.data_interleave_width_in_bits = 1;
defparam ram_block1a25.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a25.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a25.operation_mode = "dual_port";
defparam ram_block1a25.port_a_address_clear = "none";
defparam ram_block1a25.port_a_address_width = 10;
defparam ram_block1a25.port_a_data_out_clear = "none";
defparam ram_block1a25.port_a_data_out_clock = "none";
defparam ram_block1a25.port_a_data_width = 1;
defparam ram_block1a25.port_a_first_address = 0;
defparam ram_block1a25.port_a_first_bit_number = 25;
defparam ram_block1a25.port_a_last_address = 1023;
defparam ram_block1a25.port_a_logical_ram_depth = 1024;
defparam ram_block1a25.port_a_logical_ram_width = 32;
defparam ram_block1a25.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a25.port_b_address_clear = "none";
defparam ram_block1a25.port_b_address_clock = "clock1";
defparam ram_block1a25.port_b_address_width = 10;
defparam ram_block1a25.port_b_data_out_clear = "none";
defparam ram_block1a25.port_b_data_out_clock = "clock1";
defparam ram_block1a25.port_b_data_width = 1;
defparam ram_block1a25.port_b_first_address = 0;
defparam ram_block1a25.port_b_first_bit_number = 25;
defparam ram_block1a25.port_b_last_address = 1023;
defparam ram_block1a25.port_b_logical_ram_depth = 1024;
defparam ram_block1a25.port_b_logical_ram_width = 32;
defparam ram_block1a25.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a25.port_b_read_enable_clock = "clock1";
defparam ram_block1a25.ram_block_type = "auto";

twentynm_ram_block ram_block1a26(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[26]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a26_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a26.clk0_core_clock_enable = "ena0";
defparam ram_block1a26.clk1_output_clock_enable = "ena1";
defparam ram_block1a26.data_interleave_offset_in_bits = 1;
defparam ram_block1a26.data_interleave_width_in_bits = 1;
defparam ram_block1a26.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a26.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a26.operation_mode = "dual_port";
defparam ram_block1a26.port_a_address_clear = "none";
defparam ram_block1a26.port_a_address_width = 10;
defparam ram_block1a26.port_a_data_out_clear = "none";
defparam ram_block1a26.port_a_data_out_clock = "none";
defparam ram_block1a26.port_a_data_width = 1;
defparam ram_block1a26.port_a_first_address = 0;
defparam ram_block1a26.port_a_first_bit_number = 26;
defparam ram_block1a26.port_a_last_address = 1023;
defparam ram_block1a26.port_a_logical_ram_depth = 1024;
defparam ram_block1a26.port_a_logical_ram_width = 32;
defparam ram_block1a26.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a26.port_b_address_clear = "none";
defparam ram_block1a26.port_b_address_clock = "clock1";
defparam ram_block1a26.port_b_address_width = 10;
defparam ram_block1a26.port_b_data_out_clear = "none";
defparam ram_block1a26.port_b_data_out_clock = "clock1";
defparam ram_block1a26.port_b_data_width = 1;
defparam ram_block1a26.port_b_first_address = 0;
defparam ram_block1a26.port_b_first_bit_number = 26;
defparam ram_block1a26.port_b_last_address = 1023;
defparam ram_block1a26.port_b_logical_ram_depth = 1024;
defparam ram_block1a26.port_b_logical_ram_width = 32;
defparam ram_block1a26.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a26.port_b_read_enable_clock = "clock1";
defparam ram_block1a26.ram_block_type = "auto";

twentynm_ram_block ram_block1a27(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[27]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a27_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a27.clk0_core_clock_enable = "ena0";
defparam ram_block1a27.clk1_output_clock_enable = "ena1";
defparam ram_block1a27.data_interleave_offset_in_bits = 1;
defparam ram_block1a27.data_interleave_width_in_bits = 1;
defparam ram_block1a27.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a27.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a27.operation_mode = "dual_port";
defparam ram_block1a27.port_a_address_clear = "none";
defparam ram_block1a27.port_a_address_width = 10;
defparam ram_block1a27.port_a_data_out_clear = "none";
defparam ram_block1a27.port_a_data_out_clock = "none";
defparam ram_block1a27.port_a_data_width = 1;
defparam ram_block1a27.port_a_first_address = 0;
defparam ram_block1a27.port_a_first_bit_number = 27;
defparam ram_block1a27.port_a_last_address = 1023;
defparam ram_block1a27.port_a_logical_ram_depth = 1024;
defparam ram_block1a27.port_a_logical_ram_width = 32;
defparam ram_block1a27.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a27.port_b_address_clear = "none";
defparam ram_block1a27.port_b_address_clock = "clock1";
defparam ram_block1a27.port_b_address_width = 10;
defparam ram_block1a27.port_b_data_out_clear = "none";
defparam ram_block1a27.port_b_data_out_clock = "clock1";
defparam ram_block1a27.port_b_data_width = 1;
defparam ram_block1a27.port_b_first_address = 0;
defparam ram_block1a27.port_b_first_bit_number = 27;
defparam ram_block1a27.port_b_last_address = 1023;
defparam ram_block1a27.port_b_logical_ram_depth = 1024;
defparam ram_block1a27.port_b_logical_ram_width = 32;
defparam ram_block1a27.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a27.port_b_read_enable_clock = "clock1";
defparam ram_block1a27.ram_block_type = "auto";

twentynm_ram_block ram_block1a28(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[28]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a28_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a28.clk0_core_clock_enable = "ena0";
defparam ram_block1a28.clk1_output_clock_enable = "ena1";
defparam ram_block1a28.data_interleave_offset_in_bits = 1;
defparam ram_block1a28.data_interleave_width_in_bits = 1;
defparam ram_block1a28.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a28.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a28.operation_mode = "dual_port";
defparam ram_block1a28.port_a_address_clear = "none";
defparam ram_block1a28.port_a_address_width = 10;
defparam ram_block1a28.port_a_data_out_clear = "none";
defparam ram_block1a28.port_a_data_out_clock = "none";
defparam ram_block1a28.port_a_data_width = 1;
defparam ram_block1a28.port_a_first_address = 0;
defparam ram_block1a28.port_a_first_bit_number = 28;
defparam ram_block1a28.port_a_last_address = 1023;
defparam ram_block1a28.port_a_logical_ram_depth = 1024;
defparam ram_block1a28.port_a_logical_ram_width = 32;
defparam ram_block1a28.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a28.port_b_address_clear = "none";
defparam ram_block1a28.port_b_address_clock = "clock1";
defparam ram_block1a28.port_b_address_width = 10;
defparam ram_block1a28.port_b_data_out_clear = "none";
defparam ram_block1a28.port_b_data_out_clock = "clock1";
defparam ram_block1a28.port_b_data_width = 1;
defparam ram_block1a28.port_b_first_address = 0;
defparam ram_block1a28.port_b_first_bit_number = 28;
defparam ram_block1a28.port_b_last_address = 1023;
defparam ram_block1a28.port_b_logical_ram_depth = 1024;
defparam ram_block1a28.port_b_logical_ram_width = 32;
defparam ram_block1a28.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a28.port_b_read_enable_clock = "clock1";
defparam ram_block1a28.ram_block_type = "auto";

twentynm_ram_block ram_block1a29(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[29]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a29_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a29.clk0_core_clock_enable = "ena0";
defparam ram_block1a29.clk1_output_clock_enable = "ena1";
defparam ram_block1a29.data_interleave_offset_in_bits = 1;
defparam ram_block1a29.data_interleave_width_in_bits = 1;
defparam ram_block1a29.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a29.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a29.operation_mode = "dual_port";
defparam ram_block1a29.port_a_address_clear = "none";
defparam ram_block1a29.port_a_address_width = 10;
defparam ram_block1a29.port_a_data_out_clear = "none";
defparam ram_block1a29.port_a_data_out_clock = "none";
defparam ram_block1a29.port_a_data_width = 1;
defparam ram_block1a29.port_a_first_address = 0;
defparam ram_block1a29.port_a_first_bit_number = 29;
defparam ram_block1a29.port_a_last_address = 1023;
defparam ram_block1a29.port_a_logical_ram_depth = 1024;
defparam ram_block1a29.port_a_logical_ram_width = 32;
defparam ram_block1a29.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a29.port_b_address_clear = "none";
defparam ram_block1a29.port_b_address_clock = "clock1";
defparam ram_block1a29.port_b_address_width = 10;
defparam ram_block1a29.port_b_data_out_clear = "none";
defparam ram_block1a29.port_b_data_out_clock = "clock1";
defparam ram_block1a29.port_b_data_width = 1;
defparam ram_block1a29.port_b_first_address = 0;
defparam ram_block1a29.port_b_first_bit_number = 29;
defparam ram_block1a29.port_b_last_address = 1023;
defparam ram_block1a29.port_b_logical_ram_depth = 1024;
defparam ram_block1a29.port_b_logical_ram_width = 32;
defparam ram_block1a29.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a29.port_b_read_enable_clock = "clock1";
defparam ram_block1a29.ram_block_type = "auto";

twentynm_ram_block ram_block1a30(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[30]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a30_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a30.clk0_core_clock_enable = "ena0";
defparam ram_block1a30.clk1_output_clock_enable = "ena1";
defparam ram_block1a30.data_interleave_offset_in_bits = 1;
defparam ram_block1a30.data_interleave_width_in_bits = 1;
defparam ram_block1a30.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a30.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a30.operation_mode = "dual_port";
defparam ram_block1a30.port_a_address_clear = "none";
defparam ram_block1a30.port_a_address_width = 10;
defparam ram_block1a30.port_a_data_out_clear = "none";
defparam ram_block1a30.port_a_data_out_clock = "none";
defparam ram_block1a30.port_a_data_width = 1;
defparam ram_block1a30.port_a_first_address = 0;
defparam ram_block1a30.port_a_first_bit_number = 30;
defparam ram_block1a30.port_a_last_address = 1023;
defparam ram_block1a30.port_a_logical_ram_depth = 1024;
defparam ram_block1a30.port_a_logical_ram_width = 32;
defparam ram_block1a30.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a30.port_b_address_clear = "none";
defparam ram_block1a30.port_b_address_clock = "clock1";
defparam ram_block1a30.port_b_address_width = 10;
defparam ram_block1a30.port_b_data_out_clear = "none";
defparam ram_block1a30.port_b_data_out_clock = "clock1";
defparam ram_block1a30.port_b_data_width = 1;
defparam ram_block1a30.port_b_first_address = 0;
defparam ram_block1a30.port_b_first_bit_number = 30;
defparam ram_block1a30.port_b_last_address = 1023;
defparam ram_block1a30.port_b_logical_ram_depth = 1024;
defparam ram_block1a30.port_b_logical_ram_width = 32;
defparam ram_block1a30.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a30.port_b_read_enable_clock = "clock1";
defparam ram_block1a30.ram_block_type = "auto";

twentynm_ram_block ram_block1a31(
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[31]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,address_b[9],address_b[8],address_b[7],address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a31_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a31.clk0_core_clock_enable = "ena0";
defparam ram_block1a31.clk1_output_clock_enable = "ena1";
defparam ram_block1a31.data_interleave_offset_in_bits = 1;
defparam ram_block1a31.data_interleave_width_in_bits = 1;
defparam ram_block1a31.logical_ram_name = "raw_data_in_fifo_fifo_160_v2ho2aa:fifo_0|scfifo:scfifo_component|scfifo_koa1:auto_generated|a_dpfifo_7ga1:dpfifo|altsyncram_4in1:FIFOram|ALTSYNCRAM";
defparam ram_block1a31.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a31.operation_mode = "dual_port";
defparam ram_block1a31.port_a_address_clear = "none";
defparam ram_block1a31.port_a_address_width = 10;
defparam ram_block1a31.port_a_data_out_clear = "none";
defparam ram_block1a31.port_a_data_out_clock = "none";
defparam ram_block1a31.port_a_data_width = 1;
defparam ram_block1a31.port_a_first_address = 0;
defparam ram_block1a31.port_a_first_bit_number = 31;
defparam ram_block1a31.port_a_last_address = 1023;
defparam ram_block1a31.port_a_logical_ram_depth = 1024;
defparam ram_block1a31.port_a_logical_ram_width = 32;
defparam ram_block1a31.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a31.port_b_address_clear = "none";
defparam ram_block1a31.port_b_address_clock = "clock1";
defparam ram_block1a31.port_b_address_width = 10;
defparam ram_block1a31.port_b_data_out_clear = "none";
defparam ram_block1a31.port_b_data_out_clock = "clock1";
defparam ram_block1a31.port_b_data_width = 1;
defparam ram_block1a31.port_b_first_address = 0;
defparam ram_block1a31.port_b_first_bit_number = 31;
defparam ram_block1a31.port_b_last_address = 1023;
defparam ram_block1a31.port_b_logical_ram_depth = 1024;
defparam ram_block1a31.port_b_logical_ram_width = 32;
defparam ram_block1a31.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a31.port_b_read_enable_clock = "clock1";
defparam ram_block1a31.ram_block_type = "auto";

endmodule

module raw_data_in_fifo_cntr_1ra (
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
	.cout(),
	.shareout());
defparam counter_comb_bita8.extended_lut = "off";
defparam counter_comb_bita8.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita8.shared_arith = "off";

endmodule

module raw_data_in_fifo_cntr_9sa (
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

module raw_data_in_fifo_cntr_ls6 (
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
