// (C) 2001-2017 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files from any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel FPGA IP License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.



// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module  raw_data_in_index_fifo_171_sdxy63a  (
    clock,
    data,
    rdreq,
    sclr,
    wrreq,
    q);

    input    clock;
    input  [9:0]  data;
    input    rdreq;
    input    sclr;
    input    wrreq;
    output [9:0]  q;

    wire [9:0] sub_wire0;
    wire [9:0] q = sub_wire0[9:0];

    scfifo  scfifo_component (
                .clock (clock),
                .data (data),
                .rdreq (rdreq),
                .sclr (sclr),
                .wrreq (wrreq),
                .q (sub_wire0),
                .aclr (),
                .almost_empty (),
                .almost_full (),
                .eccstatus (),
                .empty (),
                .full (),
                .usedw ());
    defparam
        scfifo_component.add_ram_output_register  = "ON",
        scfifo_component.enable_ecc  = "FALSE",
        scfifo_component.intended_device_family  = "Arria 10",
        scfifo_component.lpm_numwords  = 1024,
        scfifo_component.lpm_showahead  = "OFF",
        scfifo_component.lpm_type  = "scfifo",
        scfifo_component.lpm_width  = 10,
        scfifo_component.lpm_widthu  = 10,
        scfifo_component.overflow_checking  = "ON",
        scfifo_component.underflow_checking  = "ON",
        scfifo_component.use_eab  = "ON";


endmodule


