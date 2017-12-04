// (C) 2001-2016 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


`timescale 1 ns / 1 ns

import verbosity_pkg::*;
import avalon_mm_pkg::*;

module ghrd_10as066n2_altera_arria10_interface_generator_140_eoqgdey
(
   output wire [  0:  0] hps_io_phery_emac0_TX_CLK,
   output wire [  0:  0] hps_io_phery_emac0_TXD0,
   output wire [  0:  0] hps_io_phery_emac0_TXD1,
   output wire [  0:  0] hps_io_phery_emac0_TXD2,
   output wire [  0:  0] hps_io_phery_emac0_TXD3,
   input  wire [  0:  0] hps_io_phery_emac0_RX_CTL,
   output wire [  0:  0] hps_io_phery_emac0_TX_CTL,
   input  wire [  0:  0] hps_io_phery_emac0_RX_CLK,
   input  wire [  0:  0] hps_io_phery_emac0_RXD0,
   input  wire [  0:  0] hps_io_phery_emac0_RXD1,
   input  wire [  0:  0] hps_io_phery_emac0_RXD2,
   input  wire [  0:  0] hps_io_phery_emac0_RXD3,
   inout  wire [  0:  0] hps_io_phery_emac0_MDIO,
   output wire [  0:  0] hps_io_phery_emac0_MDC,
   inout  wire [  0:  0] hps_io_phery_sdmmc_CMD,
   inout  wire [  0:  0] hps_io_phery_sdmmc_D0,
   inout  wire [  0:  0] hps_io_phery_sdmmc_D1,
   inout  wire [  0:  0] hps_io_phery_sdmmc_D2,
   inout  wire [  0:  0] hps_io_phery_sdmmc_D3,
   inout  wire [  0:  0] hps_io_phery_sdmmc_D4,
   inout  wire [  0:  0] hps_io_phery_sdmmc_D5,
   inout  wire [  0:  0] hps_io_phery_sdmmc_D6,
   inout  wire [  0:  0] hps_io_phery_sdmmc_D7,
   output wire [  0:  0] hps_io_phery_sdmmc_CCLK,
   inout  wire [  0:  0] hps_io_phery_usb0_DATA0,
   inout  wire [  0:  0] hps_io_phery_usb0_DATA1,
   inout  wire [  0:  0] hps_io_phery_usb0_DATA2,
   inout  wire [  0:  0] hps_io_phery_usb0_DATA3,
   inout  wire [  0:  0] hps_io_phery_usb0_DATA4,
   inout  wire [  0:  0] hps_io_phery_usb0_DATA5,
   inout  wire [  0:  0] hps_io_phery_usb0_DATA6,
   inout  wire [  0:  0] hps_io_phery_usb0_DATA7,
   input  wire [  0:  0] hps_io_phery_usb0_CLK,
   output wire [  0:  0] hps_io_phery_usb0_STP,
   input  wire [  0:  0] hps_io_phery_usb0_DIR,
   input  wire [  0:  0] hps_io_phery_usb0_NXT,
   output wire [  0:  0] hps_io_phery_spim1_CLK,
   output wire [  0:  0] hps_io_phery_spim1_MOSI,
   input  wire [  0:  0] hps_io_phery_spim1_MISO,
   output wire [  0:  0] hps_io_phery_spim1_SS0_N,
   output wire [  0:  0] hps_io_phery_spim1_SS1_N,
   output wire [  0:  0] hps_io_phery_trace_CLK,
   output wire [  0:  0] hps_io_phery_trace_D0,
   output wire [  0:  0] hps_io_phery_trace_D1,
   output wire [  0:  0] hps_io_phery_trace_D2,
   output wire [  0:  0] hps_io_phery_trace_D3,
   input  wire [  0:  0] hps_io_phery_uart1_RX,
   output wire [  0:  0] hps_io_phery_uart1_TX,
   inout  wire [  0:  0] hps_io_phery_i2c1_SDA,
   inout  wire [  0:  0] hps_io_phery_i2c1_SCL,
   inout  wire [  0:  0] hps_io_gpio_gpio1_io5,
   inout  wire [  0:  0] hps_io_gpio_gpio1_io14,
   inout  wire [  0:  0] hps_io_gpio_gpio1_io16,
   inout  wire [  0:  0] hps_io_gpio_gpio1_io17
);




   ghrd_10as066n2_altera_arria10_interface_generator_140_eoqgdey_hps_io hps_io_inst (
      .sig_hps_io_phery_usb0_DATA5(hps_io_phery_usb0_DATA5),
      .sig_hps_io_phery_trace_CLK(hps_io_phery_trace_CLK),
      .sig_hps_io_phery_uart1_TX(hps_io_phery_uart1_TX),
      .sig_hps_io_phery_emac0_RX_CTL(hps_io_phery_emac0_RX_CTL),
      .sig_hps_io_phery_usb0_DATA6(hps_io_phery_usb0_DATA6),
      .sig_hps_io_phery_usb0_DATA7(hps_io_phery_usb0_DATA7),
      .sig_hps_io_phery_spim1_SS0_N(hps_io_phery_spim1_SS0_N),
      .sig_hps_io_phery_sdmmc_CMD(hps_io_phery_sdmmc_CMD),
      .sig_hps_io_phery_usb0_STP(hps_io_phery_usb0_STP),
      .sig_hps_io_phery_emac0_TX_CLK(hps_io_phery_emac0_TX_CLK),
      .sig_hps_io_phery_spim1_MOSI(hps_io_phery_spim1_MOSI),
      .sig_hps_io_gpio_gpio1_io14(hps_io_gpio_gpio1_io14),
      .sig_hps_io_phery_emac0_TX_CTL(hps_io_phery_emac0_TX_CTL),
      .sig_hps_io_gpio_gpio1_io16(hps_io_gpio_gpio1_io16),
      .sig_hps_io_phery_spim1_SS1_N(hps_io_phery_spim1_SS1_N),
      .sig_hps_io_gpio_gpio1_io17(hps_io_gpio_gpio1_io17),
      .sig_hps_io_phery_i2c1_SDA(hps_io_phery_i2c1_SDA),
      .sig_hps_io_phery_sdmmc_D0(hps_io_phery_sdmmc_D0),
      .sig_hps_io_phery_i2c1_SCL(hps_io_phery_i2c1_SCL),
      .sig_hps_io_phery_sdmmc_D1(hps_io_phery_sdmmc_D1),
      .sig_hps_io_phery_emac0_MDC(hps_io_phery_emac0_MDC),
      .sig_hps_io_phery_sdmmc_D2(hps_io_phery_sdmmc_D2),
      .sig_hps_io_phery_sdmmc_D3(hps_io_phery_sdmmc_D3),
      .sig_hps_io_phery_sdmmc_D4(hps_io_phery_sdmmc_D4),
      .sig_hps_io_phery_usb0_NXT(hps_io_phery_usb0_NXT),
      .sig_hps_io_phery_sdmmc_D5(hps_io_phery_sdmmc_D5),
      .sig_hps_io_phery_emac0_TXD0(hps_io_phery_emac0_TXD0),
      .sig_hps_io_phery_sdmmc_D6(hps_io_phery_sdmmc_D6),
      .sig_hps_io_phery_emac0_TXD1(hps_io_phery_emac0_TXD1),
      .sig_hps_io_phery_sdmmc_D7(hps_io_phery_sdmmc_D7),
      .sig_hps_io_phery_emac0_TXD2(hps_io_phery_emac0_TXD2),
      .sig_hps_io_phery_emac0_TXD3(hps_io_phery_emac0_TXD3),
      .sig_hps_io_phery_emac0_MDIO(hps_io_phery_emac0_MDIO),
      .sig_hps_io_phery_sdmmc_CCLK(hps_io_phery_sdmmc_CCLK),
      .sig_hps_io_phery_usb0_DIR(hps_io_phery_usb0_DIR),
      .sig_hps_io_gpio_gpio1_io5(hps_io_gpio_gpio1_io5),
      .sig_hps_io_phery_emac0_RXD0(hps_io_phery_emac0_RXD0),
      .sig_hps_io_phery_usb0_CLK(hps_io_phery_usb0_CLK),
      .sig_hps_io_phery_emac0_RXD1(hps_io_phery_emac0_RXD1),
      .sig_hps_io_phery_emac0_RXD2(hps_io_phery_emac0_RXD2),
      .sig_hps_io_phery_emac0_RXD3(hps_io_phery_emac0_RXD3),
      .sig_hps_io_phery_uart1_RX(hps_io_phery_uart1_RX),
      .sig_hps_io_phery_spim1_MISO(hps_io_phery_spim1_MISO),
      .sig_hps_io_phery_emac0_RX_CLK(hps_io_phery_emac0_RX_CLK),
      .sig_hps_io_phery_trace_D0(hps_io_phery_trace_D0),
      .sig_hps_io_phery_usb0_DATA0(hps_io_phery_usb0_DATA0),
      .sig_hps_io_phery_spim1_CLK(hps_io_phery_spim1_CLK),
      .sig_hps_io_phery_trace_D1(hps_io_phery_trace_D1),
      .sig_hps_io_phery_usb0_DATA1(hps_io_phery_usb0_DATA1),
      .sig_hps_io_phery_trace_D2(hps_io_phery_trace_D2),
      .sig_hps_io_phery_usb0_DATA2(hps_io_phery_usb0_DATA2),
      .sig_hps_io_phery_trace_D3(hps_io_phery_trace_D3),
      .sig_hps_io_phery_usb0_DATA3(hps_io_phery_usb0_DATA3),
      .sig_hps_io_phery_usb0_DATA4(hps_io_phery_usb0_DATA4)
   );

endmodule 

