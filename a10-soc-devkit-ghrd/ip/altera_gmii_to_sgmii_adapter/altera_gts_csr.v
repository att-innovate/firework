// (C) 2001-2015 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License Subscription 
// Agreement, Altera MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


module altera_gts_csr (
    input               clk,
    input               rst_n,
    input               addr,
    input               read,
    input               write,
    input [31:0]        writedata,

    output reg [31:0]   readdata,
    output              tx_disable

);

reg             ctrl;

wire            ctrl_address_decode;
wire            ctrl_write_en;
wire            ctrl_read_en;
wire [31:0]     readdata_internal;
wire [31:0]     ctrl_readdata_internal;

// address decode
assign ctrl_address_decode  = (addr == 1'b0);

// write decode
assign ctrl_write_en        = write & ctrl_address_decode;
    
// read decode
assign ctrl_read_en         = read & ctrl_address_decode;

// register implementation
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        ctrl    <= 1'h1;
    else if (ctrl_write_en)
        ctrl    <= writedata[0];
end

assign ctrl_readdata_internal = {31'h0, ctrl};

// readdata path
assign readdata_internal = ctrl_readdata_internal & {32{ctrl_read_en}};

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        readdata    <= 32'h0;
    else
        readdata    <= readdata_internal;
end


// Outputs assignment
assign tx_disable = ctrl;

endmodule
