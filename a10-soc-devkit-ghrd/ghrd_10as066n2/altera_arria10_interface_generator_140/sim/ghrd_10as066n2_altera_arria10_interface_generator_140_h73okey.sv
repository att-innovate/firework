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
import mgc_axi_pkg::*;

module ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey
(
   output wire [  0:  0] h2f_rst_n,
   input  wire [  0:  0] f2h_cold_rst_req_n,
   input  wire [  0:  0] f2h_dbg_rst_req_n,
   input  wire [  0:  0] f2h_warm_rst_req_n,
   input  wire [ 27:  0] f2h_stm_hwevents,
   input  wire [4095:  0] emif_emif_to_hps,
   output wire [4095:  0] emif_hps_to_emif,
   input  wire [  0:  0] emif_emif_to_gp,
   output wire [  1:  0] emif_gp_to_emif,
   input  wire [  0:  0] f2h_axi_clk,
   input  wire [  0:  0] f2h_axi_rst,
   input  wire [  3:  0] f2h_AWID,
   input  wire [ 31:  0] f2h_AWADDR,
   input  wire [  3:  0] f2h_AWLEN,
   input  wire [  2:  0] f2h_AWSIZE,
   input  wire [  1:  0] f2h_AWBURST,
   input  wire [  1:  0] f2h_AWLOCK,
   input  wire [  3:  0] f2h_AWCACHE,
   input  wire [  2:  0] f2h_AWPROT,
   input  wire [  0:  0] f2h_AWVALID,
   output wire [  0:  0] f2h_AWREADY,
   input  wire [  4:  0] f2h_AWUSER,
   input  wire [  3:  0] f2h_WID,
   input  wire [127:  0] f2h_WDATA,
   input  wire [ 15:  0] f2h_WSTRB,
   input  wire [  0:  0] f2h_WLAST,
   input  wire [  0:  0] f2h_WVALID,
   output wire [  0:  0] f2h_WREADY,
   output wire [  3:  0] f2h_BID,
   output wire [  1:  0] f2h_BRESP,
   output wire [  0:  0] f2h_BVALID,
   input  wire [  0:  0] f2h_BREADY,
   input  wire [  3:  0] f2h_ARID,
   input  wire [ 31:  0] f2h_ARADDR,
   input  wire [  3:  0] f2h_ARLEN,
   input  wire [  2:  0] f2h_ARSIZE,
   input  wire [  1:  0] f2h_ARBURST,
   input  wire [  1:  0] f2h_ARLOCK,
   input  wire [  3:  0] f2h_ARCACHE,
   input  wire [  2:  0] f2h_ARPROT,
   input  wire [  0:  0] f2h_ARVALID,
   output wire [  0:  0] f2h_ARREADY,
   input  wire [  4:  0] f2h_ARUSER,
   output wire [  3:  0] f2h_RID,
   output wire [127:  0] f2h_RDATA,
   output wire [  1:  0] f2h_RRESP,
   output wire [  0:  0] f2h_RLAST,
   output wire [  0:  0] f2h_RVALID,
   input  wire [  0:  0] f2h_RREADY,
   input  wire [  0:  0] h2f_lw_axi_clk,
   input  wire [  0:  0] h2f_lw_axi_rst,
   output wire [  3:  0] h2f_lw_AWID,
   output wire [ 20:  0] h2f_lw_AWADDR,
   output wire [  3:  0] h2f_lw_AWLEN,
   output wire [  2:  0] h2f_lw_AWSIZE,
   output wire [  1:  0] h2f_lw_AWBURST,
   output wire [  1:  0] h2f_lw_AWLOCK,
   output wire [  3:  0] h2f_lw_AWCACHE,
   output wire [  2:  0] h2f_lw_AWPROT,
   output wire [  0:  0] h2f_lw_AWVALID,
   input  wire [  0:  0] h2f_lw_AWREADY,
   output wire [  4:  0] h2f_lw_AWUSER,
   output wire [  3:  0] h2f_lw_WID,
   output wire [ 31:  0] h2f_lw_WDATA,
   output wire [  3:  0] h2f_lw_WSTRB,
   output wire [  0:  0] h2f_lw_WLAST,
   output wire [  0:  0] h2f_lw_WVALID,
   input  wire [  0:  0] h2f_lw_WREADY,
   input  wire [  3:  0] h2f_lw_BID,
   input  wire [  1:  0] h2f_lw_BRESP,
   input  wire [  0:  0] h2f_lw_BVALID,
   output wire [  0:  0] h2f_lw_BREADY,
   output wire [  3:  0] h2f_lw_ARID,
   output wire [ 20:  0] h2f_lw_ARADDR,
   output wire [  3:  0] h2f_lw_ARLEN,
   output wire [  2:  0] h2f_lw_ARSIZE,
   output wire [  1:  0] h2f_lw_ARBURST,
   output wire [  1:  0] h2f_lw_ARLOCK,
   output wire [  3:  0] h2f_lw_ARCACHE,
   output wire [  2:  0] h2f_lw_ARPROT,
   output wire [  0:  0] h2f_lw_ARVALID,
   input  wire [  0:  0] h2f_lw_ARREADY,
   output wire [  4:  0] h2f_lw_ARUSER,
   input  wire [  3:  0] h2f_lw_RID,
   input  wire [ 31:  0] h2f_lw_RDATA,
   input  wire [  1:  0] h2f_lw_RRESP,
   input  wire [  0:  0] h2f_lw_RLAST,
   input  wire [  0:  0] h2f_lw_RVALID,
   output wire [  0:  0] h2f_lw_RREADY,
   input  wire [  0:  0] h2f_axi_clk,
   input  wire [  0:  0] h2f_axi_rst,
   output wire [  3:  0] h2f_AWID,
   output wire [ 31:  0] h2f_AWADDR,
   output wire [  3:  0] h2f_AWLEN,
   output wire [  2:  0] h2f_AWSIZE,
   output wire [  1:  0] h2f_AWBURST,
   output wire [  1:  0] h2f_AWLOCK,
   output wire [  3:  0] h2f_AWCACHE,
   output wire [  2:  0] h2f_AWPROT,
   output wire [  0:  0] h2f_AWVALID,
   input  wire [  0:  0] h2f_AWREADY,
   output wire [  4:  0] h2f_AWUSER,
   output wire [  3:  0] h2f_WID,
   output wire [ 31:  0] h2f_WDATA,
   output wire [  3:  0] h2f_WSTRB,
   output wire [  0:  0] h2f_WLAST,
   output wire [  0:  0] h2f_WVALID,
   input  wire [  0:  0] h2f_WREADY,
   input  wire [  3:  0] h2f_BID,
   input  wire [  1:  0] h2f_BRESP,
   input  wire [  0:  0] h2f_BVALID,
   output wire [  0:  0] h2f_BREADY,
   output wire [  3:  0] h2f_ARID,
   output wire [ 31:  0] h2f_ARADDR,
   output wire [  3:  0] h2f_ARLEN,
   output wire [  2:  0] h2f_ARSIZE,
   output wire [  1:  0] h2f_ARBURST,
   output wire [  1:  0] h2f_ARLOCK,
   output wire [  3:  0] h2f_ARCACHE,
   output wire [  2:  0] h2f_ARPROT,
   output wire [  0:  0] h2f_ARVALID,
   input  wire [  0:  0] h2f_ARREADY,
   output wire [  4:  0] h2f_ARUSER,
   input  wire [  3:  0] h2f_RID,
   input  wire [ 31:  0] h2f_RDATA,
   input  wire [  1:  0] h2f_RRESP,
   input  wire [  0:  0] h2f_RLAST,
   input  wire [  0:  0] h2f_RVALID,
   output wire [  0:  0] h2f_RREADY,
   input  wire [  0:  0] f2sdram0_clk,
   input  wire [  0:  0] f2s_sdram0_rst,
   input  wire [ 31:  0] f2sdram0_ARADDR,
   input  wire [  1:  0] f2sdram0_ARBURST,
   input  wire [  3:  0] f2sdram0_ARCACHE,
   input  wire [  3:  0] f2sdram0_ARID,
   input  wire [  3:  0] f2sdram0_ARLEN,
   input  wire [  1:  0] f2sdram0_ARLOCK,
   input  wire [  2:  0] f2sdram0_ARPROT,
   output wire [  0:  0] f2sdram0_ARREADY,
   input  wire [  2:  0] f2sdram0_ARSIZE,
   input  wire [  4:  0] f2sdram0_ARUSER,
   input  wire [  0:  0] f2sdram0_ARVALID,
   input  wire [ 31:  0] f2sdram0_AWADDR,
   input  wire [  1:  0] f2sdram0_AWBURST,
   input  wire [  3:  0] f2sdram0_AWCACHE,
   input  wire [  3:  0] f2sdram0_AWID,
   input  wire [  3:  0] f2sdram0_AWLEN,
   input  wire [  1:  0] f2sdram0_AWLOCK,
   input  wire [  2:  0] f2sdram0_AWPROT,
   output wire [  0:  0] f2sdram0_AWREADY,
   input  wire [  2:  0] f2sdram0_AWSIZE,
   input  wire [  4:  0] f2sdram0_AWUSER,
   input  wire [  0:  0] f2sdram0_AWVALID,
   input  wire [127:  0] f2sdram0_WDATA,
   input  wire [  3:  0] f2sdram0_WID,
   input  wire [  0:  0] f2sdram0_WLAST,
   output wire [  0:  0] f2sdram0_WREADY,
   input  wire [ 15:  0] f2sdram0_WSTRB,
   input  wire [  0:  0] f2sdram0_WVALID,
   output wire [  3:  0] f2sdram0_BID,
   input  wire [  0:  0] f2sdram0_BREADY,
   output wire [  1:  0] f2sdram0_BRESP,
   output wire [  0:  0] f2sdram0_BVALID,
   output wire [127:  0] f2sdram0_RDATA,
   output wire [  3:  0] f2sdram0_RID,
   output wire [  0:  0] f2sdram0_RLAST,
   input  wire [  0:  0] f2sdram0_RREADY,
   output wire [  1:  0] f2sdram0_RRESP,
   output wire [  0:  0] f2sdram0_RVALID,
   input  wire [  0:  0] f2sdram2_clk,
   input  wire [  0:  0] f2s_sdram2_rst,
   input  wire [ 31:  0] f2sdram2_ARADDR,
   input  wire [  1:  0] f2sdram2_ARBURST,
   input  wire [  3:  0] f2sdram2_ARCACHE,
   input  wire [  3:  0] f2sdram2_ARID,
   input  wire [  3:  0] f2sdram2_ARLEN,
   input  wire [  1:  0] f2sdram2_ARLOCK,
   input  wire [  2:  0] f2sdram2_ARPROT,
   output wire [  0:  0] f2sdram2_ARREADY,
   input  wire [  2:  0] f2sdram2_ARSIZE,
   input  wire [  4:  0] f2sdram2_ARUSER,
   input  wire [  0:  0] f2sdram2_ARVALID,
   input  wire [ 31:  0] f2sdram2_AWADDR,
   input  wire [  1:  0] f2sdram2_AWBURST,
   input  wire [  3:  0] f2sdram2_AWCACHE,
   input  wire [  3:  0] f2sdram2_AWID,
   input  wire [  3:  0] f2sdram2_AWLEN,
   input  wire [  1:  0] f2sdram2_AWLOCK,
   input  wire [  2:  0] f2sdram2_AWPROT,
   output wire [  0:  0] f2sdram2_AWREADY,
   input  wire [  2:  0] f2sdram2_AWSIZE,
   input  wire [  4:  0] f2sdram2_AWUSER,
   input  wire [  0:  0] f2sdram2_AWVALID,
   input  wire [127:  0] f2sdram2_WDATA,
   input  wire [  3:  0] f2sdram2_WID,
   input  wire [  0:  0] f2sdram2_WLAST,
   output wire [  0:  0] f2sdram2_WREADY,
   input  wire [ 15:  0] f2sdram2_WSTRB,
   input  wire [  0:  0] f2sdram2_WVALID,
   output wire [  3:  0] f2sdram2_BID,
   input  wire [  0:  0] f2sdram2_BREADY,
   output wire [  1:  0] f2sdram2_BRESP,
   output wire [  0:  0] f2sdram2_BVALID,
   output wire [127:  0] f2sdram2_RDATA,
   output wire [  3:  0] f2sdram2_RID,
   output wire [  0:  0] f2sdram2_RLAST,
   input  wire [  0:  0] f2sdram2_RREADY,
   output wire [  1:  0] f2sdram2_RRESP,
   output wire [  0:  0] f2sdram2_RVALID,
   input  wire [ 31:  0] f2h_irq_p0,
   input  wire [ 31:  0] f2h_irq_p1
);




   mgc_axi_slave #(
      .AXI_ID_WIDTH(4),
      .AXI_ADDRESS_WIDTH(32),
      .AXI_WDATA_WIDTH(128),
      .AXI_RDATA_WIDTH(128)
   ) f2sdram0_data_inst (
      .AWBURST(f2sdram0_AWBURST),
      .ARREADY(f2sdram0_ARREADY),
      .ARID(f2sdram0_ARID),
      .AWVALID(f2sdram0_AWVALID),
      .AWLOCK(f2sdram0_AWLOCK),
      .WDATA(f2sdram0_WDATA),
      .RVALID(f2sdram0_RVALID),
      .BVALID(f2sdram0_BVALID),
      .AWSIZE(f2sdram0_AWSIZE),
      .ARVALID(f2sdram0_ARVALID),
      .WLAST(f2sdram0_WLAST),
      .ARBURST(f2sdram0_ARBURST),
      .AWADDR(f2sdram0_AWADDR),
      .RRESP(f2sdram0_RRESP),
      .BRESP(f2sdram0_BRESP),
      .AWID(f2sdram0_AWID),
      .RID(f2sdram0_RID),
      .AWLEN(f2sdram0_AWLEN),
      .BID(f2sdram0_BID),
      .ARPROT(f2sdram0_ARPROT),
      .ARESETn(f2s_sdram0_rst),
      .WSTRB(f2sdram0_WSTRB),
      .ARUSER({3'b000,f2sdram0_ARUSER}),
      .ARLEN(f2sdram0_ARLEN),
      .ACLK(f2sdram0_clk),
      .WID(f2sdram0_WID),
      .WREADY(f2sdram0_WREADY),
      .AWCACHE(f2sdram0_AWCACHE),
      .RDATA(f2sdram0_RDATA),
      .ARLOCK(f2sdram0_ARLOCK),
      .AWREADY(f2sdram0_AWREADY),
      .AWPROT(f2sdram0_AWPROT),
      .RLAST(f2sdram0_RLAST),
      .ARADDR(f2sdram0_ARADDR),
      .ARSIZE(f2sdram0_ARSIZE),
      .WVALID(f2sdram0_WVALID),
      .AWUSER({3'b000,f2sdram0_AWUSER}),
      .RREADY(f2sdram0_RREADY),
      .BREADY(f2sdram0_BREADY),
      .ARCACHE(f2sdram0_ARCACHE)
   );

   ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_emif emif_inst (
      .sig_emif_gp_to_emif(emif_gp_to_emif),
      .sig_emif_emif_to_gp(emif_emif_to_gp),
      .sig_emif_hps_to_emif(emif_hps_to_emif),
      .sig_emif_emif_to_hps(emif_emif_to_hps)
   );

   mgc_axi_slave #(
      .AXI_ID_WIDTH(4),
      .AXI_ADDRESS_WIDTH(32),
      .AXI_WDATA_WIDTH(128),
      .AXI_RDATA_WIDTH(128)
   ) f2sdram2_data_inst (
      .AWBURST(f2sdram2_AWBURST),
      .ARREADY(f2sdram2_ARREADY),
      .ARID(f2sdram2_ARID),
      .AWVALID(f2sdram2_AWVALID),
      .AWLOCK(f2sdram2_AWLOCK),
      .WDATA(f2sdram2_WDATA),
      .RVALID(f2sdram2_RVALID),
      .BVALID(f2sdram2_BVALID),
      .AWSIZE(f2sdram2_AWSIZE),
      .ARVALID(f2sdram2_ARVALID),
      .WLAST(f2sdram2_WLAST),
      .ARBURST(f2sdram2_ARBURST),
      .AWADDR(f2sdram2_AWADDR),
      .RRESP(f2sdram2_RRESP),
      .BRESP(f2sdram2_BRESP),
      .AWID(f2sdram2_AWID),
      .RID(f2sdram2_RID),
      .AWLEN(f2sdram2_AWLEN),
      .BID(f2sdram2_BID),
      .ARPROT(f2sdram2_ARPROT),
      .ARESETn(f2s_sdram2_rst),
      .WSTRB(f2sdram2_WSTRB),
      .ARUSER({3'b000,f2sdram2_ARUSER}),
      .ARLEN(f2sdram2_ARLEN),
      .ACLK(f2sdram2_clk),
      .WID(f2sdram2_WID),
      .WREADY(f2sdram2_WREADY),
      .AWCACHE(f2sdram2_AWCACHE),
      .RDATA(f2sdram2_RDATA),
      .ARLOCK(f2sdram2_ARLOCK),
      .AWREADY(f2sdram2_AWREADY),
      .AWPROT(f2sdram2_AWPROT),
      .RLAST(f2sdram2_RLAST),
      .ARADDR(f2sdram2_ARADDR),
      .ARSIZE(f2sdram2_ARSIZE),
      .WVALID(f2sdram2_WVALID),
      .AWUSER({3'b000,f2sdram2_AWUSER}),
      .RREADY(f2sdram2_RREADY),
      .BREADY(f2sdram2_BREADY),
      .ARCACHE(f2sdram2_ARCACHE)
   );

   ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_h2f_axi_reset h2f_axi_reset_inst (
      .clk(h2f_axi_clk),
      .sig_h2f_axi_rst(h2f_axi_rst)
   );

   ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_axi_reset f2h_axi_reset_inst (
      .clk(f2h_axi_clk),
      .sig_f2h_axi_rst(f2h_axi_rst)
   );

   mgc_axi_master #(
      .AXI_ID_WIDTH(4),
      .AXI_ADDRESS_WIDTH(32),
      .AXI_WDATA_WIDTH(32),
      .AXI_RDATA_WIDTH(32)
   ) h2f_axi_master_inst (
      .AWBURST(h2f_AWBURST),
      .ARREADY(h2f_ARREADY),
      .ARID(h2f_ARID),
      .AWVALID(h2f_AWVALID),
      .AWLOCK(h2f_AWLOCK),
      .WDATA(h2f_WDATA),
      .RVALID(h2f_RVALID),
      .BVALID(h2f_BVALID),
      .AWSIZE(h2f_AWSIZE),
      .ARVALID(h2f_ARVALID),
      .WLAST(h2f_WLAST),
      .ARBURST(h2f_ARBURST),
      .AWADDR(h2f_AWADDR),
      .RRESP(h2f_RRESP),
      .BRESP(h2f_BRESP),
      .AWID(h2f_AWID),
      .RID(h2f_RID),
      .AWLEN(h2f_AWLEN),
      .BID(h2f_BID),
      .ARPROT(h2f_ARPROT),
      .ARESETn(h2f_axi_rst),
      .WSTRB(h2f_WSTRB),
      .ARUSER(h2f_ARUSER),
      .ARLEN(h2f_ARLEN),
      .ACLK(h2f_axi_clk),
      .WID(h2f_WID),
      .WREADY(h2f_WREADY),
      .AWCACHE(h2f_AWCACHE),
      .RDATA(h2f_RDATA),
      .ARLOCK(h2f_ARLOCK),
      .AWREADY(h2f_AWREADY),
      .AWPROT(h2f_AWPROT),
      .RLAST(h2f_RLAST),
      .ARADDR(h2f_ARADDR),
      .ARSIZE(h2f_ARSIZE),
      .WVALID(h2f_WVALID),
      .AWUSER(h2f_AWUSER),
      .RREADY(h2f_RREADY),
      .BREADY(h2f_BREADY),
      .ARCACHE(h2f_ARCACHE)
   );

   ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_h2f_lw_axi_reset h2f_lw_axi_reset_inst (
      .clk(h2f_lw_axi_clk),
      .sig_h2f_lw_axi_rst(h2f_lw_axi_rst)
   );

   mgc_axi_master #(
      .AXI_ID_WIDTH(4),
      .AXI_ADDRESS_WIDTH(21),
      .AXI_WDATA_WIDTH(32),
      .AXI_RDATA_WIDTH(32)
   ) h2f_lw_axi_master_inst (
      .AWBURST(h2f_lw_AWBURST),
      .ARREADY(h2f_lw_ARREADY),
      .ARID(h2f_lw_ARID),
      .AWVALID(h2f_lw_AWVALID),
      .AWLOCK(h2f_lw_AWLOCK),
      .WDATA(h2f_lw_WDATA),
      .RVALID(h2f_lw_RVALID),
      .BVALID(h2f_lw_BVALID),
      .AWSIZE(h2f_lw_AWSIZE),
      .ARVALID(h2f_lw_ARVALID),
      .WLAST(h2f_lw_WLAST),
      .ARBURST(h2f_lw_ARBURST),
      .AWADDR(h2f_lw_AWADDR),
      .RRESP(h2f_lw_RRESP),
      .BRESP(h2f_lw_BRESP),
      .AWID(h2f_lw_AWID),
      .RID(h2f_lw_RID),
      .AWLEN(h2f_lw_AWLEN),
      .BID(h2f_lw_BID),
      .ARPROT(h2f_lw_ARPROT),
      .ARESETn(h2f_lw_axi_rst),
      .WSTRB(h2f_lw_WSTRB),
      .ARUSER(h2f_lw_ARUSER),
      .ARLEN(h2f_lw_ARLEN),
      .ACLK(h2f_lw_axi_clk),
      .WID(h2f_lw_WID),
      .WREADY(h2f_lw_WREADY),
      .AWCACHE(h2f_lw_AWCACHE),
      .RDATA(h2f_lw_RDATA),
      .ARLOCK(h2f_lw_ARLOCK),
      .AWREADY(h2f_lw_AWREADY),
      .AWPROT(h2f_lw_AWPROT),
      .RLAST(h2f_lw_RLAST),
      .ARADDR(h2f_lw_ARADDR),
      .ARSIZE(h2f_lw_ARSIZE),
      .WVALID(h2f_lw_WVALID),
      .AWUSER(h2f_lw_AWUSER),
      .RREADY(h2f_lw_RREADY),
      .BREADY(h2f_lw_BREADY),
      .ARCACHE(h2f_lw_ARCACHE)
   );

   ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2sdram0_reset f2sdram0_reset_inst (
      .clk(f2sdram0_clk),
      .sig_f2s_sdram0_rst(f2s_sdram0_rst)
   );

   altera_avalon_reset_source #(
      .ASSERT_HIGH_RESET(0),
      .INITIAL_RESET_CYCLES(0)
   ) h2f_reset_inst (
      .reset(h2f_rst_n),
      .clk('0)
   );

   ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_cold_reset_req f2h_cold_reset_req_inst (
      .sig_f2h_cold_rst_req_n(f2h_cold_rst_req_n)
   );

   altera_avalon_interrupt_sink #(
      .ASSERT_HIGH_IRQ(1),
      .AV_IRQ_W(32),
      .ASYNCHRONOUS_INTERRUPT(1)
   ) f2h_irq0_inst (
      .irq(f2h_irq_p0),
      .clk('0),
      .reset('0)
   );

   ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2sdram2_reset f2sdram2_reset_inst (
      .clk(f2sdram2_clk),
      .sig_f2s_sdram2_rst(f2s_sdram2_rst)
   );

   mgc_axi_slave #(
      .AXI_ID_WIDTH(4),
      .AXI_ADDRESS_WIDTH(32),
      .AXI_WDATA_WIDTH(128),
      .AXI_RDATA_WIDTH(128)
   ) f2h_axi_slave_inst (
      .AWBURST(f2h_AWBURST),
      .ARREADY(f2h_ARREADY),
      .ARID(f2h_ARID),
      .AWVALID(f2h_AWVALID),
      .AWLOCK(f2h_AWLOCK),
      .WDATA(f2h_WDATA),
      .RVALID(f2h_RVALID),
      .BVALID(f2h_BVALID),
      .AWSIZE(f2h_AWSIZE),
      .ARVALID(f2h_ARVALID),
      .WLAST(f2h_WLAST),
      .ARBURST(f2h_ARBURST),
      .AWADDR(f2h_AWADDR),
      .RRESP(f2h_RRESP),
      .BRESP(f2h_BRESP),
      .AWID(f2h_AWID),
      .RID(f2h_RID),
      .AWLEN(f2h_AWLEN),
      .BID(f2h_BID),
      .ARPROT(f2h_ARPROT),
      .ARESETn(f2h_axi_rst),
      .WSTRB(f2h_WSTRB),
      .ARUSER({3'b000,f2h_ARUSER}),
      .ARLEN(f2h_ARLEN),
      .ACLK(f2h_axi_clk),
      .WID(f2h_WID),
      .WREADY(f2h_WREADY),
      .AWCACHE(f2h_AWCACHE),
      .RDATA(f2h_RDATA),
      .ARLOCK(f2h_ARLOCK),
      .AWREADY(f2h_AWREADY),
      .AWPROT(f2h_AWPROT),
      .RLAST(f2h_RLAST),
      .ARADDR(f2h_ARADDR),
      .ARSIZE(f2h_ARSIZE),
      .WVALID(f2h_WVALID),
      .AWUSER({3'b000,f2h_AWUSER}),
      .RREADY(f2h_RREADY),
      .BREADY(f2h_BREADY),
      .ARCACHE(f2h_ARCACHE)
   );

   altera_avalon_interrupt_sink #(
      .ASSERT_HIGH_IRQ(1),
      .AV_IRQ_W(32),
      .ASYNCHRONOUS_INTERRUPT(1)
   ) f2h_irq1_inst (
      .irq(f2h_irq_p1),
      .clk('0),
      .reset('0)
   );

   ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_stm_hw_events f2h_stm_hw_events_inst (
      .sig_f2h_stm_hwevents(f2h_stm_hwevents)
   );

   ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_debug_reset_req f2h_debug_reset_req_inst (
      .sig_f2h_dbg_rst_req_n(f2h_dbg_rst_req_n)
   );

   ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_warm_reset_req f2h_warm_reset_req_inst (
      .sig_f2h_warm_rst_req_n(f2h_warm_rst_req_n)
   );

endmodule 

