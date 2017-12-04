
# (C) 2001-2017 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 16.1 196 linux 2017.12.04.16:13:21
# ----------------------------------------
# Auto-generated simulation script rivierapro_setup.tcl
# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     ghrd_10as066n2
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level script that compiles Altera simulation libraries and
# the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "aldec.do", and modify the text as directed.
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# set QSYS_SIMDIR <script generation output directory>
# #
# # Source the generated IP simulation script.
# source $QSYS_SIMDIR/aldec/rivierapro_setup.tcl
# #
# # Set any compilation options you require (this is unusual).
# set USER_DEFINED_COMPILE_OPTIONS <compilation options>
# #
# # Call command to compile the Quartus EDA simulation library.
# dev_com
# #
# # Call command to compile the Quartus-generated IP simulation files.
# com
# #
# # Add commands to compile all design files and testbench files, including
# # the top level. (These are all the files required for simulation other
# # than the files compiled by the Quartus-generated IP simulation script)
# #
# vlog -sv2k5 <your compilation options> <design and testbench files>
# #
# # Set the top-level simulation or testbench module/entity name, which is
# # used by the elab command to elaborate the top level.
# #
# set TOP_LEVEL_NAME <simulation top>
# #
# # Set any elaboration options you require.
# set USER_DEFINED_ELAB_OPTIONS <elaboration options>
# #
# # Call command to elaborate your design and testbench.
# elab
# #
# # Run the simulation.
# run
# #
# # Report success to the shell.
# exit -code 0
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If ghrd_10as066n2 is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "ghrd_10as066n2"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "/home/fpga/workspace/intelFPGA/16.1/quartus/"
}

if ![info exists USER_DEFINED_COMPILE_OPTIONS] { 
  set USER_DEFINED_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_ELAB_OPTIONS] { 
  set USER_DEFINED_ELAB_OPTIONS ""
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

set Aldec "Riviera"
if { [ string match "*Active-HDL*" [ vsim -version ] ] } {
  set Aldec "Active"
}

if { [ string match "Active" $Aldec ] } {
  scripterconf -tcl
  createdesign "$TOP_LEVEL_NAME"  "."
  opendesign "$TOP_LEVEL_NAME"
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/ghrd_10as066n2_altera_emif_arch_nf_161_7576xxi_seq_params_sim.hex ./
  file copy -force $QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/ghrd_10as066n2_altera_emif_arch_nf_161_7576xxi_seq_params_synth.hex ./
  file copy -force $QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/ghrd_10as066n2_altera_emif_arch_nf_161_7576xxi_seq_cal.hex ./
  file copy -force $QSYS_SIMDIR/ghrd_10as066n2/altera_avalon_onchip_memory2_161/sim/ghrd_10as066n2_onchip_memory2_0.hex ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib      ./libraries     
ensure_lib      ./libraries/work
vmap       work ./libraries/work
ensure_lib                   ./libraries/altera_ver       
vmap       altera_ver        ./libraries/altera_ver       
ensure_lib                   ./libraries/lpm_ver          
vmap       lpm_ver           ./libraries/lpm_ver          
ensure_lib                   ./libraries/sgate_ver        
vmap       sgate_ver         ./libraries/sgate_ver        
ensure_lib                   ./libraries/altera_mf_ver    
vmap       altera_mf_ver     ./libraries/altera_mf_ver    
ensure_lib                   ./libraries/altera_lnsim_ver 
vmap       altera_lnsim_ver  ./libraries/altera_lnsim_ver 
ensure_lib                   ./libraries/twentynm_ver     
vmap       twentynm_ver      ./libraries/twentynm_ver     
ensure_lib                   ./libraries/twentynm_hssi_ver
vmap       twentynm_hssi_ver ./libraries/twentynm_hssi_ver
ensure_lib                   ./libraries/twentynm_hip_ver 
vmap       twentynm_hip_ver  ./libraries/twentynm_hip_ver 
ensure_lib                                                       ./libraries/ghrd_10as066n2_error_adapter_161                     
vmap       ghrd_10as066n2_error_adapter_161                      ./libraries/ghrd_10as066n2_error_adapter_161                     
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_arria10_interface_generator_140
vmap       ghrd_10as066n2_altera_arria10_interface_generator_140 ./libraries/ghrd_10as066n2_altera_arria10_interface_generator_140
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_merlin_multiplexer_161         
vmap       ghrd_10as066n2_altera_merlin_multiplexer_161          ./libraries/ghrd_10as066n2_altera_merlin_multiplexer_161         
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_merlin_demultiplexer_161       
vmap       ghrd_10as066n2_altera_merlin_demultiplexer_161        ./libraries/ghrd_10as066n2_altera_merlin_demultiplexer_161       
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_merlin_router_161              
vmap       ghrd_10as066n2_altera_merlin_router_161               ./libraries/ghrd_10as066n2_altera_merlin_router_161              
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_avalon_st_adapter_161          
vmap       ghrd_10as066n2_altera_avalon_st_adapter_161           ./libraries/ghrd_10as066n2_altera_avalon_st_adapter_161          
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_merlin_master_agent_161        
vmap       ghrd_10as066n2_altera_merlin_master_agent_161         ./libraries/ghrd_10as066n2_altera_merlin_master_agent_161        
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_merlin_master_translator_161   
vmap       ghrd_10as066n2_altera_merlin_master_translator_161    ./libraries/ghrd_10as066n2_altera_merlin_master_translator_161   
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_avalon_st_pipeline_stage_161   
vmap       ghrd_10as066n2_altera_avalon_st_pipeline_stage_161    ./libraries/ghrd_10as066n2_altera_avalon_st_pipeline_stage_161   
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_merlin_width_adapter_161       
vmap       ghrd_10as066n2_altera_merlin_width_adapter_161        ./libraries/ghrd_10as066n2_altera_merlin_width_adapter_161       
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_merlin_burst_adapter_161       
vmap       ghrd_10as066n2_altera_merlin_burst_adapter_161        ./libraries/ghrd_10as066n2_altera_merlin_burst_adapter_161       
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_merlin_traffic_limiter_161     
vmap       ghrd_10as066n2_altera_merlin_traffic_limiter_161      ./libraries/ghrd_10as066n2_altera_merlin_traffic_limiter_161     
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_merlin_slave_agent_161         
vmap       ghrd_10as066n2_altera_merlin_slave_agent_161          ./libraries/ghrd_10as066n2_altera_merlin_slave_agent_161         
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_merlin_axi_slave_ni_161        
vmap       ghrd_10as066n2_altera_merlin_axi_slave_ni_161         ./libraries/ghrd_10as066n2_altera_merlin_axi_slave_ni_161        
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_merlin_axi_master_ni_161       
vmap       ghrd_10as066n2_altera_merlin_axi_master_ni_161        ./libraries/ghrd_10as066n2_altera_merlin_axi_master_ni_161       
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_merlin_slave_translator_161    
vmap       ghrd_10as066n2_altera_merlin_slave_translator_161     ./libraries/ghrd_10as066n2_altera_merlin_slave_translator_161    
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_merlin_axi_translator_161      
vmap       ghrd_10as066n2_altera_merlin_axi_translator_161       ./libraries/ghrd_10as066n2_altera_merlin_axi_translator_161      
ensure_lib                                                       ./libraries/ghrd_10as066n2_channel_adapter_161                   
vmap       ghrd_10as066n2_channel_adapter_161                    ./libraries/ghrd_10as066n2_channel_adapter_161                   
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_avalon_packets_to_master_161   
vmap       ghrd_10as066n2_altera_avalon_packets_to_master_161    ./libraries/ghrd_10as066n2_altera_avalon_packets_to_master_161   
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_avalon_st_packets_to_bytes_161 
vmap       ghrd_10as066n2_altera_avalon_st_packets_to_bytes_161  ./libraries/ghrd_10as066n2_altera_avalon_st_packets_to_bytes_161 
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_avalon_st_bytes_to_packets_161 
vmap       ghrd_10as066n2_altera_avalon_st_bytes_to_packets_161  ./libraries/ghrd_10as066n2_altera_avalon_st_bytes_to_packets_161 
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_avalon_sc_fifo_161             
vmap       ghrd_10as066n2_altera_avalon_sc_fifo_161              ./libraries/ghrd_10as066n2_altera_avalon_sc_fifo_161             
ensure_lib                                                       ./libraries/ghrd_10as066n2_timing_adapter_161                    
vmap       ghrd_10as066n2_timing_adapter_161                     ./libraries/ghrd_10as066n2_timing_adapter_161                    
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_jtag_dc_streaming_161          
vmap       ghrd_10as066n2_altera_jtag_dc_streaming_161           ./libraries/ghrd_10as066n2_altera_jtag_dc_streaming_161          
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_emif_arch_nf_161               
vmap       ghrd_10as066n2_altera_emif_arch_nf_161                ./libraries/ghrd_10as066n2_altera_emif_arch_nf_161               
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_arria10_hps_io_161             
vmap       ghrd_10as066n2_altera_arria10_hps_io_161              ./libraries/ghrd_10as066n2_altera_arria10_hps_io_161             
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_reset_controller_161           
vmap       ghrd_10as066n2_altera_reset_controller_161            ./libraries/ghrd_10as066n2_altera_reset_controller_161           
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_irq_mapper_161                 
vmap       ghrd_10as066n2_altera_irq_mapper_161                  ./libraries/ghrd_10as066n2_altera_irq_mapper_161                 
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_mm_interconnect_161            
vmap       ghrd_10as066n2_altera_mm_interconnect_161             ./libraries/ghrd_10as066n2_altera_mm_interconnect_161            
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_avalon_sysid_qsys_161          
vmap       ghrd_10as066n2_altera_avalon_sysid_qsys_161           ./libraries/ghrd_10as066n2_altera_avalon_sysid_qsys_161          
ensure_lib                                                       ./libraries/ghrd_10as066n2_protobuf_serializer_30                
vmap       ghrd_10as066n2_protobuf_serializer_30                 ./libraries/ghrd_10as066n2_protobuf_serializer_30                
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_avalon_mm_bridge_161           
vmap       ghrd_10as066n2_altera_avalon_mm_bridge_161            ./libraries/ghrd_10as066n2_altera_avalon_mm_bridge_161           
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_avalon_onchip_memory2_161      
vmap       ghrd_10as066n2_altera_avalon_onchip_memory2_161       ./libraries/ghrd_10as066n2_altera_avalon_onchip_memory2_161      
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_avalon_pio_161                 
vmap       ghrd_10as066n2_altera_avalon_pio_161                  ./libraries/ghrd_10as066n2_altera_avalon_pio_161                 
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_in_system_sources_probes_161   
vmap       ghrd_10as066n2_altera_in_system_sources_probes_161    ./libraries/ghrd_10as066n2_altera_in_system_sources_probes_161   
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_jtag_avalon_master_161         
vmap       ghrd_10as066n2_altera_jtag_avalon_master_161          ./libraries/ghrd_10as066n2_altera_jtag_avalon_master_161         
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_emif_a10_hps_161               
vmap       ghrd_10as066n2_altera_emif_a10_hps_161                ./libraries/ghrd_10as066n2_altera_emif_a10_hps_161               
ensure_lib                                                       ./libraries/ghrd_10as066n2_altera_arria10_hps_161                
vmap       ghrd_10as066n2_altera_arria10_hps_161                 ./libraries/ghrd_10as066n2_altera_arria10_hps_161                
ensure_lib                                                       ./libraries/ghrd_10as066n2_interrupt_latency_counter_161         
vmap       ghrd_10as066n2_interrupt_latency_counter_161          ./libraries/ghrd_10as066n2_interrupt_latency_counter_161         

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  eval vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                -work altera_ver       
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                         -work lpm_ver          
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                            -work sgate_ver        
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                        -work altera_mf_ver    
  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                    -work altera_lnsim_ver 
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_atoms.v"                   -work twentynm_ver     
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/twentynm_atoms_ncrypt.v"      -work twentynm_ver     
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/twentynm_hssi_atoms_ncrypt.v" -work twentynm_hssi_ver
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hssi_atoms.v"              -work twentynm_hssi_ver
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/twentynm_hip_atoms_ncrypt.v"  -work twentynm_hip_ver 
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hip_atoms.v"               -work twentynm_hip_ver 
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/error_adapter_161/sim/ghrd_10as066n2_error_adapter_161_bzz5nli.sv"                                                               -work ghrd_10as066n2_error_adapter_161                     
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/error_adapter_161/sim/ghrd_10as066n2_error_adapter_161_mg6siqa.sv"                                                               -work ghrd_10as066n2_error_adapter_161                     
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/verbosity_pkg.sv"                                                                     -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/avalon_utilities_pkg.sv"                                                              -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/avalon_mm_pkg.sv"                                                                     -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/altera_avalon_mm_slave_bfm.sv"                                                        -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/altera_avalon_interrupt_sink.sv"                                                      -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/altera_avalon_clock_source.sv"                                                        -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/altera_avalon_reset_source.sv"                                                        -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_eoqgdey_hps_io.sv"              -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_eoqgdey.sv"                     -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_kblxcwy.sv"                                       -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_multiplexer_161/sim/altera_merlin_arbitrator.sv"                                                                   -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_j54ki5q.sv"                                   -work ghrd_10as066n2_altera_merlin_demultiplexer_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_rk5recq.sv"                                       -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_multiplexer_161/sim/altera_merlin_arbitrator.sv"                                                                   -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_vlbffpa.sv"                                   -work ghrd_10as066n2_altera_merlin_demultiplexer_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_p6phnay.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_23evfkq.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_5ardxoi.sv"                                       -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_multiplexer_161/sim/altera_merlin_arbitrator.sv"                                                                   -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_bfk75pa.sv"                                   -work ghrd_10as066n2_altera_merlin_demultiplexer_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_icmsfcq.sv"                                       -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_multiplexer_161/sim/altera_merlin_arbitrator.sv"                                                                   -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_zfzukmy.sv"                                   -work ghrd_10as066n2_altera_merlin_demultiplexer_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_pvtvnwi.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_vr26f3y.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_avalon_st_adapter_161/sim/ghrd_10as066n2_altera_avalon_st_adapter_161_4hslsya.v"                                          -work ghrd_10as066n2_altera_avalon_st_adapter_161          
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_lepxjey.sv"                                       -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_multiplexer_161/sim/altera_merlin_arbitrator.sv"                                                                   -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_3cn2f3i.sv"                                   -work ghrd_10as066n2_altera_merlin_demultiplexer_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_to4nw7y.sv"                                       -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_multiplexer_161/sim/altera_merlin_arbitrator.sv"                                                                   -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_ue62npa.sv"                                   -work ghrd_10as066n2_altera_merlin_demultiplexer_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_54j6pka.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_cwpupmi.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_master_agent_161/sim/altera_merlin_master_agent.sv"                                                                -work ghrd_10as066n2_altera_merlin_master_agent_161        
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_master_translator_161/sim/altera_merlin_master_translator.sv"                                                      -work ghrd_10as066n2_altera_merlin_master_translator_161   
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_avalon_st_adapter_161/sim/ghrd_10as066n2_altera_avalon_st_adapter_161_4tryxxy.v"                                          -work ghrd_10as066n2_altera_avalon_st_adapter_161          
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_avalon_st_pipeline_stage_161/sim/altera_avalon_st_pipeline_stage.sv"                                                      -work ghrd_10as066n2_altera_avalon_st_pipeline_stage_161   
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_avalon_st_pipeline_stage_161/sim/altera_avalon_st_pipeline_base.v"                                                        -work ghrd_10as066n2_altera_avalon_st_pipeline_stage_161   
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_width_adapter_161/sim/altera_merlin_width_adapter.sv"                                                              -work ghrd_10as066n2_altera_merlin_width_adapter_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_width_adapter_161/sim/altera_merlin_address_alignment.sv"                                                          -work ghrd_10as066n2_altera_merlin_width_adapter_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_width_adapter_161/sim/altera_merlin_burst_uncompressor.sv"                                                         -work ghrd_10as066n2_altera_merlin_width_adapter_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_x6gq7vq.sv"                                       -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_multiplexer_161/sim/altera_merlin_arbitrator.sv"                                                                   -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_vweyymi.sv"                                   -work ghrd_10as066n2_altera_merlin_demultiplexer_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_w7zbgra.sv"                                       -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_multiplexer_161/sim/altera_merlin_arbitrator.sv"                                                                   -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_sz5y66a.sv"                                       -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_multiplexer_161/sim/altera_merlin_arbitrator.sv"                                                                   -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_usno3ea.sv"                                   -work ghrd_10as066n2_altera_merlin_demultiplexer_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_burst_adapter_161/sim/altera_merlin_burst_adapter.sv"                                                              -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_burst_adapter_161/sim/altera_merlin_burst_adapter_uncmpr.sv"                                                       -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_burst_adapter_161/sim/altera_merlin_burst_adapter_13_1.sv"                                                         -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_burst_adapter_161/sim/altera_merlin_burst_adapter_new.sv"                                                          -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_burst_adapter_161/sim/altera_incr_burst_converter.sv"                                                              -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_burst_adapter_161/sim/altera_wrap_burst_converter.sv"                                                              -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_burst_adapter_161/sim/altera_default_burst_converter.sv"                                                           -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_burst_adapter_161/sim/altera_merlin_address_alignment.sv"                                                          -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_burst_adapter_161/sim/altera_avalon_st_pipeline_stage.sv"                                                          -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_burst_adapter_161/sim/altera_avalon_st_pipeline_base.v"                                                            -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_traffic_limiter_161/sim/altera_merlin_traffic_limiter.sv"                                                          -work ghrd_10as066n2_altera_merlin_traffic_limiter_161     
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_traffic_limiter_161/sim/altera_merlin_reorder_memory.sv"                                                           -work ghrd_10as066n2_altera_merlin_traffic_limiter_161     
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_traffic_limiter_161/sim/altera_avalon_sc_fifo.v"                                                                   -work ghrd_10as066n2_altera_merlin_traffic_limiter_161     
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_traffic_limiter_161/sim/altera_avalon_st_pipeline_base.v"                                                          -work ghrd_10as066n2_altera_merlin_traffic_limiter_161     
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_r2wmb7q.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_eznt4gi.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_6tlrwfy.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_3z24bki.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_glc2kaq.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_slave_agent_161/sim/altera_merlin_slave_agent.sv"                                                                  -work ghrd_10as066n2_altera_merlin_slave_agent_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_slave_agent_161/sim/altera_merlin_burst_uncompressor.sv"                                                           -work ghrd_10as066n2_altera_merlin_slave_agent_161         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_axi_slave_ni_161/sim/altera_merlin_axi_slave_ni.sv"                                                                -work ghrd_10as066n2_altera_merlin_axi_slave_ni_161        
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_axi_slave_ni_161/sim/altera_merlin_burst_uncompressor.sv"                                                          -work ghrd_10as066n2_altera_merlin_axi_slave_ni_161        
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_axi_slave_ni_161/sim/altera_avalon_sc_fifo.v"                                                                      -work ghrd_10as066n2_altera_merlin_axi_slave_ni_161        
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_axi_slave_ni_161/sim/altera_merlin_address_alignment.sv"                                                           -work ghrd_10as066n2_altera_merlin_axi_slave_ni_161        
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_axi_master_ni_161/sim/altera_merlin_axi_master_ni.sv"                                                              -work ghrd_10as066n2_altera_merlin_axi_master_ni_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_axi_master_ni_161/sim/altera_merlin_address_alignment.sv"                                                          -work ghrd_10as066n2_altera_merlin_axi_master_ni_161       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_slave_translator_161/sim/altera_merlin_slave_translator.sv"                                                        -work ghrd_10as066n2_altera_merlin_slave_translator_161    
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_merlin_axi_translator_161/sim/altera_merlin_axi_translator.sv"                                                            -work ghrd_10as066n2_altera_merlin_axi_translator_161      
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/channel_adapter_161/sim/ghrd_10as066n2_channel_adapter_161_xd7xncy.sv"                                                           -work ghrd_10as066n2_channel_adapter_161                   
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/channel_adapter_161/sim/ghrd_10as066n2_channel_adapter_161_fcviibi.sv"                                                           -work ghrd_10as066n2_channel_adapter_161                   
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_avalon_packets_to_master_161/sim/altera_avalon_packets_to_master.v"                                                       -work ghrd_10as066n2_altera_avalon_packets_to_master_161   
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_avalon_st_packets_to_bytes_161/sim/altera_avalon_st_packets_to_bytes.v"                                                   -work ghrd_10as066n2_altera_avalon_st_packets_to_bytes_161 
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_avalon_st_bytes_to_packets_161/sim/altera_avalon_st_bytes_to_packets.v"                                                   -work ghrd_10as066n2_altera_avalon_st_bytes_to_packets_161 
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_avalon_sc_fifo_161/sim/altera_avalon_sc_fifo.v"                                                                           -work ghrd_10as066n2_altera_avalon_sc_fifo_161             
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/timing_adapter_161/sim/ghrd_10as066n2_timing_adapter_161_u532i6q.sv"                                                             -work ghrd_10as066n2_timing_adapter_161                    
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_jtag_dc_streaming_161/sim/altera_avalon_st_jtag_interface.v"                                                              -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_jtag_dc_streaming_161/sim/altera_jtag_dc_streaming.v"                                                                     -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_jtag_dc_streaming_161/sim/altera_jtag_sld_node.v"                                                                         -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_jtag_dc_streaming_161/sim/altera_jtag_streaming.v"                                                                        -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_jtag_dc_streaming_161/sim/altera_avalon_st_clock_crosser.v"                                                               -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_jtag_dc_streaming_161/sim/altera_std_synchronizer_nocut.v"                                                                -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_jtag_dc_streaming_161/sim/altera_avalon_st_pipeline_base.v"                                                               -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_jtag_dc_streaming_161/sim/altera_avalon_st_idle_remover.v"                                                                -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_jtag_dc_streaming_161/sim/altera_avalon_st_idle_inserter.v"                                                               -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_jtag_dc_streaming_161/sim/altera_avalon_st_pipeline_stage.sv"                                                             -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/ghrd_10as066n2_altera_emif_arch_nf_161_7576xxi_top.sv"                                               -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/ghrd_10as066n2_altera_emif_arch_nf_161_7576xxi_io_aux.sv"                                            -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/ghrd_10as066n2_altera_emif_arch_nf_161_7576xxi.sv"                                                   -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_bufs.sv"                                                                         -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_udir_se_i.sv"                                                                -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_udir_se_o.sv"                                                                -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_udir_df_i.sv"                                                                -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_udir_df_o.sv"                                                                -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_udir_cp_i.sv"                                                                -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_bdir_df.sv"                                                                  -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_bdir_se.sv"                                                                  -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_unused.sv"                                                                   -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_pll.sv"                                                                          -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_pll_fast_sim.sv"                                                                 -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_pll_extra_clks.sv"                                                               -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_oct.sv"                                                                          -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_core_clks_rsts.sv"                                                               -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_hps_clks_rsts.sv"                                                                -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_io_tiles_wrap.sv"                                                                -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_io_tiles.sv"                                                                     -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_io_tiles_abphy.sv"                                                               -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_abphy_mux.sv"                                                                    -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_hmc_avl_if.sv"                                                                   -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_hmc_sideband_if.sv"                                                              -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_hmc_mmr_if.sv"                                                                   -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_hmc_amm_data_if.sv"                                                              -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_hmc_ast_data_if.sv"                                                              -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_afi_if.sv"                                                                       -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_seq_if.sv"                                                                       -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_emif_arch_nf_regs.sv"                                                                         -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_oct.sv"                                                                                       -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/altera_oct_um_fsm.sv"                                                                                -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/mem_array_abphy.sv"                                                                                  -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/twentynm_io_12_lane_abphy.sv"                                                                        -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/twentynm_io_12_lane_encrypted_abphy.sv"                                                              -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/twentynm_io_12_lane_nf5es_encrypted_abphy.sv"                                                        -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/io_12_lane_bcm__nf5es_abphy.sv"                                                                      -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_arch_nf_161/sim/io_12_lane__nf5es_abphy.sv"                                                                          -work ghrd_10as066n2_altera_emif_arch_nf_161               
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_hps_io_161/sim/ghrd_10as066n2_altera_arria10_hps_io_161_yhkpgdq.v"                                                -work ghrd_10as066n2_altera_arria10_hps_io_161             
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/verbosity_pkg.sv"                                                                     -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/avalon_utilities_pkg.sv"                                                              -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/avalon_mm_pkg.sv"                                                                     -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/altera_avalon_mm_slave_bfm.sv"                                                        -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/questa_mvc_svapi.svh"                                                                 -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/mgc_common_axi.sv"                                                                    -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/mgc_axi_master.sv"                                                                    -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/mgc_axi_slave.sv"                                                                     -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/altera_avalon_interrupt_sink.sv"                                                      -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/altera_avalon_clock_source.sv"                                                        -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/altera_avalon_reset_source.sv"                                                        -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_cold_reset_req.sv"  -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_debug_reset_req.sv" -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_warm_reset_req.sv"  -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_stm_hw_events.sv"   -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_emif.sv"                -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_axi_reset.sv"       -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_h2f_lw_axi_reset.sv"    -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_h2f_axi_reset.sv"       -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2sdram0_reset.sv"      -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2sdram2_reset.sv"      -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey.sv"                     -work ghrd_10as066n2_altera_arria10_interface_generator_140
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_reset_controller_161/sim/altera_reset_controller.v"                                                                       -work ghrd_10as066n2_altera_reset_controller_161           
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_reset_controller_161/sim/altera_reset_synchronizer.v"                                                                     -work ghrd_10as066n2_altera_reset_controller_161           
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_irq_mapper_161/sim/ghrd_10as066n2_altera_irq_mapper_161_kbptgda.sv"                                                       -work ghrd_10as066n2_altera_irq_mapper_161                 
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_irq_mapper_161/sim/ghrd_10as066n2_altera_irq_mapper_161_43ijldi.sv"                                                       -work ghrd_10as066n2_altera_irq_mapper_161                 
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/ghrd_10as066n2/altera_irq_mapper_161/sim/ghrd_10as066n2_altera_irq_mapper_161_nvquryy.sv"                                                       -work ghrd_10as066n2_altera_irq_mapper_161                 
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_mm_interconnect_161/sim/ghrd_10as066n2_altera_mm_interconnect_161_a4dxs3y.v"                                              -work ghrd_10as066n2_altera_mm_interconnect_161            
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_mm_interconnect_161/sim/ghrd_10as066n2_altera_mm_interconnect_161_srnh6va.v"                                              -work ghrd_10as066n2_altera_mm_interconnect_161            
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_mm_interconnect_161/sim/ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.v"                                              -work ghrd_10as066n2_altera_mm_interconnect_161            
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_mm_interconnect_161/sim/ghrd_10as066n2_altera_mm_interconnect_161_imhgcbi.v"                                              -work ghrd_10as066n2_altera_mm_interconnect_161            
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_mm_interconnect_161/sim/ghrd_10as066n2_altera_mm_interconnect_161_k5z5r4y.v"                                              -work ghrd_10as066n2_altera_mm_interconnect_161            
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_mm_interconnect_161/sim/ghrd_10as066n2_altera_mm_interconnect_161_yundlma.v"                                              -work ghrd_10as066n2_altera_mm_interconnect_161            
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_avalon_sysid_qsys_161/sim/ghrd_10as066n2_altera_avalon_sysid_qsys_161_qri4vpa.v"                                          -work ghrd_10as066n2_altera_avalon_sysid_qsys_161          
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/protobuf_serializer_30/sim/protobuf_serializer.v"                                                                                -work ghrd_10as066n2_protobuf_serializer_30                
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/protobuf_serializer_30/sim/fsm_0.v"                                                                                              -work ghrd_10as066n2_protobuf_serializer_30                
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/protobuf_serializer_30/sim/fsm_1.v"                                                                                              -work ghrd_10as066n2_protobuf_serializer_30                
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/protobuf_serializer_30/sim/fsm_2.v"                                                                                              -work ghrd_10as066n2_protobuf_serializer_30                
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/protobuf_serializer_30/sim/fsm_3a.v"                                                                                             -work ghrd_10as066n2_protobuf_serializer_30                
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/protobuf_serializer_30/sim/fsm_3b.v"                                                                                             -work ghrd_10as066n2_protobuf_serializer_30                
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/protobuf_serializer_30/sim/fsm_3.v"                                                                                              -work ghrd_10as066n2_protobuf_serializer_30                
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/protobuf_serializer_30/sim/fsm_4.v"                                                                                              -work ghrd_10as066n2_protobuf_serializer_30                
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_avalon_mm_bridge_161/sim/altera_avalon_mm_bridge.v"                                                                       -work ghrd_10as066n2_altera_avalon_mm_bridge_161           
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_avalon_onchip_memory2_161/sim/ghrd_10as066n2_altera_avalon_onchip_memory2_161_lxrufkq.v"                                  -work ghrd_10as066n2_altera_avalon_onchip_memory2_161      
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_avalon_pio_161/sim/ghrd_10as066n2_altera_avalon_pio_161_p5oy5va.v"                                                        -work ghrd_10as066n2_altera_avalon_pio_161                 
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_in_system_sources_probes_161/sim/altsource_probe.v"                                                                       -work ghrd_10as066n2_altera_in_system_sources_probes_161   
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_jtag_avalon_master_161/sim/ghrd_10as066n2_altera_jtag_avalon_master_161_7opu3yi.v"                                        -work ghrd_10as066n2_altera_jtag_avalon_master_161         
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_emif_a10_hps_161/sim/ghrd_10as066n2_altera_emif_a10_hps_161_6mh7udq.v"                                                    -work ghrd_10as066n2_altera_emif_a10_hps_161               
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_avalon_pio_161/sim/ghrd_10as066n2_altera_avalon_pio_161_wd25eay.v"                                                        -work ghrd_10as066n2_altera_avalon_pio_161                 
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_avalon_pio_161/sim/ghrd_10as066n2_altera_avalon_pio_161_imbvr3i.v"                                                        -work ghrd_10as066n2_altera_avalon_pio_161                 
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/altera_arria10_hps_161/sim/ghrd_10as066n2_altera_arria10_hps_161_wdommvq.v"                                                      -work ghrd_10as066n2_altera_arria10_hps_161                
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/interrupt_latency_counter_161/sim/interrupt_latency_counter.v"                                                                   -work ghrd_10as066n2_interrupt_latency_counter_161         
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/interrupt_latency_counter_161/sim/irq_detector.v"                                                                                -work ghrd_10as066n2_interrupt_latency_counter_161         
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/interrupt_latency_counter_161/sim/state_machine_counter.v"                                                                       -work ghrd_10as066n2_interrupt_latency_counter_161         
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ghrd_10as066n2/sim/ghrd_10as066n2.v"                                                                                                                                                                       
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim +access +r -t ps $ELAB_OPTIONS -L work -L ghrd_10as066n2_error_adapter_161 -L ghrd_10as066n2_altera_arria10_interface_generator_140 -L ghrd_10as066n2_altera_merlin_multiplexer_161 -L ghrd_10as066n2_altera_merlin_demultiplexer_161 -L ghrd_10as066n2_altera_merlin_router_161 -L ghrd_10as066n2_altera_avalon_st_adapter_161 -L ghrd_10as066n2_altera_merlin_master_agent_161 -L ghrd_10as066n2_altera_merlin_master_translator_161 -L ghrd_10as066n2_altera_avalon_st_pipeline_stage_161 -L ghrd_10as066n2_altera_merlin_width_adapter_161 -L ghrd_10as066n2_altera_merlin_burst_adapter_161 -L ghrd_10as066n2_altera_merlin_traffic_limiter_161 -L ghrd_10as066n2_altera_merlin_slave_agent_161 -L ghrd_10as066n2_altera_merlin_axi_slave_ni_161 -L ghrd_10as066n2_altera_merlin_axi_master_ni_161 -L ghrd_10as066n2_altera_merlin_slave_translator_161 -L ghrd_10as066n2_altera_merlin_axi_translator_161 -L ghrd_10as066n2_channel_adapter_161 -L ghrd_10as066n2_altera_avalon_packets_to_master_161 -L ghrd_10as066n2_altera_avalon_st_packets_to_bytes_161 -L ghrd_10as066n2_altera_avalon_st_bytes_to_packets_161 -L ghrd_10as066n2_altera_avalon_sc_fifo_161 -L ghrd_10as066n2_timing_adapter_161 -L ghrd_10as066n2_altera_jtag_dc_streaming_161 -L ghrd_10as066n2_altera_emif_arch_nf_161 -L ghrd_10as066n2_altera_arria10_hps_io_161 -L ghrd_10as066n2_altera_reset_controller_161 -L ghrd_10as066n2_altera_irq_mapper_161 -L ghrd_10as066n2_altera_mm_interconnect_161 -L ghrd_10as066n2_altera_avalon_sysid_qsys_161 -L ghrd_10as066n2_protobuf_serializer_30 -L ghrd_10as066n2_altera_avalon_mm_bridge_161 -L ghrd_10as066n2_altera_avalon_onchip_memory2_161 -L ghrd_10as066n2_altera_avalon_pio_161 -L ghrd_10as066n2_altera_in_system_sources_probes_161 -L ghrd_10as066n2_altera_jtag_avalon_master_161 -L ghrd_10as066n2_altera_emif_a10_hps_161 -L ghrd_10as066n2_altera_arria10_hps_161 -L ghrd_10as066n2_interrupt_latency_counter_161 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L twentynm_ver -L twentynm_hssi_ver -L twentynm_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with -dbg -O2 option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -dbg -O2 +access +r -t ps $ELAB_OPTIONS -L work -L ghrd_10as066n2_error_adapter_161 -L ghrd_10as066n2_altera_arria10_interface_generator_140 -L ghrd_10as066n2_altera_merlin_multiplexer_161 -L ghrd_10as066n2_altera_merlin_demultiplexer_161 -L ghrd_10as066n2_altera_merlin_router_161 -L ghrd_10as066n2_altera_avalon_st_adapter_161 -L ghrd_10as066n2_altera_merlin_master_agent_161 -L ghrd_10as066n2_altera_merlin_master_translator_161 -L ghrd_10as066n2_altera_avalon_st_pipeline_stage_161 -L ghrd_10as066n2_altera_merlin_width_adapter_161 -L ghrd_10as066n2_altera_merlin_burst_adapter_161 -L ghrd_10as066n2_altera_merlin_traffic_limiter_161 -L ghrd_10as066n2_altera_merlin_slave_agent_161 -L ghrd_10as066n2_altera_merlin_axi_slave_ni_161 -L ghrd_10as066n2_altera_merlin_axi_master_ni_161 -L ghrd_10as066n2_altera_merlin_slave_translator_161 -L ghrd_10as066n2_altera_merlin_axi_translator_161 -L ghrd_10as066n2_channel_adapter_161 -L ghrd_10as066n2_altera_avalon_packets_to_master_161 -L ghrd_10as066n2_altera_avalon_st_packets_to_bytes_161 -L ghrd_10as066n2_altera_avalon_st_bytes_to_packets_161 -L ghrd_10as066n2_altera_avalon_sc_fifo_161 -L ghrd_10as066n2_timing_adapter_161 -L ghrd_10as066n2_altera_jtag_dc_streaming_161 -L ghrd_10as066n2_altera_emif_arch_nf_161 -L ghrd_10as066n2_altera_arria10_hps_io_161 -L ghrd_10as066n2_altera_reset_controller_161 -L ghrd_10as066n2_altera_irq_mapper_161 -L ghrd_10as066n2_altera_mm_interconnect_161 -L ghrd_10as066n2_altera_avalon_sysid_qsys_161 -L ghrd_10as066n2_protobuf_serializer_30 -L ghrd_10as066n2_altera_avalon_mm_bridge_161 -L ghrd_10as066n2_altera_avalon_onchip_memory2_161 -L ghrd_10as066n2_altera_avalon_pio_161 -L ghrd_10as066n2_altera_in_system_sources_probes_161 -L ghrd_10as066n2_altera_jtag_avalon_master_161 -L ghrd_10as066n2_altera_emif_a10_hps_161 -L ghrd_10as066n2_altera_arria10_hps_161 -L ghrd_10as066n2_interrupt_latency_counter_161 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L twentynm_ver -L twentynm_hssi_ver -L twentynm_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -dbg -O2
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with -dbg -O2 option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -dbg -O2"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo "                                 For most designs, this should be overridden"
  echo "                                 to enable the elab/elab_debug aliases."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
  echo
  echo "USER_DEFINED_COMPILE_OPTIONS  -- User-defined compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_ELAB_OPTIONS     -- User-defined elaboration options, added to elab/elab_debug aliases."
}
file_copy
h
