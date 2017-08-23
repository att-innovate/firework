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


module altera_gts_gray_bin #(
    parameter SIZE
) (
    input [SIZE-1:0]    gray,
    output [SIZE-1:0]   bin
);

genvar i;
generate
    for (i=0; i<SIZE; i=i+1) begin: gray_bin_combi
        assign bin[i] = ^(gray >> i);
    end
endgenerate

//always @* begin
//    for (int i=0; i<SIZE; i=i+1)
//        bin[i] = ^(gray >> i);
//end

endmodule
