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


module altera_gts_synchronizer_bundle #(
    parameter WIDTH         = 4,
    parameter DEPTH         = 2
) (
    input               clk,
    input               reset_n,
    input [WIDTH-1:0]   reset_value,
    input [WIDTH-1:0]   din,
    output [WIDTH-1:0]  dout
);

reg [WIDTH-1:0] synch_flp [0:DEPTH-1];

always @(posedge clk or negedge reset_n) begin
    if (!reset_n)
        synch_flp[0] <= reset_value;
    else
        synch_flp[0] <= din;
end

genvar i;
generate
    for (i=1; i<DEPTH; i=i+1) begin : synch_flp_loop
        always @(posedge clk or negedge reset_n) begin
            if (!reset_n)
                synch_flp[i] <= reset_value;
            else
                synch_flp[i] <= synch_flp[i-1];
        end
    end
endgenerate

assign dout = synch_flp[DEPTH-1];


endmodule
