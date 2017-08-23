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


module altera_gmii_to_sgmii_adapter (
    input           clk,                // peri_clock
    input           rst_n,              // peri_reset

    input           addr,               // avalon_slave
    input           read,               // avalon_slave
    input           write,              // avalon_slave
    input [31:0]    writedata,          // avalon_slave

    output [31:0]   readdata,           // avalon_slave

    input           mac_tx_clk_o,       // hps_gmii
    
    input           mac_rst_tx_n,       // hps_gmii
    input           mac_rst_rx_n,       // hps_gmii
    
    input [7:0]     mac_txd,            // hps_gmii
    input           mac_txen,           // hps_gmii
    input           mac_txer,           // hps_gmii
    input [1:0]     mac_speed,          // hps_gmii

    output          mac_tx_clk_i,       // hps_gmii
    output          mac_rx_clk,         // hps_gmii
    output reg          mac_rxdv,           // hps_gmii
    output reg          mac_rxer,           // hps_gmii
    output reg [7:0]    mac_rxd,            // hps_gmii
    output          mac_col,            // hps_gmii
    output          mac_crs,            // hps_gmii

    output          pcs_rst_tx,         // pcs_transmit_reset
    output          pcs_rst_rx,         // pcs_receive_reset

    input           pcs_tx_clk,         // pcs_transmit_clock
    input           pcs_rx_clk,         // pcs_receive_clock

    input           pcs_txclk_ena,      // pcs_clock_enable
    input           pcs_rxclk_ena,      // pcs_clock_enable

    input           pcs_gmii_rx_dv,     // pcs_gmii
    input [7:0]     pcs_gmii_rx_d,      // pcs_gmii
    input           pcs_gmii_rx_err,    // pcs_gmii

    output          pcs_gmii_tx_en,     // pcs_gmii
    output [7:0]    pcs_gmii_tx_d,      // pcs_gmii
    output          pcs_gmii_tx_err,    // pcs_gmii

    input           pcs_mii_rx_dv,      // pcs_mii
    input [3:0]     pcs_mii_rx_d,       // pcs_mii
    input           pcs_mii_rx_err,     // pcs_mii
    input           pcs_mii_col,        // pcs_mii
    input           pcs_mii_crs,        // pcs_mii

    output          pcs_mii_tx_en,      // pcs_mii
    output [3:0]    pcs_mii_tx_d,       // pcs_mii
    output          pcs_mii_tx_err      // pcs_mii

);

wire        tx_disable;
wire        sw_tx_rst_n;
wire        pcs_tx_clk_gated;
wire        pcs_rx_clk_gated;
wire        wr_tx_rst_n;
wire        rd_tx_rst_n;
wire        rx_rst_n;
wire        gmii_mii_mode;
wire [9:0]  txbuffer_rd_data;

function integer clog2;
   input [31:0] value;  // Input variable
   for (clog2=0; value>0; clog2=clog2+1) 
   value = value>>'d1;
endfunction

localparam TX_BUFFER_DEPTH  = 64;
localparam TX_BUFFER_ASIZE  = clog2(TX_BUFFER_DEPTH - 1);

altera_gts_csr u_csr (
    // inputs
    .clk		(clk),
    .rst_n		(rst_n),
    .addr		(addr),
    .read		(read),
    .write		(write),
    .writedata		(writedata),
    // outputs
    .readdata		(readdata),
    .tx_disable         (tx_disable)

);

altera_gts_clock_gate u_pcs_tx_clk_gated (
    .clk        (pcs_tx_clk),
    .en         (pcs_txclk_ena),
    .clk_gated  (pcs_tx_clk_gated)
);

altera_gts_clock_gate u_pcs_rx_clk_gated (
    .clk        (pcs_rx_clk),
    .en         (pcs_rxclk_ena),
    .clk_gated  (pcs_rx_clk_gated)
);

altera_gts_reset_blk u_reset_blk (
    // inputs
    .wr_tx_clk          (mac_tx_clk_o),         // write clock
    .rd_tx_clk          (pcs_tx_clk_gated),     // read clock
    .rx_clk             (pcs_rx_clk_gated),     // receive clock
    .mac_rst_tx_n       (mac_rst_tx_n),         // mac tx reset
    .mac_rst_rx_n       (mac_rst_rx_n),         // mac rx reset
    .sw_tx_rst_n        (sw_tx_rst_n),          // sw tx reset
    // output
    .wr_tx_rst_n        (wr_tx_rst_n),          // synchronized write tx reset 
    .rd_tx_rst_n        (rd_tx_rst_n),          // synchronized read tx reset
    .rx_rst_n           (rx_rst_n)              // synchronized rx reset

);

altera_std_synchronizer #(
    .depth    (2)
) u_gmii_mii_mode_synch (
    .clk        (pcs_rx_clk_gated),
    .reset_n    (rx_rst_n),
    .din        (mac_speed[1]),
    .dout       (gmii_mii_mode)

);

altera_gts_txbuffer #(
    .TX_BUFFER_DEPTH    (TX_BUFFER_DEPTH),
    .TX_BUFFER_ASIZE    (TX_BUFFER_ASIZE)
) u_txbuffer (
    .wr_clk     (mac_tx_clk_o),
    .wr_rst_n   (wr_tx_rst_n),
    .wr_data    ({mac_txer, mac_txen, mac_txd}),
    .rd_clk     (pcs_tx_clk_gated),
    .rd_rst_n   (rd_tx_rst_n),
    .rd_data    (txbuffer_rd_data)
);

// transmit data assignment
assign pcs_gmii_tx_d    = txbuffer_rd_data[7:0];
assign pcs_gmii_tx_en   = txbuffer_rd_data[8];
assign pcs_gmii_tx_err  = txbuffer_rd_data[9];

assign pcs_mii_tx_d     = txbuffer_rd_data[3:0];
assign pcs_mii_tx_en    = txbuffer_rd_data[8];
assign pcs_mii_tx_err   = txbuffer_rd_data[9];

// receive data path mux
// gmii_mii_mode: 1 -> mii mode, 0 -> gmii mode
//assign mac_rxd      = gmii_mii_mode ? {pcs_mii_rx_d, pcs_mii_rx_d} : pcs_gmii_rx_d;
//assign mac_rxdv     = gmii_mii_mode ? pcs_mii_rx_dv : pcs_gmii_rx_dv;
//assign mac_rxer     = gmii_mii_mode ? pcs_mii_rx_err : pcs_gmii_rx_err;

always @(posedge pcs_rx_clk_gated or negedge rx_rst_n) begin
    if (!rx_rst_n) begin
        mac_rxd <= 8'h0;
        mac_rxdv <= 1'b0;
        mac_rxer <= 1'b0;
    end
    else begin
        if (gmii_mii_mode) begin
            mac_rxd <= {pcs_mii_rx_d, pcs_mii_rx_d};
            mac_rxdv <= pcs_mii_rx_dv;
            mac_rxer <= pcs_mii_rx_err;
        end
        else begin
            mac_rxd <= pcs_gmii_rx_d;
            mac_rxdv <= pcs_gmii_rx_dv;
            mac_rxer <= pcs_gmii_rx_err;
        end
   end
end



// sw tx reset
assign sw_tx_rst_n = ~tx_disable;
    
// direct connection between EMAC and PCS
assign pcs_rst_tx   = ~mac_rst_tx_n;
assign pcs_rst_rx   = ~mac_rst_rx_n;
assign mac_tx_clk_i = pcs_tx_clk_gated;
assign mac_rx_clk   = pcs_rx_clk_gated;
assign mac_col      = pcs_mii_col;
assign mac_crs      = pcs_mii_crs;






endmodule
