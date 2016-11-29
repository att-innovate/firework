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


module altera_gts_reset_blk (
    input       wr_tx_clk,
    input       rd_tx_clk,
    input       rx_clk,
    input       mac_rst_tx_n,
    input       mac_rst_rx_n,
    input       sw_tx_rst_n,

    output      wr_tx_rst_n,
    output      rd_tx_rst_n,
    output      rx_rst_n

);

wire    wr_sw_tx_rst_n;
wire    rd_sw_tx_rst_n;
wire    rd_mac_rst_tx_n;

// synchronize sw_tx_rst_n into mac_tx_clk_o domain
altera_gts_reset_synchronizer u_sw_tx_rst_mac (
    .clk        (wr_tx_clk),
    .rst_n      (sw_tx_rst_n),
    .rst_sync_n (wr_sw_tx_rst_n)
);

// synchronize sw_tx_rst_n into pcs_tx_clk domain
altera_gts_reset_synchronizer u_sw_tx_rst_pcs (
    .clk        (rd_tx_clk),
    .rst_n      (sw_tx_rst_n),
    .rst_sync_n (rd_sw_tx_rst_n)
);

// synchronize mac_rst_tx_n into pcs_tx_clk domain
// mac_rst_tx_n already synchronous to mac_tx_clk_o - no need reset synchronizer 
altera_gts_reset_synchronizer u_mac_rst_tx_pcs (
    .clk        (rd_tx_clk),
    .rst_n      (mac_rst_tx_n),
    .rst_sync_n (rd_mac_rst_tx_n)
);

// synchronize mac_rst_rx_n into pcs_rx_clk domain
altera_gts_reset_synchronizer u_mac_rst_rx_pcs (
    .clk        (rx_clk),
    .rst_n      (mac_rst_rx_n),
    .rst_sync_n (rx_rst_n)
);

assign wr_tx_rst_n = mac_rst_tx_n & wr_sw_tx_rst_n;
assign rd_tx_rst_n = rd_mac_rst_tx_n & rd_sw_tx_rst_n;


endmodule
