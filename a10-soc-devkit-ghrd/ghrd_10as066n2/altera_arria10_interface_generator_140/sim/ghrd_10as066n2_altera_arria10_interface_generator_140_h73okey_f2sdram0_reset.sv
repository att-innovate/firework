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
// output_name:                                       ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2sdram0_reset
// role:width:direction:                              f2s_sdram0_rst:1:Input
// 1
//-----------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2sdram0_reset
(
   clk,
   reset,
   reset_n,
   sig_f2s_sdram0_rst
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   input clk;
   input reset;
   input reset_n;
   input sig_f2s_sdram0_rst;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic ROLE_f2s_sdram0_rst_t;

   logic [0 : 0] sig_f2s_sdram0_rst_in;
   logic [0 : 0] sig_f2s_sdram0_rst_local;

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
   
   event signal_reset_asserted;
   event signal_input_f2s_sdram0_rst_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "16.1";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // f2s_sdram0_rst
   // -------------------------------------------------------
   function automatic ROLE_f2s_sdram0_rst_t get_f2s_sdram0_rst();
   
      // Gets the f2s_sdram0_rst input value.
      $sformat(message, "%m: called get_f2s_sdram0_rst");
      print(VERBOSITY_DEBUG, message);
      return sig_f2s_sdram0_rst_in;
      
   endfunction

   always @(posedge clk) begin
      sig_f2s_sdram0_rst_in <= sig_f2s_sdram0_rst;
   end
   

   always @(posedge reset or negedge reset_n) begin
      -> signal_reset_asserted;
   end

   always @(sig_f2s_sdram0_rst_in) begin
      if (sig_f2s_sdram0_rst_local != sig_f2s_sdram0_rst_in)
         -> signal_input_f2s_sdram0_rst_change;
      sig_f2s_sdram0_rst_local = sig_f2s_sdram0_rst_in;
   end
   


// synthesis translate_on

endmodule

