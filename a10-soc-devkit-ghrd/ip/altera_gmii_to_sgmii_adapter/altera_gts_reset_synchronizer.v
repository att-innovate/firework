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


module altera_gts_reset_synchronizer ( 
    input   clk,
    input   rst_n,

    output  rst_sync_n

);

reg     din_sync_1;
reg     din_sync_2;


always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        din_sync_1  <= 1'b0;
        din_sync_2  <= 1'b0;
    end
    else begin
        din_sync_1  <= 1'b1;
        din_sync_2  <= din_sync_1;
    end
end

assign rst_sync_n = din_sync_2;


endmodule
