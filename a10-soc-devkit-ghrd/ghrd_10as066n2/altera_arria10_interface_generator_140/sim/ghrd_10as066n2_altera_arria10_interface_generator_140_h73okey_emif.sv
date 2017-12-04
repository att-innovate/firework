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
// output_name:                                       ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_emif
// role:width:direction:                              emif_emif_to_hps:4096:Input,emif_hps_to_emif:4096:Output,emif_emif_to_gp:1:Input,emif_gp_to_emif:2:Output
// 0
//-----------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_emif
(
   sig_emif_emif_to_hps,
   sig_emif_hps_to_emif,
   sig_emif_emif_to_gp,
   sig_emif_gp_to_emif
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   input [4095 : 0] sig_emif_emif_to_hps;
   output [4095 : 0] sig_emif_hps_to_emif;
   input sig_emif_emif_to_gp;
   output [1 : 0] sig_emif_gp_to_emif;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic [4095 : 0] ROLE_emif_emif_to_hps_t;
   typedef logic [4095 : 0] ROLE_emif_hps_to_emif_t;
   typedef logic ROLE_emif_emif_to_gp_t;
   typedef logic [1 : 0] ROLE_emif_gp_to_emif_t;

   logic [4095 : 0] sig_emif_emif_to_hps_in;
   logic [4095 : 0] sig_emif_emif_to_hps_local;
   reg [4095 : 0] sig_emif_hps_to_emif_temp;
   reg [4095 : 0] sig_emif_hps_to_emif_out;
   logic [0 : 0] sig_emif_emif_to_gp_in;
   logic [0 : 0] sig_emif_emif_to_gp_local;
   reg [1 : 0] sig_emif_gp_to_emif_temp;
   reg [1 : 0] sig_emif_gp_to_emif_out;

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
   
   event signal_input_emif_emif_to_hps_change;
   event signal_input_emif_emif_to_gp_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "16.1";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // emif_emif_to_hps
   // -------------------------------------------------------
   function automatic ROLE_emif_emif_to_hps_t get_emif_emif_to_hps();
   
      // Gets the emif_emif_to_hps input value.
      $sformat(message, "%m: called get_emif_emif_to_hps");
      print(VERBOSITY_DEBUG, message);
      return sig_emif_emif_to_hps_in;
      
   endfunction

   // -------------------------------------------------------
   // emif_hps_to_emif
   // -------------------------------------------------------

   function automatic void set_emif_hps_to_emif (
      ROLE_emif_hps_to_emif_t new_value
   );
      // Drive the new value to emif_hps_to_emif.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_emif_hps_to_emif_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // emif_emif_to_gp
   // -------------------------------------------------------
   function automatic ROLE_emif_emif_to_gp_t get_emif_emif_to_gp();
   
      // Gets the emif_emif_to_gp input value.
      $sformat(message, "%m: called get_emif_emif_to_gp");
      print(VERBOSITY_DEBUG, message);
      return sig_emif_emif_to_gp_in;
      
   endfunction

   // -------------------------------------------------------
   // emif_gp_to_emif
   // -------------------------------------------------------

   function automatic void set_emif_gp_to_emif (
      ROLE_emif_gp_to_emif_t new_value
   );
      // Drive the new value to emif_gp_to_emif.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_emif_gp_to_emif_temp = new_value;
   endfunction

   assign sig_emif_emif_to_hps_in = sig_emif_emif_to_hps;
   assign sig_emif_hps_to_emif = sig_emif_hps_to_emif_temp;
   assign sig_emif_emif_to_gp_in = sig_emif_emif_to_gp;
   assign sig_emif_gp_to_emif = sig_emif_gp_to_emif_temp;


   always @(sig_emif_emif_to_hps_in) begin
      if (sig_emif_emif_to_hps_local != sig_emif_emif_to_hps_in)
         -> signal_input_emif_emif_to_hps_change;
      sig_emif_emif_to_hps_local = sig_emif_emif_to_hps_in;
   end
   
   always @(sig_emif_emif_to_gp_in) begin
      if (sig_emif_emif_to_gp_local != sig_emif_emif_to_gp_in)
         -> signal_input_emif_emif_to_gp_change;
      sig_emif_emif_to_gp_local = sig_emif_emif_to_gp_in;
   end
   


// synthesis translate_on

endmodule

