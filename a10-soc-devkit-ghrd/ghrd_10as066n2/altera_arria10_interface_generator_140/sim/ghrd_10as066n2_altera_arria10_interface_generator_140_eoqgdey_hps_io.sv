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


// $Id: //acds/main/ip/sopc/components/verification/altera_tristate_conduit_bfm/altera_tristate_conduit_bfm.sv.terp#7 $
// $Revision: #7 $
// $Date: 2010/08/05 $
// $Author: klong $
//-----------------------------------------------------------------------------
// =head1 NAME
// altera_conduit_bfm
// =head1 SYNOPSIS
// Bus Functional Model (BFM) for a Standard Conduit BFM
//-----------------------------------------------------------------------------
// =head1 DESCRIPTION
// This is a Bus Functional Model (BFM) for a Standard Conduit Master.
// This BFM sampled the input/bidirection port value or driving user's value to 
// output ports when user call the API.  
// This BFM's HDL is been generated through terp file in Qsys/SOPC Builder.
// Generation parameters:
// output_name:                                       ghrd_10as066n2_altera_arria10_interface_generator_140_eoqgdey_hps_io
// role:width:direction:                              hps_io_phery_emac0_TX_CLK:1:output,hps_io_phery_emac0_TXD0:1:output,hps_io_phery_emac0_TXD1:1:output,hps_io_phery_emac0_TXD2:1:output,hps_io_phery_emac0_TXD3:1:output,hps_io_phery_emac0_RX_CTL:1:input,hps_io_phery_emac0_TX_CTL:1:output,hps_io_phery_emac0_RX_CLK:1:input,hps_io_phery_emac0_RXD0:1:input,hps_io_phery_emac0_RXD1:1:input,hps_io_phery_emac0_RXD2:1:input,hps_io_phery_emac0_RXD3:1:input,hps_io_phery_emac0_MDIO:1:bidir,hps_io_phery_emac0_MDC:1:output,hps_io_phery_sdmmc_CMD:1:bidir,hps_io_phery_sdmmc_D0:1:bidir,hps_io_phery_sdmmc_D1:1:bidir,hps_io_phery_sdmmc_D2:1:bidir,hps_io_phery_sdmmc_D3:1:bidir,hps_io_phery_sdmmc_D4:1:bidir,hps_io_phery_sdmmc_D5:1:bidir,hps_io_phery_sdmmc_D6:1:bidir,hps_io_phery_sdmmc_D7:1:bidir,hps_io_phery_sdmmc_CCLK:1:output,hps_io_phery_usb0_DATA0:1:bidir,hps_io_phery_usb0_DATA1:1:bidir,hps_io_phery_usb0_DATA2:1:bidir,hps_io_phery_usb0_DATA3:1:bidir,hps_io_phery_usb0_DATA4:1:bidir,hps_io_phery_usb0_DATA5:1:bidir,hps_io_phery_usb0_DATA6:1:bidir,hps_io_phery_usb0_DATA7:1:bidir,hps_io_phery_usb0_CLK:1:input,hps_io_phery_usb0_STP:1:output,hps_io_phery_usb0_DIR:1:input,hps_io_phery_usb0_NXT:1:input,hps_io_phery_spim1_CLK:1:output,hps_io_phery_spim1_MOSI:1:output,hps_io_phery_spim1_MISO:1:input,hps_io_phery_spim1_SS0_N:1:output,hps_io_phery_spim1_SS1_N:1:output,hps_io_phery_trace_CLK:1:output,hps_io_phery_trace_D0:1:output,hps_io_phery_trace_D1:1:output,hps_io_phery_trace_D2:1:output,hps_io_phery_trace_D3:1:output,hps_io_phery_uart1_RX:1:input,hps_io_phery_uart1_TX:1:output,hps_io_phery_i2c1_SDA:1:bidir,hps_io_phery_i2c1_SCL:1:bidir,hps_io_gpio_gpio1_io5:1:bidir,hps_io_gpio_gpio1_io14:1:bidir,hps_io_gpio_gpio1_io16:1:bidir,hps_io_gpio_gpio1_io17:1:bidir
// 0
//-----------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ghrd_10as066n2_altera_arria10_interface_generator_140_eoqgdey_hps_io
(
   sig_hps_io_phery_emac0_TX_CLK,
   sig_hps_io_phery_emac0_TXD0,
   sig_hps_io_phery_emac0_TXD1,
   sig_hps_io_phery_emac0_TXD2,
   sig_hps_io_phery_emac0_TXD3,
   sig_hps_io_phery_emac0_RX_CTL,
   sig_hps_io_phery_emac0_TX_CTL,
   sig_hps_io_phery_emac0_RX_CLK,
   sig_hps_io_phery_emac0_RXD0,
   sig_hps_io_phery_emac0_RXD1,
   sig_hps_io_phery_emac0_RXD2,
   sig_hps_io_phery_emac0_RXD3,
   sig_hps_io_phery_emac0_MDIO,
   sig_hps_io_phery_emac0_MDC,
   sig_hps_io_phery_sdmmc_CMD,
   sig_hps_io_phery_sdmmc_D0,
   sig_hps_io_phery_sdmmc_D1,
   sig_hps_io_phery_sdmmc_D2,
   sig_hps_io_phery_sdmmc_D3,
   sig_hps_io_phery_sdmmc_D4,
   sig_hps_io_phery_sdmmc_D5,
   sig_hps_io_phery_sdmmc_D6,
   sig_hps_io_phery_sdmmc_D7,
   sig_hps_io_phery_sdmmc_CCLK,
   sig_hps_io_phery_usb0_DATA0,
   sig_hps_io_phery_usb0_DATA1,
   sig_hps_io_phery_usb0_DATA2,
   sig_hps_io_phery_usb0_DATA3,
   sig_hps_io_phery_usb0_DATA4,
   sig_hps_io_phery_usb0_DATA5,
   sig_hps_io_phery_usb0_DATA6,
   sig_hps_io_phery_usb0_DATA7,
   sig_hps_io_phery_usb0_CLK,
   sig_hps_io_phery_usb0_STP,
   sig_hps_io_phery_usb0_DIR,
   sig_hps_io_phery_usb0_NXT,
   sig_hps_io_phery_spim1_CLK,
   sig_hps_io_phery_spim1_MOSI,
   sig_hps_io_phery_spim1_MISO,
   sig_hps_io_phery_spim1_SS0_N,
   sig_hps_io_phery_spim1_SS1_N,
   sig_hps_io_phery_trace_CLK,
   sig_hps_io_phery_trace_D0,
   sig_hps_io_phery_trace_D1,
   sig_hps_io_phery_trace_D2,
   sig_hps_io_phery_trace_D3,
   sig_hps_io_phery_uart1_RX,
   sig_hps_io_phery_uart1_TX,
   sig_hps_io_phery_i2c1_SDA,
   sig_hps_io_phery_i2c1_SCL,
   sig_hps_io_gpio_gpio1_io5,
   sig_hps_io_gpio_gpio1_io14,
   sig_hps_io_gpio_gpio1_io16,
   sig_hps_io_gpio_gpio1_io17
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   output sig_hps_io_phery_emac0_TX_CLK;
   output sig_hps_io_phery_emac0_TXD0;
   output sig_hps_io_phery_emac0_TXD1;
   output sig_hps_io_phery_emac0_TXD2;
   output sig_hps_io_phery_emac0_TXD3;
   input sig_hps_io_phery_emac0_RX_CTL;
   output sig_hps_io_phery_emac0_TX_CTL;
   input sig_hps_io_phery_emac0_RX_CLK;
   input sig_hps_io_phery_emac0_RXD0;
   input sig_hps_io_phery_emac0_RXD1;
   input sig_hps_io_phery_emac0_RXD2;
   input sig_hps_io_phery_emac0_RXD3;
   inout wire sig_hps_io_phery_emac0_MDIO;
   output sig_hps_io_phery_emac0_MDC;
   inout wire sig_hps_io_phery_sdmmc_CMD;
   inout wire sig_hps_io_phery_sdmmc_D0;
   inout wire sig_hps_io_phery_sdmmc_D1;
   inout wire sig_hps_io_phery_sdmmc_D2;
   inout wire sig_hps_io_phery_sdmmc_D3;
   inout wire sig_hps_io_phery_sdmmc_D4;
   inout wire sig_hps_io_phery_sdmmc_D5;
   inout wire sig_hps_io_phery_sdmmc_D6;
   inout wire sig_hps_io_phery_sdmmc_D7;
   output sig_hps_io_phery_sdmmc_CCLK;
   inout wire sig_hps_io_phery_usb0_DATA0;
   inout wire sig_hps_io_phery_usb0_DATA1;
   inout wire sig_hps_io_phery_usb0_DATA2;
   inout wire sig_hps_io_phery_usb0_DATA3;
   inout wire sig_hps_io_phery_usb0_DATA4;
   inout wire sig_hps_io_phery_usb0_DATA5;
   inout wire sig_hps_io_phery_usb0_DATA6;
   inout wire sig_hps_io_phery_usb0_DATA7;
   input sig_hps_io_phery_usb0_CLK;
   output sig_hps_io_phery_usb0_STP;
   input sig_hps_io_phery_usb0_DIR;
   input sig_hps_io_phery_usb0_NXT;
   output sig_hps_io_phery_spim1_CLK;
   output sig_hps_io_phery_spim1_MOSI;
   input sig_hps_io_phery_spim1_MISO;
   output sig_hps_io_phery_spim1_SS0_N;
   output sig_hps_io_phery_spim1_SS1_N;
   output sig_hps_io_phery_trace_CLK;
   output sig_hps_io_phery_trace_D0;
   output sig_hps_io_phery_trace_D1;
   output sig_hps_io_phery_trace_D2;
   output sig_hps_io_phery_trace_D3;
   input sig_hps_io_phery_uart1_RX;
   output sig_hps_io_phery_uart1_TX;
   inout wire sig_hps_io_phery_i2c1_SDA;
   inout wire sig_hps_io_phery_i2c1_SCL;
   inout wire sig_hps_io_gpio_gpio1_io5;
   inout wire sig_hps_io_gpio_gpio1_io14;
   inout wire sig_hps_io_gpio_gpio1_io16;
   inout wire sig_hps_io_gpio_gpio1_io17;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic ROLE_hps_io_phery_emac0_TX_CLK_t;
   typedef logic ROLE_hps_io_phery_emac0_TXD0_t;
   typedef logic ROLE_hps_io_phery_emac0_TXD1_t;
   typedef logic ROLE_hps_io_phery_emac0_TXD2_t;
   typedef logic ROLE_hps_io_phery_emac0_TXD3_t;
   typedef logic ROLE_hps_io_phery_emac0_RX_CTL_t;
   typedef logic ROLE_hps_io_phery_emac0_TX_CTL_t;
   typedef logic ROLE_hps_io_phery_emac0_RX_CLK_t;
   typedef logic ROLE_hps_io_phery_emac0_RXD0_t;
   typedef logic ROLE_hps_io_phery_emac0_RXD1_t;
   typedef logic ROLE_hps_io_phery_emac0_RXD2_t;
   typedef logic ROLE_hps_io_phery_emac0_RXD3_t;
   typedef logic ROLE_hps_io_phery_emac0_MDIO_t;
   typedef logic ROLE_hps_io_phery_emac0_MDC_t;
   typedef logic ROLE_hps_io_phery_sdmmc_CMD_t;
   typedef logic ROLE_hps_io_phery_sdmmc_D0_t;
   typedef logic ROLE_hps_io_phery_sdmmc_D1_t;
   typedef logic ROLE_hps_io_phery_sdmmc_D2_t;
   typedef logic ROLE_hps_io_phery_sdmmc_D3_t;
   typedef logic ROLE_hps_io_phery_sdmmc_D4_t;
   typedef logic ROLE_hps_io_phery_sdmmc_D5_t;
   typedef logic ROLE_hps_io_phery_sdmmc_D6_t;
   typedef logic ROLE_hps_io_phery_sdmmc_D7_t;
   typedef logic ROLE_hps_io_phery_sdmmc_CCLK_t;
   typedef logic ROLE_hps_io_phery_usb0_DATA0_t;
   typedef logic ROLE_hps_io_phery_usb0_DATA1_t;
   typedef logic ROLE_hps_io_phery_usb0_DATA2_t;
   typedef logic ROLE_hps_io_phery_usb0_DATA3_t;
   typedef logic ROLE_hps_io_phery_usb0_DATA4_t;
   typedef logic ROLE_hps_io_phery_usb0_DATA5_t;
   typedef logic ROLE_hps_io_phery_usb0_DATA6_t;
   typedef logic ROLE_hps_io_phery_usb0_DATA7_t;
   typedef logic ROLE_hps_io_phery_usb0_CLK_t;
   typedef logic ROLE_hps_io_phery_usb0_STP_t;
   typedef logic ROLE_hps_io_phery_usb0_DIR_t;
   typedef logic ROLE_hps_io_phery_usb0_NXT_t;
   typedef logic ROLE_hps_io_phery_spim1_CLK_t;
   typedef logic ROLE_hps_io_phery_spim1_MOSI_t;
   typedef logic ROLE_hps_io_phery_spim1_MISO_t;
   typedef logic ROLE_hps_io_phery_spim1_SS0_N_t;
   typedef logic ROLE_hps_io_phery_spim1_SS1_N_t;
   typedef logic ROLE_hps_io_phery_trace_CLK_t;
   typedef logic ROLE_hps_io_phery_trace_D0_t;
   typedef logic ROLE_hps_io_phery_trace_D1_t;
   typedef logic ROLE_hps_io_phery_trace_D2_t;
   typedef logic ROLE_hps_io_phery_trace_D3_t;
   typedef logic ROLE_hps_io_phery_uart1_RX_t;
   typedef logic ROLE_hps_io_phery_uart1_TX_t;
   typedef logic ROLE_hps_io_phery_i2c1_SDA_t;
   typedef logic ROLE_hps_io_phery_i2c1_SCL_t;
   typedef logic ROLE_hps_io_gpio_gpio1_io5_t;
   typedef logic ROLE_hps_io_gpio_gpio1_io14_t;
   typedef logic ROLE_hps_io_gpio_gpio1_io16_t;
   typedef logic ROLE_hps_io_gpio_gpio1_io17_t;

   reg sig_hps_io_phery_emac0_TX_CLK_temp;
   reg sig_hps_io_phery_emac0_TX_CLK_out;
   reg sig_hps_io_phery_emac0_TXD0_temp;
   reg sig_hps_io_phery_emac0_TXD0_out;
   reg sig_hps_io_phery_emac0_TXD1_temp;
   reg sig_hps_io_phery_emac0_TXD1_out;
   reg sig_hps_io_phery_emac0_TXD2_temp;
   reg sig_hps_io_phery_emac0_TXD2_out;
   reg sig_hps_io_phery_emac0_TXD3_temp;
   reg sig_hps_io_phery_emac0_TXD3_out;
   logic [0 : 0] sig_hps_io_phery_emac0_RX_CTL_in;
   logic [0 : 0] sig_hps_io_phery_emac0_RX_CTL_local;
   reg sig_hps_io_phery_emac0_TX_CTL_temp;
   reg sig_hps_io_phery_emac0_TX_CTL_out;
   logic [0 : 0] sig_hps_io_phery_emac0_RX_CLK_in;
   logic [0 : 0] sig_hps_io_phery_emac0_RX_CLK_local;
   logic [0 : 0] sig_hps_io_phery_emac0_RXD0_in;
   logic [0 : 0] sig_hps_io_phery_emac0_RXD0_local;
   logic [0 : 0] sig_hps_io_phery_emac0_RXD1_in;
   logic [0 : 0] sig_hps_io_phery_emac0_RXD1_local;
   logic [0 : 0] sig_hps_io_phery_emac0_RXD2_in;
   logic [0 : 0] sig_hps_io_phery_emac0_RXD2_local;
   logic [0 : 0] sig_hps_io_phery_emac0_RXD3_in;
   logic [0 : 0] sig_hps_io_phery_emac0_RXD3_local;
   logic sig_hps_io_phery_emac0_MDIO_oe;
   logic sig_hps_io_phery_emac0_MDIO_oe_temp = 0;
   reg sig_hps_io_phery_emac0_MDIO_temp;
   reg sig_hps_io_phery_emac0_MDIO_out;
   logic [0 : 0] sig_hps_io_phery_emac0_MDIO_in;
   logic [0 : 0] sig_hps_io_phery_emac0_MDIO_local;
   reg sig_hps_io_phery_emac0_MDC_temp;
   reg sig_hps_io_phery_emac0_MDC_out;
   logic sig_hps_io_phery_sdmmc_CMD_oe;
   logic sig_hps_io_phery_sdmmc_CMD_oe_temp = 0;
   reg sig_hps_io_phery_sdmmc_CMD_temp;
   reg sig_hps_io_phery_sdmmc_CMD_out;
   logic [0 : 0] sig_hps_io_phery_sdmmc_CMD_in;
   logic [0 : 0] sig_hps_io_phery_sdmmc_CMD_local;
   logic sig_hps_io_phery_sdmmc_D0_oe;
   logic sig_hps_io_phery_sdmmc_D0_oe_temp = 0;
   reg sig_hps_io_phery_sdmmc_D0_temp;
   reg sig_hps_io_phery_sdmmc_D0_out;
   logic [0 : 0] sig_hps_io_phery_sdmmc_D0_in;
   logic [0 : 0] sig_hps_io_phery_sdmmc_D0_local;
   logic sig_hps_io_phery_sdmmc_D1_oe;
   logic sig_hps_io_phery_sdmmc_D1_oe_temp = 0;
   reg sig_hps_io_phery_sdmmc_D1_temp;
   reg sig_hps_io_phery_sdmmc_D1_out;
   logic [0 : 0] sig_hps_io_phery_sdmmc_D1_in;
   logic [0 : 0] sig_hps_io_phery_sdmmc_D1_local;
   logic sig_hps_io_phery_sdmmc_D2_oe;
   logic sig_hps_io_phery_sdmmc_D2_oe_temp = 0;
   reg sig_hps_io_phery_sdmmc_D2_temp;
   reg sig_hps_io_phery_sdmmc_D2_out;
   logic [0 : 0] sig_hps_io_phery_sdmmc_D2_in;
   logic [0 : 0] sig_hps_io_phery_sdmmc_D2_local;
   logic sig_hps_io_phery_sdmmc_D3_oe;
   logic sig_hps_io_phery_sdmmc_D3_oe_temp = 0;
   reg sig_hps_io_phery_sdmmc_D3_temp;
   reg sig_hps_io_phery_sdmmc_D3_out;
   logic [0 : 0] sig_hps_io_phery_sdmmc_D3_in;
   logic [0 : 0] sig_hps_io_phery_sdmmc_D3_local;
   logic sig_hps_io_phery_sdmmc_D4_oe;
   logic sig_hps_io_phery_sdmmc_D4_oe_temp = 0;
   reg sig_hps_io_phery_sdmmc_D4_temp;
   reg sig_hps_io_phery_sdmmc_D4_out;
   logic [0 : 0] sig_hps_io_phery_sdmmc_D4_in;
   logic [0 : 0] sig_hps_io_phery_sdmmc_D4_local;
   logic sig_hps_io_phery_sdmmc_D5_oe;
   logic sig_hps_io_phery_sdmmc_D5_oe_temp = 0;
   reg sig_hps_io_phery_sdmmc_D5_temp;
   reg sig_hps_io_phery_sdmmc_D5_out;
   logic [0 : 0] sig_hps_io_phery_sdmmc_D5_in;
   logic [0 : 0] sig_hps_io_phery_sdmmc_D5_local;
   logic sig_hps_io_phery_sdmmc_D6_oe;
   logic sig_hps_io_phery_sdmmc_D6_oe_temp = 0;
   reg sig_hps_io_phery_sdmmc_D6_temp;
   reg sig_hps_io_phery_sdmmc_D6_out;
   logic [0 : 0] sig_hps_io_phery_sdmmc_D6_in;
   logic [0 : 0] sig_hps_io_phery_sdmmc_D6_local;
   logic sig_hps_io_phery_sdmmc_D7_oe;
   logic sig_hps_io_phery_sdmmc_D7_oe_temp = 0;
   reg sig_hps_io_phery_sdmmc_D7_temp;
   reg sig_hps_io_phery_sdmmc_D7_out;
   logic [0 : 0] sig_hps_io_phery_sdmmc_D7_in;
   logic [0 : 0] sig_hps_io_phery_sdmmc_D7_local;
   reg sig_hps_io_phery_sdmmc_CCLK_temp;
   reg sig_hps_io_phery_sdmmc_CCLK_out;
   logic sig_hps_io_phery_usb0_DATA0_oe;
   logic sig_hps_io_phery_usb0_DATA0_oe_temp = 0;
   reg sig_hps_io_phery_usb0_DATA0_temp;
   reg sig_hps_io_phery_usb0_DATA0_out;
   logic [0 : 0] sig_hps_io_phery_usb0_DATA0_in;
   logic [0 : 0] sig_hps_io_phery_usb0_DATA0_local;
   logic sig_hps_io_phery_usb0_DATA1_oe;
   logic sig_hps_io_phery_usb0_DATA1_oe_temp = 0;
   reg sig_hps_io_phery_usb0_DATA1_temp;
   reg sig_hps_io_phery_usb0_DATA1_out;
   logic [0 : 0] sig_hps_io_phery_usb0_DATA1_in;
   logic [0 : 0] sig_hps_io_phery_usb0_DATA1_local;
   logic sig_hps_io_phery_usb0_DATA2_oe;
   logic sig_hps_io_phery_usb0_DATA2_oe_temp = 0;
   reg sig_hps_io_phery_usb0_DATA2_temp;
   reg sig_hps_io_phery_usb0_DATA2_out;
   logic [0 : 0] sig_hps_io_phery_usb0_DATA2_in;
   logic [0 : 0] sig_hps_io_phery_usb0_DATA2_local;
   logic sig_hps_io_phery_usb0_DATA3_oe;
   logic sig_hps_io_phery_usb0_DATA3_oe_temp = 0;
   reg sig_hps_io_phery_usb0_DATA3_temp;
   reg sig_hps_io_phery_usb0_DATA3_out;
   logic [0 : 0] sig_hps_io_phery_usb0_DATA3_in;
   logic [0 : 0] sig_hps_io_phery_usb0_DATA3_local;
   logic sig_hps_io_phery_usb0_DATA4_oe;
   logic sig_hps_io_phery_usb0_DATA4_oe_temp = 0;
   reg sig_hps_io_phery_usb0_DATA4_temp;
   reg sig_hps_io_phery_usb0_DATA4_out;
   logic [0 : 0] sig_hps_io_phery_usb0_DATA4_in;
   logic [0 : 0] sig_hps_io_phery_usb0_DATA4_local;
   logic sig_hps_io_phery_usb0_DATA5_oe;
   logic sig_hps_io_phery_usb0_DATA5_oe_temp = 0;
   reg sig_hps_io_phery_usb0_DATA5_temp;
   reg sig_hps_io_phery_usb0_DATA5_out;
   logic [0 : 0] sig_hps_io_phery_usb0_DATA5_in;
   logic [0 : 0] sig_hps_io_phery_usb0_DATA5_local;
   logic sig_hps_io_phery_usb0_DATA6_oe;
   logic sig_hps_io_phery_usb0_DATA6_oe_temp = 0;
   reg sig_hps_io_phery_usb0_DATA6_temp;
   reg sig_hps_io_phery_usb0_DATA6_out;
   logic [0 : 0] sig_hps_io_phery_usb0_DATA6_in;
   logic [0 : 0] sig_hps_io_phery_usb0_DATA6_local;
   logic sig_hps_io_phery_usb0_DATA7_oe;
   logic sig_hps_io_phery_usb0_DATA7_oe_temp = 0;
   reg sig_hps_io_phery_usb0_DATA7_temp;
   reg sig_hps_io_phery_usb0_DATA7_out;
   logic [0 : 0] sig_hps_io_phery_usb0_DATA7_in;
   logic [0 : 0] sig_hps_io_phery_usb0_DATA7_local;
   logic [0 : 0] sig_hps_io_phery_usb0_CLK_in;
   logic [0 : 0] sig_hps_io_phery_usb0_CLK_local;
   reg sig_hps_io_phery_usb0_STP_temp;
   reg sig_hps_io_phery_usb0_STP_out;
   logic [0 : 0] sig_hps_io_phery_usb0_DIR_in;
   logic [0 : 0] sig_hps_io_phery_usb0_DIR_local;
   logic [0 : 0] sig_hps_io_phery_usb0_NXT_in;
   logic [0 : 0] sig_hps_io_phery_usb0_NXT_local;
   reg sig_hps_io_phery_spim1_CLK_temp;
   reg sig_hps_io_phery_spim1_CLK_out;
   reg sig_hps_io_phery_spim1_MOSI_temp;
   reg sig_hps_io_phery_spim1_MOSI_out;
   logic [0 : 0] sig_hps_io_phery_spim1_MISO_in;
   logic [0 : 0] sig_hps_io_phery_spim1_MISO_local;
   reg sig_hps_io_phery_spim1_SS0_N_temp;
   reg sig_hps_io_phery_spim1_SS0_N_out;
   reg sig_hps_io_phery_spim1_SS1_N_temp;
   reg sig_hps_io_phery_spim1_SS1_N_out;
   reg sig_hps_io_phery_trace_CLK_temp;
   reg sig_hps_io_phery_trace_CLK_out;
   reg sig_hps_io_phery_trace_D0_temp;
   reg sig_hps_io_phery_trace_D0_out;
   reg sig_hps_io_phery_trace_D1_temp;
   reg sig_hps_io_phery_trace_D1_out;
   reg sig_hps_io_phery_trace_D2_temp;
   reg sig_hps_io_phery_trace_D2_out;
   reg sig_hps_io_phery_trace_D3_temp;
   reg sig_hps_io_phery_trace_D3_out;
   logic [0 : 0] sig_hps_io_phery_uart1_RX_in;
   logic [0 : 0] sig_hps_io_phery_uart1_RX_local;
   reg sig_hps_io_phery_uart1_TX_temp;
   reg sig_hps_io_phery_uart1_TX_out;
   logic sig_hps_io_phery_i2c1_SDA_oe;
   logic sig_hps_io_phery_i2c1_SDA_oe_temp = 0;
   reg sig_hps_io_phery_i2c1_SDA_temp;
   reg sig_hps_io_phery_i2c1_SDA_out;
   logic [0 : 0] sig_hps_io_phery_i2c1_SDA_in;
   logic [0 : 0] sig_hps_io_phery_i2c1_SDA_local;
   logic sig_hps_io_phery_i2c1_SCL_oe;
   logic sig_hps_io_phery_i2c1_SCL_oe_temp = 0;
   reg sig_hps_io_phery_i2c1_SCL_temp;
   reg sig_hps_io_phery_i2c1_SCL_out;
   logic [0 : 0] sig_hps_io_phery_i2c1_SCL_in;
   logic [0 : 0] sig_hps_io_phery_i2c1_SCL_local;
   logic sig_hps_io_gpio_gpio1_io5_oe;
   logic sig_hps_io_gpio_gpio1_io5_oe_temp = 0;
   reg sig_hps_io_gpio_gpio1_io5_temp;
   reg sig_hps_io_gpio_gpio1_io5_out;
   logic [0 : 0] sig_hps_io_gpio_gpio1_io5_in;
   logic [0 : 0] sig_hps_io_gpio_gpio1_io5_local;
   logic sig_hps_io_gpio_gpio1_io14_oe;
   logic sig_hps_io_gpio_gpio1_io14_oe_temp = 0;
   reg sig_hps_io_gpio_gpio1_io14_temp;
   reg sig_hps_io_gpio_gpio1_io14_out;
   logic [0 : 0] sig_hps_io_gpio_gpio1_io14_in;
   logic [0 : 0] sig_hps_io_gpio_gpio1_io14_local;
   logic sig_hps_io_gpio_gpio1_io16_oe;
   logic sig_hps_io_gpio_gpio1_io16_oe_temp = 0;
   reg sig_hps_io_gpio_gpio1_io16_temp;
   reg sig_hps_io_gpio_gpio1_io16_out;
   logic [0 : 0] sig_hps_io_gpio_gpio1_io16_in;
   logic [0 : 0] sig_hps_io_gpio_gpio1_io16_local;
   logic sig_hps_io_gpio_gpio1_io17_oe;
   logic sig_hps_io_gpio_gpio1_io17_oe_temp = 0;
   reg sig_hps_io_gpio_gpio1_io17_temp;
   reg sig_hps_io_gpio_gpio1_io17_out;
   logic [0 : 0] sig_hps_io_gpio_gpio1_io17_in;
   logic [0 : 0] sig_hps_io_gpio_gpio1_io17_local;

   //--------------------------------------------------------------------------
   // =head1 Public Methods API
   // =pod
   // This section describes the public methods in the application programming
   // interface (API). The application program interface provides methods for 
   // a testbench which instantiates, controls and queries state in this BFM 
   // component. Test programs must only use these public access methods and 
   // events to communicate with this BFM component. The API and module pins
   // are the only interfaces of this component that are guaranteed to be
   // stable. The API will be maintained for the life of the product. 
   // While we cannot prevent a test program from directly accessing internal
   // tasks, functions, or data private to the BFM, there is no guarantee that
   // these will be present in the future. In fact, it is best for the user
   // to assume that the underlying implementation of this component can 
   // and will change.
   // =cut
   //--------------------------------------------------------------------------
   
   event signal_input_hps_io_phery_emac0_RX_CTL_change;
   event signal_input_hps_io_phery_emac0_RX_CLK_change;
   event signal_input_hps_io_phery_emac0_RXD0_change;
   event signal_input_hps_io_phery_emac0_RXD1_change;
   event signal_input_hps_io_phery_emac0_RXD2_change;
   event signal_input_hps_io_phery_emac0_RXD3_change;
   event signal_input_hps_io_phery_emac0_MDIO_change;
   event signal_input_hps_io_phery_sdmmc_CMD_change;
   event signal_input_hps_io_phery_sdmmc_D0_change;
   event signal_input_hps_io_phery_sdmmc_D1_change;
   event signal_input_hps_io_phery_sdmmc_D2_change;
   event signal_input_hps_io_phery_sdmmc_D3_change;
   event signal_input_hps_io_phery_sdmmc_D4_change;
   event signal_input_hps_io_phery_sdmmc_D5_change;
   event signal_input_hps_io_phery_sdmmc_D6_change;
   event signal_input_hps_io_phery_sdmmc_D7_change;
   event signal_input_hps_io_phery_usb0_DATA0_change;
   event signal_input_hps_io_phery_usb0_DATA1_change;
   event signal_input_hps_io_phery_usb0_DATA2_change;
   event signal_input_hps_io_phery_usb0_DATA3_change;
   event signal_input_hps_io_phery_usb0_DATA4_change;
   event signal_input_hps_io_phery_usb0_DATA5_change;
   event signal_input_hps_io_phery_usb0_DATA6_change;
   event signal_input_hps_io_phery_usb0_DATA7_change;
   event signal_input_hps_io_phery_usb0_CLK_change;
   event signal_input_hps_io_phery_usb0_DIR_change;
   event signal_input_hps_io_phery_usb0_NXT_change;
   event signal_input_hps_io_phery_spim1_MISO_change;
   event signal_input_hps_io_phery_uart1_RX_change;
   event signal_input_hps_io_phery_i2c1_SDA_change;
   event signal_input_hps_io_phery_i2c1_SCL_change;
   event signal_input_hps_io_gpio_gpio1_io5_change;
   event signal_input_hps_io_gpio_gpio1_io14_change;
   event signal_input_hps_io_gpio_gpio1_io16_change;
   event signal_input_hps_io_gpio_gpio1_io17_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "16.1";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_emac0_TX_CLK
   // -------------------------------------------------------

   function automatic void set_hps_io_phery_emac0_TX_CLK (
      ROLE_hps_io_phery_emac0_TX_CLK_t new_value
   );
      // Drive the new value to hps_io_phery_emac0_TX_CLK.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_emac0_TX_CLK_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_emac0_TXD0
   // -------------------------------------------------------

   function automatic void set_hps_io_phery_emac0_TXD0 (
      ROLE_hps_io_phery_emac0_TXD0_t new_value
   );
      // Drive the new value to hps_io_phery_emac0_TXD0.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_emac0_TXD0_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_emac0_TXD1
   // -------------------------------------------------------

   function automatic void set_hps_io_phery_emac0_TXD1 (
      ROLE_hps_io_phery_emac0_TXD1_t new_value
   );
      // Drive the new value to hps_io_phery_emac0_TXD1.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_emac0_TXD1_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_emac0_TXD2
   // -------------------------------------------------------

   function automatic void set_hps_io_phery_emac0_TXD2 (
      ROLE_hps_io_phery_emac0_TXD2_t new_value
   );
      // Drive the new value to hps_io_phery_emac0_TXD2.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_emac0_TXD2_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_emac0_TXD3
   // -------------------------------------------------------

   function automatic void set_hps_io_phery_emac0_TXD3 (
      ROLE_hps_io_phery_emac0_TXD3_t new_value
   );
      // Drive the new value to hps_io_phery_emac0_TXD3.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_emac0_TXD3_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_emac0_RX_CTL
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_emac0_RX_CTL_t get_hps_io_phery_emac0_RX_CTL();
   
      // Gets the hps_io_phery_emac0_RX_CTL input value.
      $sformat(message, "%m: called get_hps_io_phery_emac0_RX_CTL");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_emac0_RX_CTL_in;
      
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_emac0_TX_CTL
   // -------------------------------------------------------

   function automatic void set_hps_io_phery_emac0_TX_CTL (
      ROLE_hps_io_phery_emac0_TX_CTL_t new_value
   );
      // Drive the new value to hps_io_phery_emac0_TX_CTL.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_emac0_TX_CTL_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_emac0_RX_CLK
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_emac0_RX_CLK_t get_hps_io_phery_emac0_RX_CLK();
   
      // Gets the hps_io_phery_emac0_RX_CLK input value.
      $sformat(message, "%m: called get_hps_io_phery_emac0_RX_CLK");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_emac0_RX_CLK_in;
      
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_emac0_RXD0
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_emac0_RXD0_t get_hps_io_phery_emac0_RXD0();
   
      // Gets the hps_io_phery_emac0_RXD0 input value.
      $sformat(message, "%m: called get_hps_io_phery_emac0_RXD0");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_emac0_RXD0_in;
      
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_emac0_RXD1
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_emac0_RXD1_t get_hps_io_phery_emac0_RXD1();
   
      // Gets the hps_io_phery_emac0_RXD1 input value.
      $sformat(message, "%m: called get_hps_io_phery_emac0_RXD1");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_emac0_RXD1_in;
      
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_emac0_RXD2
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_emac0_RXD2_t get_hps_io_phery_emac0_RXD2();
   
      // Gets the hps_io_phery_emac0_RXD2 input value.
      $sformat(message, "%m: called get_hps_io_phery_emac0_RXD2");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_emac0_RXD2_in;
      
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_emac0_RXD3
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_emac0_RXD3_t get_hps_io_phery_emac0_RXD3();
   
      // Gets the hps_io_phery_emac0_RXD3 input value.
      $sformat(message, "%m: called get_hps_io_phery_emac0_RXD3");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_emac0_RXD3_in;
      
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_emac0_MDIO
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_emac0_MDIO_t get_hps_io_phery_emac0_MDIO();
   
      // Gets the hps_io_phery_emac0_MDIO input value.
      $sformat(message, "%m: called get_hps_io_phery_emac0_MDIO");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_emac0_MDIO_in;
      
   endfunction

   function automatic void set_hps_io_phery_emac0_MDIO (
      ROLE_hps_io_phery_emac0_MDIO_t new_value
   );
      // Drive the new value to hps_io_phery_emac0_MDIO.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_emac0_MDIO_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_emac0_MDIO_oe (
      bit enable
   );
      // bidir port hps_io_phery_emac0_MDIO will work as output port when set to 1.
      // bidir port hps_io_phery_emac0_MDIO will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_emac0_MDIO_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_emac0_MDC
   // -------------------------------------------------------

   function automatic void set_hps_io_phery_emac0_MDC (
      ROLE_hps_io_phery_emac0_MDC_t new_value
   );
      // Drive the new value to hps_io_phery_emac0_MDC.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_emac0_MDC_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_sdmmc_CMD
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_sdmmc_CMD_t get_hps_io_phery_sdmmc_CMD();
   
      // Gets the hps_io_phery_sdmmc_CMD input value.
      $sformat(message, "%m: called get_hps_io_phery_sdmmc_CMD");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_sdmmc_CMD_in;
      
   endfunction

   function automatic void set_hps_io_phery_sdmmc_CMD (
      ROLE_hps_io_phery_sdmmc_CMD_t new_value
   );
      // Drive the new value to hps_io_phery_sdmmc_CMD.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_sdmmc_CMD_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_sdmmc_CMD_oe (
      bit enable
   );
      // bidir port hps_io_phery_sdmmc_CMD will work as output port when set to 1.
      // bidir port hps_io_phery_sdmmc_CMD will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_sdmmc_CMD_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_sdmmc_D0
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_sdmmc_D0_t get_hps_io_phery_sdmmc_D0();
   
      // Gets the hps_io_phery_sdmmc_D0 input value.
      $sformat(message, "%m: called get_hps_io_phery_sdmmc_D0");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_sdmmc_D0_in;
      
   endfunction

   function automatic void set_hps_io_phery_sdmmc_D0 (
      ROLE_hps_io_phery_sdmmc_D0_t new_value
   );
      // Drive the new value to hps_io_phery_sdmmc_D0.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_sdmmc_D0_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_sdmmc_D0_oe (
      bit enable
   );
      // bidir port hps_io_phery_sdmmc_D0 will work as output port when set to 1.
      // bidir port hps_io_phery_sdmmc_D0 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_sdmmc_D0_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_sdmmc_D1
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_sdmmc_D1_t get_hps_io_phery_sdmmc_D1();
   
      // Gets the hps_io_phery_sdmmc_D1 input value.
      $sformat(message, "%m: called get_hps_io_phery_sdmmc_D1");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_sdmmc_D1_in;
      
   endfunction

   function automatic void set_hps_io_phery_sdmmc_D1 (
      ROLE_hps_io_phery_sdmmc_D1_t new_value
   );
      // Drive the new value to hps_io_phery_sdmmc_D1.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_sdmmc_D1_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_sdmmc_D1_oe (
      bit enable
   );
      // bidir port hps_io_phery_sdmmc_D1 will work as output port when set to 1.
      // bidir port hps_io_phery_sdmmc_D1 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_sdmmc_D1_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_sdmmc_D2
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_sdmmc_D2_t get_hps_io_phery_sdmmc_D2();
   
      // Gets the hps_io_phery_sdmmc_D2 input value.
      $sformat(message, "%m: called get_hps_io_phery_sdmmc_D2");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_sdmmc_D2_in;
      
   endfunction

   function automatic void set_hps_io_phery_sdmmc_D2 (
      ROLE_hps_io_phery_sdmmc_D2_t new_value
   );
      // Drive the new value to hps_io_phery_sdmmc_D2.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_sdmmc_D2_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_sdmmc_D2_oe (
      bit enable
   );
      // bidir port hps_io_phery_sdmmc_D2 will work as output port when set to 1.
      // bidir port hps_io_phery_sdmmc_D2 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_sdmmc_D2_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_sdmmc_D3
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_sdmmc_D3_t get_hps_io_phery_sdmmc_D3();
   
      // Gets the hps_io_phery_sdmmc_D3 input value.
      $sformat(message, "%m: called get_hps_io_phery_sdmmc_D3");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_sdmmc_D3_in;
      
   endfunction

   function automatic void set_hps_io_phery_sdmmc_D3 (
      ROLE_hps_io_phery_sdmmc_D3_t new_value
   );
      // Drive the new value to hps_io_phery_sdmmc_D3.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_sdmmc_D3_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_sdmmc_D3_oe (
      bit enable
   );
      // bidir port hps_io_phery_sdmmc_D3 will work as output port when set to 1.
      // bidir port hps_io_phery_sdmmc_D3 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_sdmmc_D3_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_sdmmc_D4
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_sdmmc_D4_t get_hps_io_phery_sdmmc_D4();
   
      // Gets the hps_io_phery_sdmmc_D4 input value.
      $sformat(message, "%m: called get_hps_io_phery_sdmmc_D4");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_sdmmc_D4_in;
      
   endfunction

   function automatic void set_hps_io_phery_sdmmc_D4 (
      ROLE_hps_io_phery_sdmmc_D4_t new_value
   );
      // Drive the new value to hps_io_phery_sdmmc_D4.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_sdmmc_D4_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_sdmmc_D4_oe (
      bit enable
   );
      // bidir port hps_io_phery_sdmmc_D4 will work as output port when set to 1.
      // bidir port hps_io_phery_sdmmc_D4 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_sdmmc_D4_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_sdmmc_D5
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_sdmmc_D5_t get_hps_io_phery_sdmmc_D5();
   
      // Gets the hps_io_phery_sdmmc_D5 input value.
      $sformat(message, "%m: called get_hps_io_phery_sdmmc_D5");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_sdmmc_D5_in;
      
   endfunction

   function automatic void set_hps_io_phery_sdmmc_D5 (
      ROLE_hps_io_phery_sdmmc_D5_t new_value
   );
      // Drive the new value to hps_io_phery_sdmmc_D5.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_sdmmc_D5_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_sdmmc_D5_oe (
      bit enable
   );
      // bidir port hps_io_phery_sdmmc_D5 will work as output port when set to 1.
      // bidir port hps_io_phery_sdmmc_D5 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_sdmmc_D5_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_sdmmc_D6
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_sdmmc_D6_t get_hps_io_phery_sdmmc_D6();
   
      // Gets the hps_io_phery_sdmmc_D6 input value.
      $sformat(message, "%m: called get_hps_io_phery_sdmmc_D6");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_sdmmc_D6_in;
      
   endfunction

   function automatic void set_hps_io_phery_sdmmc_D6 (
      ROLE_hps_io_phery_sdmmc_D6_t new_value
   );
      // Drive the new value to hps_io_phery_sdmmc_D6.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_sdmmc_D6_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_sdmmc_D6_oe (
      bit enable
   );
      // bidir port hps_io_phery_sdmmc_D6 will work as output port when set to 1.
      // bidir port hps_io_phery_sdmmc_D6 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_sdmmc_D6_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_sdmmc_D7
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_sdmmc_D7_t get_hps_io_phery_sdmmc_D7();
   
      // Gets the hps_io_phery_sdmmc_D7 input value.
      $sformat(message, "%m: called get_hps_io_phery_sdmmc_D7");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_sdmmc_D7_in;
      
   endfunction

   function automatic void set_hps_io_phery_sdmmc_D7 (
      ROLE_hps_io_phery_sdmmc_D7_t new_value
   );
      // Drive the new value to hps_io_phery_sdmmc_D7.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_sdmmc_D7_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_sdmmc_D7_oe (
      bit enable
   );
      // bidir port hps_io_phery_sdmmc_D7 will work as output port when set to 1.
      // bidir port hps_io_phery_sdmmc_D7 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_sdmmc_D7_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_sdmmc_CCLK
   // -------------------------------------------------------

   function automatic void set_hps_io_phery_sdmmc_CCLK (
      ROLE_hps_io_phery_sdmmc_CCLK_t new_value
   );
      // Drive the new value to hps_io_phery_sdmmc_CCLK.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_sdmmc_CCLK_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_usb0_DATA0
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_usb0_DATA0_t get_hps_io_phery_usb0_DATA0();
   
      // Gets the hps_io_phery_usb0_DATA0 input value.
      $sformat(message, "%m: called get_hps_io_phery_usb0_DATA0");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_usb0_DATA0_in;
      
   endfunction

   function automatic void set_hps_io_phery_usb0_DATA0 (
      ROLE_hps_io_phery_usb0_DATA0_t new_value
   );
      // Drive the new value to hps_io_phery_usb0_DATA0.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_usb0_DATA0_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_usb0_DATA0_oe (
      bit enable
   );
      // bidir port hps_io_phery_usb0_DATA0 will work as output port when set to 1.
      // bidir port hps_io_phery_usb0_DATA0 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_usb0_DATA0_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_usb0_DATA1
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_usb0_DATA1_t get_hps_io_phery_usb0_DATA1();
   
      // Gets the hps_io_phery_usb0_DATA1 input value.
      $sformat(message, "%m: called get_hps_io_phery_usb0_DATA1");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_usb0_DATA1_in;
      
   endfunction

   function automatic void set_hps_io_phery_usb0_DATA1 (
      ROLE_hps_io_phery_usb0_DATA1_t new_value
   );
      // Drive the new value to hps_io_phery_usb0_DATA1.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_usb0_DATA1_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_usb0_DATA1_oe (
      bit enable
   );
      // bidir port hps_io_phery_usb0_DATA1 will work as output port when set to 1.
      // bidir port hps_io_phery_usb0_DATA1 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_usb0_DATA1_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_usb0_DATA2
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_usb0_DATA2_t get_hps_io_phery_usb0_DATA2();
   
      // Gets the hps_io_phery_usb0_DATA2 input value.
      $sformat(message, "%m: called get_hps_io_phery_usb0_DATA2");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_usb0_DATA2_in;
      
   endfunction

   function automatic void set_hps_io_phery_usb0_DATA2 (
      ROLE_hps_io_phery_usb0_DATA2_t new_value
   );
      // Drive the new value to hps_io_phery_usb0_DATA2.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_usb0_DATA2_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_usb0_DATA2_oe (
      bit enable
   );
      // bidir port hps_io_phery_usb0_DATA2 will work as output port when set to 1.
      // bidir port hps_io_phery_usb0_DATA2 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_usb0_DATA2_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_usb0_DATA3
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_usb0_DATA3_t get_hps_io_phery_usb0_DATA3();
   
      // Gets the hps_io_phery_usb0_DATA3 input value.
      $sformat(message, "%m: called get_hps_io_phery_usb0_DATA3");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_usb0_DATA3_in;
      
   endfunction

   function automatic void set_hps_io_phery_usb0_DATA3 (
      ROLE_hps_io_phery_usb0_DATA3_t new_value
   );
      // Drive the new value to hps_io_phery_usb0_DATA3.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_usb0_DATA3_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_usb0_DATA3_oe (
      bit enable
   );
      // bidir port hps_io_phery_usb0_DATA3 will work as output port when set to 1.
      // bidir port hps_io_phery_usb0_DATA3 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_usb0_DATA3_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_usb0_DATA4
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_usb0_DATA4_t get_hps_io_phery_usb0_DATA4();
   
      // Gets the hps_io_phery_usb0_DATA4 input value.
      $sformat(message, "%m: called get_hps_io_phery_usb0_DATA4");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_usb0_DATA4_in;
      
   endfunction

   function automatic void set_hps_io_phery_usb0_DATA4 (
      ROLE_hps_io_phery_usb0_DATA4_t new_value
   );
      // Drive the new value to hps_io_phery_usb0_DATA4.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_usb0_DATA4_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_usb0_DATA4_oe (
      bit enable
   );
      // bidir port hps_io_phery_usb0_DATA4 will work as output port when set to 1.
      // bidir port hps_io_phery_usb0_DATA4 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_usb0_DATA4_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_usb0_DATA5
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_usb0_DATA5_t get_hps_io_phery_usb0_DATA5();
   
      // Gets the hps_io_phery_usb0_DATA5 input value.
      $sformat(message, "%m: called get_hps_io_phery_usb0_DATA5");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_usb0_DATA5_in;
      
   endfunction

   function automatic void set_hps_io_phery_usb0_DATA5 (
      ROLE_hps_io_phery_usb0_DATA5_t new_value
   );
      // Drive the new value to hps_io_phery_usb0_DATA5.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_usb0_DATA5_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_usb0_DATA5_oe (
      bit enable
   );
      // bidir port hps_io_phery_usb0_DATA5 will work as output port when set to 1.
      // bidir port hps_io_phery_usb0_DATA5 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_usb0_DATA5_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_usb0_DATA6
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_usb0_DATA6_t get_hps_io_phery_usb0_DATA6();
   
      // Gets the hps_io_phery_usb0_DATA6 input value.
      $sformat(message, "%m: called get_hps_io_phery_usb0_DATA6");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_usb0_DATA6_in;
      
   endfunction

   function automatic void set_hps_io_phery_usb0_DATA6 (
      ROLE_hps_io_phery_usb0_DATA6_t new_value
   );
      // Drive the new value to hps_io_phery_usb0_DATA6.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_usb0_DATA6_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_usb0_DATA6_oe (
      bit enable
   );
      // bidir port hps_io_phery_usb0_DATA6 will work as output port when set to 1.
      // bidir port hps_io_phery_usb0_DATA6 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_usb0_DATA6_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_usb0_DATA7
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_usb0_DATA7_t get_hps_io_phery_usb0_DATA7();
   
      // Gets the hps_io_phery_usb0_DATA7 input value.
      $sformat(message, "%m: called get_hps_io_phery_usb0_DATA7");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_usb0_DATA7_in;
      
   endfunction

   function automatic void set_hps_io_phery_usb0_DATA7 (
      ROLE_hps_io_phery_usb0_DATA7_t new_value
   );
      // Drive the new value to hps_io_phery_usb0_DATA7.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_usb0_DATA7_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_usb0_DATA7_oe (
      bit enable
   );
      // bidir port hps_io_phery_usb0_DATA7 will work as output port when set to 1.
      // bidir port hps_io_phery_usb0_DATA7 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_usb0_DATA7_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_usb0_CLK
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_usb0_CLK_t get_hps_io_phery_usb0_CLK();
   
      // Gets the hps_io_phery_usb0_CLK input value.
      $sformat(message, "%m: called get_hps_io_phery_usb0_CLK");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_usb0_CLK_in;
      
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_usb0_STP
   // -------------------------------------------------------

   function automatic void set_hps_io_phery_usb0_STP (
      ROLE_hps_io_phery_usb0_STP_t new_value
   );
      // Drive the new value to hps_io_phery_usb0_STP.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_usb0_STP_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_usb0_DIR
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_usb0_DIR_t get_hps_io_phery_usb0_DIR();
   
      // Gets the hps_io_phery_usb0_DIR input value.
      $sformat(message, "%m: called get_hps_io_phery_usb0_DIR");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_usb0_DIR_in;
      
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_usb0_NXT
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_usb0_NXT_t get_hps_io_phery_usb0_NXT();
   
      // Gets the hps_io_phery_usb0_NXT input value.
      $sformat(message, "%m: called get_hps_io_phery_usb0_NXT");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_usb0_NXT_in;
      
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_spim1_CLK
   // -------------------------------------------------------

   function automatic void set_hps_io_phery_spim1_CLK (
      ROLE_hps_io_phery_spim1_CLK_t new_value
   );
      // Drive the new value to hps_io_phery_spim1_CLK.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_spim1_CLK_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_spim1_MOSI
   // -------------------------------------------------------

   function automatic void set_hps_io_phery_spim1_MOSI (
      ROLE_hps_io_phery_spim1_MOSI_t new_value
   );
      // Drive the new value to hps_io_phery_spim1_MOSI.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_spim1_MOSI_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_spim1_MISO
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_spim1_MISO_t get_hps_io_phery_spim1_MISO();
   
      // Gets the hps_io_phery_spim1_MISO input value.
      $sformat(message, "%m: called get_hps_io_phery_spim1_MISO");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_spim1_MISO_in;
      
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_spim1_SS0_N
   // -------------------------------------------------------

   function automatic void set_hps_io_phery_spim1_SS0_N (
      ROLE_hps_io_phery_spim1_SS0_N_t new_value
   );
      // Drive the new value to hps_io_phery_spim1_SS0_N.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_spim1_SS0_N_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_spim1_SS1_N
   // -------------------------------------------------------

   function automatic void set_hps_io_phery_spim1_SS1_N (
      ROLE_hps_io_phery_spim1_SS1_N_t new_value
   );
      // Drive the new value to hps_io_phery_spim1_SS1_N.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_spim1_SS1_N_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_trace_CLK
   // -------------------------------------------------------

   function automatic void set_hps_io_phery_trace_CLK (
      ROLE_hps_io_phery_trace_CLK_t new_value
   );
      // Drive the new value to hps_io_phery_trace_CLK.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_trace_CLK_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_trace_D0
   // -------------------------------------------------------

   function automatic void set_hps_io_phery_trace_D0 (
      ROLE_hps_io_phery_trace_D0_t new_value
   );
      // Drive the new value to hps_io_phery_trace_D0.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_trace_D0_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_trace_D1
   // -------------------------------------------------------

   function automatic void set_hps_io_phery_trace_D1 (
      ROLE_hps_io_phery_trace_D1_t new_value
   );
      // Drive the new value to hps_io_phery_trace_D1.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_trace_D1_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_trace_D2
   // -------------------------------------------------------

   function automatic void set_hps_io_phery_trace_D2 (
      ROLE_hps_io_phery_trace_D2_t new_value
   );
      // Drive the new value to hps_io_phery_trace_D2.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_trace_D2_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_trace_D3
   // -------------------------------------------------------

   function automatic void set_hps_io_phery_trace_D3 (
      ROLE_hps_io_phery_trace_D3_t new_value
   );
      // Drive the new value to hps_io_phery_trace_D3.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_trace_D3_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_uart1_RX
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_uart1_RX_t get_hps_io_phery_uart1_RX();
   
      // Gets the hps_io_phery_uart1_RX input value.
      $sformat(message, "%m: called get_hps_io_phery_uart1_RX");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_uart1_RX_in;
      
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_uart1_TX
   // -------------------------------------------------------

   function automatic void set_hps_io_phery_uart1_TX (
      ROLE_hps_io_phery_uart1_TX_t new_value
   );
      // Drive the new value to hps_io_phery_uart1_TX.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_uart1_TX_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_i2c1_SDA
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_i2c1_SDA_t get_hps_io_phery_i2c1_SDA();
   
      // Gets the hps_io_phery_i2c1_SDA input value.
      $sformat(message, "%m: called get_hps_io_phery_i2c1_SDA");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_i2c1_SDA_in;
      
   endfunction

   function automatic void set_hps_io_phery_i2c1_SDA (
      ROLE_hps_io_phery_i2c1_SDA_t new_value
   );
      // Drive the new value to hps_io_phery_i2c1_SDA.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_i2c1_SDA_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_i2c1_SDA_oe (
      bit enable
   );
      // bidir port hps_io_phery_i2c1_SDA will work as output port when set to 1.
      // bidir port hps_io_phery_i2c1_SDA will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_i2c1_SDA_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_phery_i2c1_SCL
   // -------------------------------------------------------
   function automatic ROLE_hps_io_phery_i2c1_SCL_t get_hps_io_phery_i2c1_SCL();
   
      // Gets the hps_io_phery_i2c1_SCL input value.
      $sformat(message, "%m: called get_hps_io_phery_i2c1_SCL");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_phery_i2c1_SCL_in;
      
   endfunction

   function automatic void set_hps_io_phery_i2c1_SCL (
      ROLE_hps_io_phery_i2c1_SCL_t new_value
   );
      // Drive the new value to hps_io_phery_i2c1_SCL.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_i2c1_SCL_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_phery_i2c1_SCL_oe (
      bit enable
   );
      // bidir port hps_io_phery_i2c1_SCL will work as output port when set to 1.
      // bidir port hps_io_phery_i2c1_SCL will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_phery_i2c1_SCL_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_gpio_gpio1_io5
   // -------------------------------------------------------
   function automatic ROLE_hps_io_gpio_gpio1_io5_t get_hps_io_gpio_gpio1_io5();
   
      // Gets the hps_io_gpio_gpio1_io5 input value.
      $sformat(message, "%m: called get_hps_io_gpio_gpio1_io5");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_gpio_gpio1_io5_in;
      
   endfunction

   function automatic void set_hps_io_gpio_gpio1_io5 (
      ROLE_hps_io_gpio_gpio1_io5_t new_value
   );
      // Drive the new value to hps_io_gpio_gpio1_io5.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_gpio_gpio1_io5_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_gpio_gpio1_io5_oe (
      bit enable
   );
      // bidir port hps_io_gpio_gpio1_io5 will work as output port when set to 1.
      // bidir port hps_io_gpio_gpio1_io5 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_gpio_gpio1_io5_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_gpio_gpio1_io14
   // -------------------------------------------------------
   function automatic ROLE_hps_io_gpio_gpio1_io14_t get_hps_io_gpio_gpio1_io14();
   
      // Gets the hps_io_gpio_gpio1_io14 input value.
      $sformat(message, "%m: called get_hps_io_gpio_gpio1_io14");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_gpio_gpio1_io14_in;
      
   endfunction

   function automatic void set_hps_io_gpio_gpio1_io14 (
      ROLE_hps_io_gpio_gpio1_io14_t new_value
   );
      // Drive the new value to hps_io_gpio_gpio1_io14.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_gpio_gpio1_io14_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_gpio_gpio1_io14_oe (
      bit enable
   );
      // bidir port hps_io_gpio_gpio1_io14 will work as output port when set to 1.
      // bidir port hps_io_gpio_gpio1_io14 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_gpio_gpio1_io14_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_gpio_gpio1_io16
   // -------------------------------------------------------
   function automatic ROLE_hps_io_gpio_gpio1_io16_t get_hps_io_gpio_gpio1_io16();
   
      // Gets the hps_io_gpio_gpio1_io16 input value.
      $sformat(message, "%m: called get_hps_io_gpio_gpio1_io16");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_gpio_gpio1_io16_in;
      
   endfunction

   function automatic void set_hps_io_gpio_gpio1_io16 (
      ROLE_hps_io_gpio_gpio1_io16_t new_value
   );
      // Drive the new value to hps_io_gpio_gpio1_io16.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_gpio_gpio1_io16_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_gpio_gpio1_io16_oe (
      bit enable
   );
      // bidir port hps_io_gpio_gpio1_io16 will work as output port when set to 1.
      // bidir port hps_io_gpio_gpio1_io16 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_gpio_gpio1_io16_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // hps_io_gpio_gpio1_io17
   // -------------------------------------------------------
   function automatic ROLE_hps_io_gpio_gpio1_io17_t get_hps_io_gpio_gpio1_io17();
   
      // Gets the hps_io_gpio_gpio1_io17 input value.
      $sformat(message, "%m: called get_hps_io_gpio_gpio1_io17");
      print(VERBOSITY_DEBUG, message);
      return sig_hps_io_gpio_gpio1_io17_in;
      
   endfunction

   function automatic void set_hps_io_gpio_gpio1_io17 (
      ROLE_hps_io_gpio_gpio1_io17_t new_value
   );
      // Drive the new value to hps_io_gpio_gpio1_io17.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_gpio_gpio1_io17_temp = new_value;
   endfunction
   
   function automatic void set_hps_io_gpio_gpio1_io17_oe (
      bit enable
   );
      // bidir port hps_io_gpio_gpio1_io17 will work as output port when set to 1.
      // bidir port hps_io_gpio_gpio1_io17 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_hps_io_gpio_gpio1_io17_oe_temp = enable;
   endfunction

   assign sig_hps_io_phery_emac0_TX_CLK = sig_hps_io_phery_emac0_TX_CLK_temp;
   assign sig_hps_io_phery_emac0_TXD0 = sig_hps_io_phery_emac0_TXD0_temp;
   assign sig_hps_io_phery_emac0_TXD1 = sig_hps_io_phery_emac0_TXD1_temp;
   assign sig_hps_io_phery_emac0_TXD2 = sig_hps_io_phery_emac0_TXD2_temp;
   assign sig_hps_io_phery_emac0_TXD3 = sig_hps_io_phery_emac0_TXD3_temp;
   assign sig_hps_io_phery_emac0_RX_CTL_in = sig_hps_io_phery_emac0_RX_CTL;
   assign sig_hps_io_phery_emac0_TX_CTL = sig_hps_io_phery_emac0_TX_CTL_temp;
   assign sig_hps_io_phery_emac0_RX_CLK_in = sig_hps_io_phery_emac0_RX_CLK;
   assign sig_hps_io_phery_emac0_RXD0_in = sig_hps_io_phery_emac0_RXD0;
   assign sig_hps_io_phery_emac0_RXD1_in = sig_hps_io_phery_emac0_RXD1;
   assign sig_hps_io_phery_emac0_RXD2_in = sig_hps_io_phery_emac0_RXD2;
   assign sig_hps_io_phery_emac0_RXD3_in = sig_hps_io_phery_emac0_RXD3;
   assign sig_hps_io_phery_emac0_MDIO_oe = sig_hps_io_phery_emac0_MDIO_oe_temp;
   assign sig_hps_io_phery_emac0_MDIO = (sig_hps_io_phery_emac0_MDIO_oe == 1)? sig_hps_io_phery_emac0_MDIO_temp:'z;
   assign sig_hps_io_phery_emac0_MDIO_in = (sig_hps_io_phery_emac0_MDIO_oe == 0)? sig_hps_io_phery_emac0_MDIO:'z;
   assign sig_hps_io_phery_emac0_MDC = sig_hps_io_phery_emac0_MDC_temp;
   assign sig_hps_io_phery_sdmmc_CMD_oe = sig_hps_io_phery_sdmmc_CMD_oe_temp;
   assign sig_hps_io_phery_sdmmc_CMD = (sig_hps_io_phery_sdmmc_CMD_oe == 1)? sig_hps_io_phery_sdmmc_CMD_temp:'z;
   assign sig_hps_io_phery_sdmmc_CMD_in = (sig_hps_io_phery_sdmmc_CMD_oe == 0)? sig_hps_io_phery_sdmmc_CMD:'z;
   assign sig_hps_io_phery_sdmmc_D0_oe = sig_hps_io_phery_sdmmc_D0_oe_temp;
   assign sig_hps_io_phery_sdmmc_D0 = (sig_hps_io_phery_sdmmc_D0_oe == 1)? sig_hps_io_phery_sdmmc_D0_temp:'z;
   assign sig_hps_io_phery_sdmmc_D0_in = (sig_hps_io_phery_sdmmc_D0_oe == 0)? sig_hps_io_phery_sdmmc_D0:'z;
   assign sig_hps_io_phery_sdmmc_D1_oe = sig_hps_io_phery_sdmmc_D1_oe_temp;
   assign sig_hps_io_phery_sdmmc_D1 = (sig_hps_io_phery_sdmmc_D1_oe == 1)? sig_hps_io_phery_sdmmc_D1_temp:'z;
   assign sig_hps_io_phery_sdmmc_D1_in = (sig_hps_io_phery_sdmmc_D1_oe == 0)? sig_hps_io_phery_sdmmc_D1:'z;
   assign sig_hps_io_phery_sdmmc_D2_oe = sig_hps_io_phery_sdmmc_D2_oe_temp;
   assign sig_hps_io_phery_sdmmc_D2 = (sig_hps_io_phery_sdmmc_D2_oe == 1)? sig_hps_io_phery_sdmmc_D2_temp:'z;
   assign sig_hps_io_phery_sdmmc_D2_in = (sig_hps_io_phery_sdmmc_D2_oe == 0)? sig_hps_io_phery_sdmmc_D2:'z;
   assign sig_hps_io_phery_sdmmc_D3_oe = sig_hps_io_phery_sdmmc_D3_oe_temp;
   assign sig_hps_io_phery_sdmmc_D3 = (sig_hps_io_phery_sdmmc_D3_oe == 1)? sig_hps_io_phery_sdmmc_D3_temp:'z;
   assign sig_hps_io_phery_sdmmc_D3_in = (sig_hps_io_phery_sdmmc_D3_oe == 0)? sig_hps_io_phery_sdmmc_D3:'z;
   assign sig_hps_io_phery_sdmmc_D4_oe = sig_hps_io_phery_sdmmc_D4_oe_temp;
   assign sig_hps_io_phery_sdmmc_D4 = (sig_hps_io_phery_sdmmc_D4_oe == 1)? sig_hps_io_phery_sdmmc_D4_temp:'z;
   assign sig_hps_io_phery_sdmmc_D4_in = (sig_hps_io_phery_sdmmc_D4_oe == 0)? sig_hps_io_phery_sdmmc_D4:'z;
   assign sig_hps_io_phery_sdmmc_D5_oe = sig_hps_io_phery_sdmmc_D5_oe_temp;
   assign sig_hps_io_phery_sdmmc_D5 = (sig_hps_io_phery_sdmmc_D5_oe == 1)? sig_hps_io_phery_sdmmc_D5_temp:'z;
   assign sig_hps_io_phery_sdmmc_D5_in = (sig_hps_io_phery_sdmmc_D5_oe == 0)? sig_hps_io_phery_sdmmc_D5:'z;
   assign sig_hps_io_phery_sdmmc_D6_oe = sig_hps_io_phery_sdmmc_D6_oe_temp;
   assign sig_hps_io_phery_sdmmc_D6 = (sig_hps_io_phery_sdmmc_D6_oe == 1)? sig_hps_io_phery_sdmmc_D6_temp:'z;
   assign sig_hps_io_phery_sdmmc_D6_in = (sig_hps_io_phery_sdmmc_D6_oe == 0)? sig_hps_io_phery_sdmmc_D6:'z;
   assign sig_hps_io_phery_sdmmc_D7_oe = sig_hps_io_phery_sdmmc_D7_oe_temp;
   assign sig_hps_io_phery_sdmmc_D7 = (sig_hps_io_phery_sdmmc_D7_oe == 1)? sig_hps_io_phery_sdmmc_D7_temp:'z;
   assign sig_hps_io_phery_sdmmc_D7_in = (sig_hps_io_phery_sdmmc_D7_oe == 0)? sig_hps_io_phery_sdmmc_D7:'z;
   assign sig_hps_io_phery_sdmmc_CCLK = sig_hps_io_phery_sdmmc_CCLK_temp;
   assign sig_hps_io_phery_usb0_DATA0_oe = sig_hps_io_phery_usb0_DATA0_oe_temp;
   assign sig_hps_io_phery_usb0_DATA0 = (sig_hps_io_phery_usb0_DATA0_oe == 1)? sig_hps_io_phery_usb0_DATA0_temp:'z;
   assign sig_hps_io_phery_usb0_DATA0_in = (sig_hps_io_phery_usb0_DATA0_oe == 0)? sig_hps_io_phery_usb0_DATA0:'z;
   assign sig_hps_io_phery_usb0_DATA1_oe = sig_hps_io_phery_usb0_DATA1_oe_temp;
   assign sig_hps_io_phery_usb0_DATA1 = (sig_hps_io_phery_usb0_DATA1_oe == 1)? sig_hps_io_phery_usb0_DATA1_temp:'z;
   assign sig_hps_io_phery_usb0_DATA1_in = (sig_hps_io_phery_usb0_DATA1_oe == 0)? sig_hps_io_phery_usb0_DATA1:'z;
   assign sig_hps_io_phery_usb0_DATA2_oe = sig_hps_io_phery_usb0_DATA2_oe_temp;
   assign sig_hps_io_phery_usb0_DATA2 = (sig_hps_io_phery_usb0_DATA2_oe == 1)? sig_hps_io_phery_usb0_DATA2_temp:'z;
   assign sig_hps_io_phery_usb0_DATA2_in = (sig_hps_io_phery_usb0_DATA2_oe == 0)? sig_hps_io_phery_usb0_DATA2:'z;
   assign sig_hps_io_phery_usb0_DATA3_oe = sig_hps_io_phery_usb0_DATA3_oe_temp;
   assign sig_hps_io_phery_usb0_DATA3 = (sig_hps_io_phery_usb0_DATA3_oe == 1)? sig_hps_io_phery_usb0_DATA3_temp:'z;
   assign sig_hps_io_phery_usb0_DATA3_in = (sig_hps_io_phery_usb0_DATA3_oe == 0)? sig_hps_io_phery_usb0_DATA3:'z;
   assign sig_hps_io_phery_usb0_DATA4_oe = sig_hps_io_phery_usb0_DATA4_oe_temp;
   assign sig_hps_io_phery_usb0_DATA4 = (sig_hps_io_phery_usb0_DATA4_oe == 1)? sig_hps_io_phery_usb0_DATA4_temp:'z;
   assign sig_hps_io_phery_usb0_DATA4_in = (sig_hps_io_phery_usb0_DATA4_oe == 0)? sig_hps_io_phery_usb0_DATA4:'z;
   assign sig_hps_io_phery_usb0_DATA5_oe = sig_hps_io_phery_usb0_DATA5_oe_temp;
   assign sig_hps_io_phery_usb0_DATA5 = (sig_hps_io_phery_usb0_DATA5_oe == 1)? sig_hps_io_phery_usb0_DATA5_temp:'z;
   assign sig_hps_io_phery_usb0_DATA5_in = (sig_hps_io_phery_usb0_DATA5_oe == 0)? sig_hps_io_phery_usb0_DATA5:'z;
   assign sig_hps_io_phery_usb0_DATA6_oe = sig_hps_io_phery_usb0_DATA6_oe_temp;
   assign sig_hps_io_phery_usb0_DATA6 = (sig_hps_io_phery_usb0_DATA6_oe == 1)? sig_hps_io_phery_usb0_DATA6_temp:'z;
   assign sig_hps_io_phery_usb0_DATA6_in = (sig_hps_io_phery_usb0_DATA6_oe == 0)? sig_hps_io_phery_usb0_DATA6:'z;
   assign sig_hps_io_phery_usb0_DATA7_oe = sig_hps_io_phery_usb0_DATA7_oe_temp;
   assign sig_hps_io_phery_usb0_DATA7 = (sig_hps_io_phery_usb0_DATA7_oe == 1)? sig_hps_io_phery_usb0_DATA7_temp:'z;
   assign sig_hps_io_phery_usb0_DATA7_in = (sig_hps_io_phery_usb0_DATA7_oe == 0)? sig_hps_io_phery_usb0_DATA7:'z;
   assign sig_hps_io_phery_usb0_CLK_in = sig_hps_io_phery_usb0_CLK;
   assign sig_hps_io_phery_usb0_STP = sig_hps_io_phery_usb0_STP_temp;
   assign sig_hps_io_phery_usb0_DIR_in = sig_hps_io_phery_usb0_DIR;
   assign sig_hps_io_phery_usb0_NXT_in = sig_hps_io_phery_usb0_NXT;
   assign sig_hps_io_phery_spim1_CLK = sig_hps_io_phery_spim1_CLK_temp;
   assign sig_hps_io_phery_spim1_MOSI = sig_hps_io_phery_spim1_MOSI_temp;
   assign sig_hps_io_phery_spim1_MISO_in = sig_hps_io_phery_spim1_MISO;
   assign sig_hps_io_phery_spim1_SS0_N = sig_hps_io_phery_spim1_SS0_N_temp;
   assign sig_hps_io_phery_spim1_SS1_N = sig_hps_io_phery_spim1_SS1_N_temp;
   assign sig_hps_io_phery_trace_CLK = sig_hps_io_phery_trace_CLK_temp;
   assign sig_hps_io_phery_trace_D0 = sig_hps_io_phery_trace_D0_temp;
   assign sig_hps_io_phery_trace_D1 = sig_hps_io_phery_trace_D1_temp;
   assign sig_hps_io_phery_trace_D2 = sig_hps_io_phery_trace_D2_temp;
   assign sig_hps_io_phery_trace_D3 = sig_hps_io_phery_trace_D3_temp;
   assign sig_hps_io_phery_uart1_RX_in = sig_hps_io_phery_uart1_RX;
   assign sig_hps_io_phery_uart1_TX = sig_hps_io_phery_uart1_TX_temp;
   assign sig_hps_io_phery_i2c1_SDA_oe = sig_hps_io_phery_i2c1_SDA_oe_temp;
   assign sig_hps_io_phery_i2c1_SDA = (sig_hps_io_phery_i2c1_SDA_oe == 1)? sig_hps_io_phery_i2c1_SDA_temp:'z;
   assign sig_hps_io_phery_i2c1_SDA_in = (sig_hps_io_phery_i2c1_SDA_oe == 0)? sig_hps_io_phery_i2c1_SDA:'z;
   assign sig_hps_io_phery_i2c1_SCL_oe = sig_hps_io_phery_i2c1_SCL_oe_temp;
   assign sig_hps_io_phery_i2c1_SCL = (sig_hps_io_phery_i2c1_SCL_oe == 1)? sig_hps_io_phery_i2c1_SCL_temp:'z;
   assign sig_hps_io_phery_i2c1_SCL_in = (sig_hps_io_phery_i2c1_SCL_oe == 0)? sig_hps_io_phery_i2c1_SCL:'z;
   assign sig_hps_io_gpio_gpio1_io5_oe = sig_hps_io_gpio_gpio1_io5_oe_temp;
   assign sig_hps_io_gpio_gpio1_io5 = (sig_hps_io_gpio_gpio1_io5_oe == 1)? sig_hps_io_gpio_gpio1_io5_temp:'z;
   assign sig_hps_io_gpio_gpio1_io5_in = (sig_hps_io_gpio_gpio1_io5_oe == 0)? sig_hps_io_gpio_gpio1_io5:'z;
   assign sig_hps_io_gpio_gpio1_io14_oe = sig_hps_io_gpio_gpio1_io14_oe_temp;
   assign sig_hps_io_gpio_gpio1_io14 = (sig_hps_io_gpio_gpio1_io14_oe == 1)? sig_hps_io_gpio_gpio1_io14_temp:'z;
   assign sig_hps_io_gpio_gpio1_io14_in = (sig_hps_io_gpio_gpio1_io14_oe == 0)? sig_hps_io_gpio_gpio1_io14:'z;
   assign sig_hps_io_gpio_gpio1_io16_oe = sig_hps_io_gpio_gpio1_io16_oe_temp;
   assign sig_hps_io_gpio_gpio1_io16 = (sig_hps_io_gpio_gpio1_io16_oe == 1)? sig_hps_io_gpio_gpio1_io16_temp:'z;
   assign sig_hps_io_gpio_gpio1_io16_in = (sig_hps_io_gpio_gpio1_io16_oe == 0)? sig_hps_io_gpio_gpio1_io16:'z;
   assign sig_hps_io_gpio_gpio1_io17_oe = sig_hps_io_gpio_gpio1_io17_oe_temp;
   assign sig_hps_io_gpio_gpio1_io17 = (sig_hps_io_gpio_gpio1_io17_oe == 1)? sig_hps_io_gpio_gpio1_io17_temp:'z;
   assign sig_hps_io_gpio_gpio1_io17_in = (sig_hps_io_gpio_gpio1_io17_oe == 0)? sig_hps_io_gpio_gpio1_io17:'z;


   always @(sig_hps_io_phery_emac0_RX_CTL_in) begin
      if (sig_hps_io_phery_emac0_RX_CTL_local != sig_hps_io_phery_emac0_RX_CTL_in)
         -> signal_input_hps_io_phery_emac0_RX_CTL_change;
      sig_hps_io_phery_emac0_RX_CTL_local = sig_hps_io_phery_emac0_RX_CTL_in;
   end
   
   always @(sig_hps_io_phery_emac0_RX_CLK_in) begin
      if (sig_hps_io_phery_emac0_RX_CLK_local != sig_hps_io_phery_emac0_RX_CLK_in)
         -> signal_input_hps_io_phery_emac0_RX_CLK_change;
      sig_hps_io_phery_emac0_RX_CLK_local = sig_hps_io_phery_emac0_RX_CLK_in;
   end
   
   always @(sig_hps_io_phery_emac0_RXD0_in) begin
      if (sig_hps_io_phery_emac0_RXD0_local != sig_hps_io_phery_emac0_RXD0_in)
         -> signal_input_hps_io_phery_emac0_RXD0_change;
      sig_hps_io_phery_emac0_RXD0_local = sig_hps_io_phery_emac0_RXD0_in;
   end
   
   always @(sig_hps_io_phery_emac0_RXD1_in) begin
      if (sig_hps_io_phery_emac0_RXD1_local != sig_hps_io_phery_emac0_RXD1_in)
         -> signal_input_hps_io_phery_emac0_RXD1_change;
      sig_hps_io_phery_emac0_RXD1_local = sig_hps_io_phery_emac0_RXD1_in;
   end
   
   always @(sig_hps_io_phery_emac0_RXD2_in) begin
      if (sig_hps_io_phery_emac0_RXD2_local != sig_hps_io_phery_emac0_RXD2_in)
         -> signal_input_hps_io_phery_emac0_RXD2_change;
      sig_hps_io_phery_emac0_RXD2_local = sig_hps_io_phery_emac0_RXD2_in;
   end
   
   always @(sig_hps_io_phery_emac0_RXD3_in) begin
      if (sig_hps_io_phery_emac0_RXD3_local != sig_hps_io_phery_emac0_RXD3_in)
         -> signal_input_hps_io_phery_emac0_RXD3_change;
      sig_hps_io_phery_emac0_RXD3_local = sig_hps_io_phery_emac0_RXD3_in;
   end
   
   always @(sig_hps_io_phery_emac0_MDIO_in) begin
      if (sig_hps_io_phery_emac0_MDIO_oe == 0) begin
         if (sig_hps_io_phery_emac0_MDIO_local != sig_hps_io_phery_emac0_MDIO_in)
            -> signal_input_hps_io_phery_emac0_MDIO_change;
         sig_hps_io_phery_emac0_MDIO_local = sig_hps_io_phery_emac0_MDIO_in;
      end
   end
   
   always @(sig_hps_io_phery_sdmmc_CMD_in) begin
      if (sig_hps_io_phery_sdmmc_CMD_oe == 0) begin
         if (sig_hps_io_phery_sdmmc_CMD_local != sig_hps_io_phery_sdmmc_CMD_in)
            -> signal_input_hps_io_phery_sdmmc_CMD_change;
         sig_hps_io_phery_sdmmc_CMD_local = sig_hps_io_phery_sdmmc_CMD_in;
      end
   end
   
   always @(sig_hps_io_phery_sdmmc_D0_in) begin
      if (sig_hps_io_phery_sdmmc_D0_oe == 0) begin
         if (sig_hps_io_phery_sdmmc_D0_local != sig_hps_io_phery_sdmmc_D0_in)
            -> signal_input_hps_io_phery_sdmmc_D0_change;
         sig_hps_io_phery_sdmmc_D0_local = sig_hps_io_phery_sdmmc_D0_in;
      end
   end
   
   always @(sig_hps_io_phery_sdmmc_D1_in) begin
      if (sig_hps_io_phery_sdmmc_D1_oe == 0) begin
         if (sig_hps_io_phery_sdmmc_D1_local != sig_hps_io_phery_sdmmc_D1_in)
            -> signal_input_hps_io_phery_sdmmc_D1_change;
         sig_hps_io_phery_sdmmc_D1_local = sig_hps_io_phery_sdmmc_D1_in;
      end
   end
   
   always @(sig_hps_io_phery_sdmmc_D2_in) begin
      if (sig_hps_io_phery_sdmmc_D2_oe == 0) begin
         if (sig_hps_io_phery_sdmmc_D2_local != sig_hps_io_phery_sdmmc_D2_in)
            -> signal_input_hps_io_phery_sdmmc_D2_change;
         sig_hps_io_phery_sdmmc_D2_local = sig_hps_io_phery_sdmmc_D2_in;
      end
   end
   
   always @(sig_hps_io_phery_sdmmc_D3_in) begin
      if (sig_hps_io_phery_sdmmc_D3_oe == 0) begin
         if (sig_hps_io_phery_sdmmc_D3_local != sig_hps_io_phery_sdmmc_D3_in)
            -> signal_input_hps_io_phery_sdmmc_D3_change;
         sig_hps_io_phery_sdmmc_D3_local = sig_hps_io_phery_sdmmc_D3_in;
      end
   end
   
   always @(sig_hps_io_phery_sdmmc_D4_in) begin
      if (sig_hps_io_phery_sdmmc_D4_oe == 0) begin
         if (sig_hps_io_phery_sdmmc_D4_local != sig_hps_io_phery_sdmmc_D4_in)
            -> signal_input_hps_io_phery_sdmmc_D4_change;
         sig_hps_io_phery_sdmmc_D4_local = sig_hps_io_phery_sdmmc_D4_in;
      end
   end
   
   always @(sig_hps_io_phery_sdmmc_D5_in) begin
      if (sig_hps_io_phery_sdmmc_D5_oe == 0) begin
         if (sig_hps_io_phery_sdmmc_D5_local != sig_hps_io_phery_sdmmc_D5_in)
            -> signal_input_hps_io_phery_sdmmc_D5_change;
         sig_hps_io_phery_sdmmc_D5_local = sig_hps_io_phery_sdmmc_D5_in;
      end
   end
   
   always @(sig_hps_io_phery_sdmmc_D6_in) begin
      if (sig_hps_io_phery_sdmmc_D6_oe == 0) begin
         if (sig_hps_io_phery_sdmmc_D6_local != sig_hps_io_phery_sdmmc_D6_in)
            -> signal_input_hps_io_phery_sdmmc_D6_change;
         sig_hps_io_phery_sdmmc_D6_local = sig_hps_io_phery_sdmmc_D6_in;
      end
   end
   
   always @(sig_hps_io_phery_sdmmc_D7_in) begin
      if (sig_hps_io_phery_sdmmc_D7_oe == 0) begin
         if (sig_hps_io_phery_sdmmc_D7_local != sig_hps_io_phery_sdmmc_D7_in)
            -> signal_input_hps_io_phery_sdmmc_D7_change;
         sig_hps_io_phery_sdmmc_D7_local = sig_hps_io_phery_sdmmc_D7_in;
      end
   end
   
   always @(sig_hps_io_phery_usb0_DATA0_in) begin
      if (sig_hps_io_phery_usb0_DATA0_oe == 0) begin
         if (sig_hps_io_phery_usb0_DATA0_local != sig_hps_io_phery_usb0_DATA0_in)
            -> signal_input_hps_io_phery_usb0_DATA0_change;
         sig_hps_io_phery_usb0_DATA0_local = sig_hps_io_phery_usb0_DATA0_in;
      end
   end
   
   always @(sig_hps_io_phery_usb0_DATA1_in) begin
      if (sig_hps_io_phery_usb0_DATA1_oe == 0) begin
         if (sig_hps_io_phery_usb0_DATA1_local != sig_hps_io_phery_usb0_DATA1_in)
            -> signal_input_hps_io_phery_usb0_DATA1_change;
         sig_hps_io_phery_usb0_DATA1_local = sig_hps_io_phery_usb0_DATA1_in;
      end
   end
   
   always @(sig_hps_io_phery_usb0_DATA2_in) begin
      if (sig_hps_io_phery_usb0_DATA2_oe == 0) begin
         if (sig_hps_io_phery_usb0_DATA2_local != sig_hps_io_phery_usb0_DATA2_in)
            -> signal_input_hps_io_phery_usb0_DATA2_change;
         sig_hps_io_phery_usb0_DATA2_local = sig_hps_io_phery_usb0_DATA2_in;
      end
   end
   
   always @(sig_hps_io_phery_usb0_DATA3_in) begin
      if (sig_hps_io_phery_usb0_DATA3_oe == 0) begin
         if (sig_hps_io_phery_usb0_DATA3_local != sig_hps_io_phery_usb0_DATA3_in)
            -> signal_input_hps_io_phery_usb0_DATA3_change;
         sig_hps_io_phery_usb0_DATA3_local = sig_hps_io_phery_usb0_DATA3_in;
      end
   end
   
   always @(sig_hps_io_phery_usb0_DATA4_in) begin
      if (sig_hps_io_phery_usb0_DATA4_oe == 0) begin
         if (sig_hps_io_phery_usb0_DATA4_local != sig_hps_io_phery_usb0_DATA4_in)
            -> signal_input_hps_io_phery_usb0_DATA4_change;
         sig_hps_io_phery_usb0_DATA4_local = sig_hps_io_phery_usb0_DATA4_in;
      end
   end
   
   always @(sig_hps_io_phery_usb0_DATA5_in) begin
      if (sig_hps_io_phery_usb0_DATA5_oe == 0) begin
         if (sig_hps_io_phery_usb0_DATA5_local != sig_hps_io_phery_usb0_DATA5_in)
            -> signal_input_hps_io_phery_usb0_DATA5_change;
         sig_hps_io_phery_usb0_DATA5_local = sig_hps_io_phery_usb0_DATA5_in;
      end
   end
   
   always @(sig_hps_io_phery_usb0_DATA6_in) begin
      if (sig_hps_io_phery_usb0_DATA6_oe == 0) begin
         if (sig_hps_io_phery_usb0_DATA6_local != sig_hps_io_phery_usb0_DATA6_in)
            -> signal_input_hps_io_phery_usb0_DATA6_change;
         sig_hps_io_phery_usb0_DATA6_local = sig_hps_io_phery_usb0_DATA6_in;
      end
   end
   
   always @(sig_hps_io_phery_usb0_DATA7_in) begin
      if (sig_hps_io_phery_usb0_DATA7_oe == 0) begin
         if (sig_hps_io_phery_usb0_DATA7_local != sig_hps_io_phery_usb0_DATA7_in)
            -> signal_input_hps_io_phery_usb0_DATA7_change;
         sig_hps_io_phery_usb0_DATA7_local = sig_hps_io_phery_usb0_DATA7_in;
      end
   end
   
   always @(sig_hps_io_phery_usb0_CLK_in) begin
      if (sig_hps_io_phery_usb0_CLK_local != sig_hps_io_phery_usb0_CLK_in)
         -> signal_input_hps_io_phery_usb0_CLK_change;
      sig_hps_io_phery_usb0_CLK_local = sig_hps_io_phery_usb0_CLK_in;
   end
   
   always @(sig_hps_io_phery_usb0_DIR_in) begin
      if (sig_hps_io_phery_usb0_DIR_local != sig_hps_io_phery_usb0_DIR_in)
         -> signal_input_hps_io_phery_usb0_DIR_change;
      sig_hps_io_phery_usb0_DIR_local = sig_hps_io_phery_usb0_DIR_in;
   end
   
   always @(sig_hps_io_phery_usb0_NXT_in) begin
      if (sig_hps_io_phery_usb0_NXT_local != sig_hps_io_phery_usb0_NXT_in)
         -> signal_input_hps_io_phery_usb0_NXT_change;
      sig_hps_io_phery_usb0_NXT_local = sig_hps_io_phery_usb0_NXT_in;
   end
   
   always @(sig_hps_io_phery_spim1_MISO_in) begin
      if (sig_hps_io_phery_spim1_MISO_local != sig_hps_io_phery_spim1_MISO_in)
         -> signal_input_hps_io_phery_spim1_MISO_change;
      sig_hps_io_phery_spim1_MISO_local = sig_hps_io_phery_spim1_MISO_in;
   end
   
   always @(sig_hps_io_phery_uart1_RX_in) begin
      if (sig_hps_io_phery_uart1_RX_local != sig_hps_io_phery_uart1_RX_in)
         -> signal_input_hps_io_phery_uart1_RX_change;
      sig_hps_io_phery_uart1_RX_local = sig_hps_io_phery_uart1_RX_in;
   end
   
   always @(sig_hps_io_phery_i2c1_SDA_in) begin
      if (sig_hps_io_phery_i2c1_SDA_oe == 0) begin
         if (sig_hps_io_phery_i2c1_SDA_local != sig_hps_io_phery_i2c1_SDA_in)
            -> signal_input_hps_io_phery_i2c1_SDA_change;
         sig_hps_io_phery_i2c1_SDA_local = sig_hps_io_phery_i2c1_SDA_in;
      end
   end
   
   always @(sig_hps_io_phery_i2c1_SCL_in) begin
      if (sig_hps_io_phery_i2c1_SCL_oe == 0) begin
         if (sig_hps_io_phery_i2c1_SCL_local != sig_hps_io_phery_i2c1_SCL_in)
            -> signal_input_hps_io_phery_i2c1_SCL_change;
         sig_hps_io_phery_i2c1_SCL_local = sig_hps_io_phery_i2c1_SCL_in;
      end
   end
   
   always @(sig_hps_io_gpio_gpio1_io5_in) begin
      if (sig_hps_io_gpio_gpio1_io5_oe == 0) begin
         if (sig_hps_io_gpio_gpio1_io5_local != sig_hps_io_gpio_gpio1_io5_in)
            -> signal_input_hps_io_gpio_gpio1_io5_change;
         sig_hps_io_gpio_gpio1_io5_local = sig_hps_io_gpio_gpio1_io5_in;
      end
   end
   
   always @(sig_hps_io_gpio_gpio1_io14_in) begin
      if (sig_hps_io_gpio_gpio1_io14_oe == 0) begin
         if (sig_hps_io_gpio_gpio1_io14_local != sig_hps_io_gpio_gpio1_io14_in)
            -> signal_input_hps_io_gpio_gpio1_io14_change;
         sig_hps_io_gpio_gpio1_io14_local = sig_hps_io_gpio_gpio1_io14_in;
      end
   end
   
   always @(sig_hps_io_gpio_gpio1_io16_in) begin
      if (sig_hps_io_gpio_gpio1_io16_oe == 0) begin
         if (sig_hps_io_gpio_gpio1_io16_local != sig_hps_io_gpio_gpio1_io16_in)
            -> signal_input_hps_io_gpio_gpio1_io16_change;
         sig_hps_io_gpio_gpio1_io16_local = sig_hps_io_gpio_gpio1_io16_in;
      end
   end
   
   always @(sig_hps_io_gpio_gpio1_io17_in) begin
      if (sig_hps_io_gpio_gpio1_io17_oe == 0) begin
         if (sig_hps_io_gpio_gpio1_io17_local != sig_hps_io_gpio_gpio1_io17_in)
            -> signal_input_hps_io_gpio_gpio1_io17_change;
         sig_hps_io_gpio_gpio1_io17_local = sig_hps_io_gpio_gpio1_io17_in;
      end
   end
   


// synthesis translate_on

endmodule

