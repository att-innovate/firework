
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

# ACDS 16.1 196 linux 2017.12.04.16:12:26

# ----------------------------------------
# vcsmx - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     ghrd_10as066n2
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level shell script that compiles Altera simulation libraries 
# and the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "vcsmx_sim.sh", and modify text as directed.
# 
# You can also modify the simulation flow to suit your needs. Set the
# following variables to 1 to disable their corresponding processes:
# - SKIP_FILE_COPY: skip copying ROM/RAM initialization files
# - SKIP_DEV_COM: skip compiling the Quartus EDA simulation library
# - SKIP_COM: skip compiling Quartus-generated IP simulation files
# - SKIP_ELAB and SKIP_SIM: skip elaboration and simulation
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
# # the simulator. In this case, you must also copy the generated library
# # setup "synopsys_sim.setup" into the location from which you launch the
# # simulator, or incorporate into any existing library setup.
# #
# # Run Quartus-generated IP simulation script once to compile Quartus EDA
# # simulation libraries and Quartus-generated IP simulation files, and copy
# # any ROM/RAM initialization files to the simulation directory.
# #
# # - If necessary, specify USER_DEFINED_COMPILE_OPTIONS.
# source <script generation output directory>/synopsys/vcsmx/vcsmx_setup.sh \
# SKIP_ELAB=1 \
# SKIP_SIM=1 \
# USER_DEFINED_COMPILE_OPTIONS=<compilation options for your design> \
# QSYS_SIMDIR=<script generation output directory>
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the IP script)
# #
# vlogan <compilation options> <design and testbench files>
# #
# # TOP_LEVEL_NAME is used in this script to set the top-level simulation or
# # testbench module/entity name.
# #
# # Run the IP script again to elaborate and simulate the top level:
# # - Specify TOP_LEVEL_NAME and USER_DEFINED_ELAB_OPTIONS.
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# #
# source <script generation output directory>/synopsys/vcsmx/vcsmx_setup.sh \
# SKIP_FILE_COPY=1 \
# SKIP_DEV_COM=1 \
# SKIP_COM=1 \
# TOP_LEVEL_NAME="'-top <simulation top>'" \
# QSYS_SIMDIR=<script generation output directory> \
# USER_DEFINED_ELAB_OPTIONS=<elaboration options for your design> \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
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
# ACDS 16.1 196 linux 2017.12.04.16:12:26
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="ghrd_10as066n2"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="/home/fpga/workspace/intelFPGA/16.1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/ghrd_10as066n2_error_adapter_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_arria10_interface_generator_140/
mkdir -p ./libraries/ghrd_10as066n2_altera_merlin_multiplexer_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_merlin_demultiplexer_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_merlin_router_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_avalon_st_adapter_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_merlin_master_agent_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_merlin_master_translator_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_avalon_st_pipeline_stage_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_merlin_width_adapter_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_merlin_burst_adapter_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_merlin_traffic_limiter_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_merlin_slave_agent_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_merlin_axi_slave_ni_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_merlin_axi_master_ni_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_merlin_slave_translator_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_merlin_axi_translator_161/
mkdir -p ./libraries/ghrd_10as066n2_channel_adapter_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_avalon_packets_to_master_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_avalon_st_packets_to_bytes_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_avalon_st_bytes_to_packets_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_avalon_sc_fifo_161/
mkdir -p ./libraries/ghrd_10as066n2_timing_adapter_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_jtag_dc_streaming_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_emif_arch_nf_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_arria10_hps_io_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_reset_controller_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_irq_mapper_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_mm_interconnect_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_avalon_sysid_qsys_161/
mkdir -p ./libraries/ghrd_10as066n2_protobuf_serializer_30/
mkdir -p ./libraries/ghrd_10as066n2_altera_avalon_mm_bridge_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_avalon_onchip_memory2_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_avalon_pio_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_in_system_sources_probes_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_jtag_avalon_master_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_emif_a10_hps_161/
mkdir -p ./libraries/ghrd_10as066n2_altera_arria10_hps_161/
mkdir -p ./libraries/ghrd_10as066n2_interrupt_latency_counter_161/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/twentynm_ver/
mkdir -p ./libraries/twentynm_hssi_ver/
mkdir -p ./libraries/twentynm_hip_ver/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/ghrd_10as066n2_altera_emif_arch_nf_161_7576xxi_seq_params_sim.hex ./
  cp -f $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/ghrd_10as066n2_altera_emif_arch_nf_161_7576xxi_seq_params_synth.hex ./
  cp -f $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/ghrd_10as066n2_altera_emif_arch_nf_161_7576xxi_seq_cal.hex ./
  cp -f $QSYS_SIMDIR/../altera_avalon_onchip_memory2_161/sim/ghrd_10as066n2_onchip_memory2_0.hex ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                   -work altera_ver       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                            -work lpm_ver          
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                               -work sgate_ver        
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                           -work altera_mf_ver    
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                       -work altera_lnsim_ver 
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_atoms.v"                      -work twentynm_ver     
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/twentynm_atoms_ncrypt.v"      -work twentynm_ver     
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/twentynm_hssi_atoms_ncrypt.v" -work twentynm_hssi_ver
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hssi_atoms.v"                 -work twentynm_hssi_ver
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/twentynm_hip_atoms_ncrypt.v"  -work twentynm_hip_ver 
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hip_atoms.v"                  -work twentynm_hip_ver 
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../error_adapter_161/sim/ghrd_10as066n2_error_adapter_161_bzz5nli.sv"                                                               -work ghrd_10as066n2_error_adapter_161                     
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../error_adapter_161/sim/ghrd_10as066n2_error_adapter_161_mg6siqa.sv"                                                               -work ghrd_10as066n2_error_adapter_161                     
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/verbosity_pkg.sv"                                                                     -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/avalon_utilities_pkg.sv"                                                              -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/avalon_mm_pkg.sv"                                                                     -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/altera_avalon_mm_slave_bfm.sv"                                                        -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/altera_avalon_interrupt_sink.sv"                                                      -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/altera_avalon_clock_source.sv"                                                        -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/altera_avalon_reset_source.sv"                                                        -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_eoqgdey_hps_io.sv"              -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_eoqgdey.sv"                     -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_kblxcwy.sv"                                       -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/altera_merlin_arbitrator.sv"                                                                   -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_j54ki5q.sv"                                   -work ghrd_10as066n2_altera_merlin_demultiplexer_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_rk5recq.sv"                                       -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/altera_merlin_arbitrator.sv"                                                                   -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_vlbffpa.sv"                                   -work ghrd_10as066n2_altera_merlin_demultiplexer_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_p6phnay.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_23evfkq.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_5ardxoi.sv"                                       -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/altera_merlin_arbitrator.sv"                                                                   -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_bfk75pa.sv"                                   -work ghrd_10as066n2_altera_merlin_demultiplexer_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_icmsfcq.sv"                                       -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/altera_merlin_arbitrator.sv"                                                                   -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_zfzukmy.sv"                                   -work ghrd_10as066n2_altera_merlin_demultiplexer_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_pvtvnwi.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_vr26f3y.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_avalon_st_adapter_161/sim/ghrd_10as066n2_altera_avalon_st_adapter_161_4hslsya.v"                                          -work ghrd_10as066n2_altera_avalon_st_adapter_161          
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_lepxjey.sv"                                       -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/altera_merlin_arbitrator.sv"                                                                   -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_3cn2f3i.sv"                                   -work ghrd_10as066n2_altera_merlin_demultiplexer_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_to4nw7y.sv"                                       -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/altera_merlin_arbitrator.sv"                                                                   -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_ue62npa.sv"                                   -work ghrd_10as066n2_altera_merlin_demultiplexer_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_54j6pka.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_cwpupmi.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_master_agent_161/sim/altera_merlin_master_agent.sv"                                                                -work ghrd_10as066n2_altera_merlin_master_agent_161        
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_master_translator_161/sim/altera_merlin_master_translator.sv"                                                      -work ghrd_10as066n2_altera_merlin_master_translator_161   
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_avalon_st_adapter_161/sim/ghrd_10as066n2_altera_avalon_st_adapter_161_4tryxxy.v"                                          -work ghrd_10as066n2_altera_avalon_st_adapter_161          
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_avalon_st_pipeline_stage_161/sim/altera_avalon_st_pipeline_stage.sv"                                                      -work ghrd_10as066n2_altera_avalon_st_pipeline_stage_161   
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_avalon_st_pipeline_stage_161/sim/altera_avalon_st_pipeline_base.v"                                                        -work ghrd_10as066n2_altera_avalon_st_pipeline_stage_161   
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_width_adapter_161/sim/altera_merlin_width_adapter.sv"                                                              -work ghrd_10as066n2_altera_merlin_width_adapter_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_width_adapter_161/sim/altera_merlin_address_alignment.sv"                                                          -work ghrd_10as066n2_altera_merlin_width_adapter_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_width_adapter_161/sim/altera_merlin_burst_uncompressor.sv"                                                         -work ghrd_10as066n2_altera_merlin_width_adapter_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_x6gq7vq.sv"                                       -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/altera_merlin_arbitrator.sv"                                                                   -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_vweyymi.sv"                                   -work ghrd_10as066n2_altera_merlin_demultiplexer_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_w7zbgra.sv"                                       -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/altera_merlin_arbitrator.sv"                                                                   -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_sz5y66a.sv"                                       -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/altera_merlin_arbitrator.sv"                                                                   -work ghrd_10as066n2_altera_merlin_multiplexer_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_usno3ea.sv"                                   -work ghrd_10as066n2_altera_merlin_demultiplexer_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_161/sim/altera_merlin_burst_adapter.sv"                                                              -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_161/sim/altera_merlin_burst_adapter_uncmpr.sv"                                                       -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_161/sim/altera_merlin_burst_adapter_13_1.sv"                                                         -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_161/sim/altera_merlin_burst_adapter_new.sv"                                                          -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_161/sim/altera_incr_burst_converter.sv"                                                              -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_161/sim/altera_wrap_burst_converter.sv"                                                              -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_161/sim/altera_default_burst_converter.sv"                                                           -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_161/sim/altera_merlin_address_alignment.sv"                                                          -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_161/sim/altera_avalon_st_pipeline_stage.sv"                                                          -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_161/sim/altera_avalon_st_pipeline_base.v"                                                            -work ghrd_10as066n2_altera_merlin_burst_adapter_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_161/sim/altera_merlin_traffic_limiter.sv"                                                          -work ghrd_10as066n2_altera_merlin_traffic_limiter_161     
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_161/sim/altera_merlin_reorder_memory.sv"                                                           -work ghrd_10as066n2_altera_merlin_traffic_limiter_161     
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_161/sim/altera_avalon_sc_fifo.v"                                                                   -work ghrd_10as066n2_altera_merlin_traffic_limiter_161     
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_161/sim/altera_avalon_st_pipeline_base.v"                                                          -work ghrd_10as066n2_altera_merlin_traffic_limiter_161     
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_r2wmb7q.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_eznt4gi.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_6tlrwfy.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_3z24bki.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_glc2kaq.sv"                                                 -work ghrd_10as066n2_altera_merlin_router_161              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_slave_agent_161/sim/altera_merlin_slave_agent.sv"                                                                  -work ghrd_10as066n2_altera_merlin_slave_agent_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_slave_agent_161/sim/altera_merlin_burst_uncompressor.sv"                                                           -work ghrd_10as066n2_altera_merlin_slave_agent_161         
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_axi_slave_ni_161/sim/altera_merlin_axi_slave_ni.sv"                                                                -work ghrd_10as066n2_altera_merlin_axi_slave_ni_161        
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_axi_slave_ni_161/sim/altera_merlin_burst_uncompressor.sv"                                                          -work ghrd_10as066n2_altera_merlin_axi_slave_ni_161        
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_merlin_axi_slave_ni_161/sim/altera_avalon_sc_fifo.v"                                                                      -work ghrd_10as066n2_altera_merlin_axi_slave_ni_161        
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_axi_slave_ni_161/sim/altera_merlin_address_alignment.sv"                                                           -work ghrd_10as066n2_altera_merlin_axi_slave_ni_161        
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_axi_master_ni_161/sim/altera_merlin_axi_master_ni.sv"                                                              -work ghrd_10as066n2_altera_merlin_axi_master_ni_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_axi_master_ni_161/sim/altera_merlin_address_alignment.sv"                                                          -work ghrd_10as066n2_altera_merlin_axi_master_ni_161       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_slave_translator_161/sim/altera_merlin_slave_translator.sv"                                                        -work ghrd_10as066n2_altera_merlin_slave_translator_161    
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_axi_translator_161/sim/altera_merlin_axi_translator.sv"                                                            -work ghrd_10as066n2_altera_merlin_axi_translator_161      
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../channel_adapter_161/sim/ghrd_10as066n2_channel_adapter_161_xd7xncy.sv"                                                           -work ghrd_10as066n2_channel_adapter_161                   
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../channel_adapter_161/sim/ghrd_10as066n2_channel_adapter_161_fcviibi.sv"                                                           -work ghrd_10as066n2_channel_adapter_161                   
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_avalon_packets_to_master_161/sim/altera_avalon_packets_to_master.v"                                                       -work ghrd_10as066n2_altera_avalon_packets_to_master_161   
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_avalon_st_packets_to_bytes_161/sim/altera_avalon_st_packets_to_bytes.v"                                                   -work ghrd_10as066n2_altera_avalon_st_packets_to_bytes_161 
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_avalon_st_bytes_to_packets_161/sim/altera_avalon_st_bytes_to_packets.v"                                                   -work ghrd_10as066n2_altera_avalon_st_bytes_to_packets_161 
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_avalon_sc_fifo_161/sim/altera_avalon_sc_fifo.v"                                                                           -work ghrd_10as066n2_altera_avalon_sc_fifo_161             
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../timing_adapter_161/sim/ghrd_10as066n2_timing_adapter_161_u532i6q.sv"                                                             -work ghrd_10as066n2_timing_adapter_161                    
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_jtag_dc_streaming_161/sim/altera_avalon_st_jtag_interface.v"                                                              -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_jtag_dc_streaming_161/sim/altera_jtag_dc_streaming.v"                                                                     -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_jtag_dc_streaming_161/sim/altera_jtag_sld_node.v"                                                                         -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_jtag_dc_streaming_161/sim/altera_jtag_streaming.v"                                                                        -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_jtag_dc_streaming_161/sim/altera_avalon_st_clock_crosser.v"                                                               -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_jtag_dc_streaming_161/sim/altera_std_synchronizer_nocut.v"                                                                -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_jtag_dc_streaming_161/sim/altera_avalon_st_pipeline_base.v"                                                               -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_jtag_dc_streaming_161/sim/altera_avalon_st_idle_remover.v"                                                                -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_jtag_dc_streaming_161/sim/altera_avalon_st_idle_inserter.v"                                                               -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_jtag_dc_streaming_161/sim/altera_avalon_st_pipeline_stage.sv"                                                             -work ghrd_10as066n2_altera_jtag_dc_streaming_161          
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/ghrd_10as066n2_altera_emif_arch_nf_161_7576xxi_top.sv"                                               -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/ghrd_10as066n2_altera_emif_arch_nf_161_7576xxi_io_aux.sv"                                            -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/ghrd_10as066n2_altera_emif_arch_nf_161_7576xxi.sv"                                                   -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_bufs.sv"                                                                         -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_udir_se_i.sv"                                                                -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_udir_se_o.sv"                                                                -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_udir_df_i.sv"                                                                -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_udir_df_o.sv"                                                                -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_udir_cp_i.sv"                                                                -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_bdir_df.sv"                                                                  -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_bdir_se.sv"                                                                  -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_unused.sv"                                                                   -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_pll.sv"                                                                          -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_pll_fast_sim.sv"                                                                 -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_pll_extra_clks.sv"                                                               -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_oct.sv"                                                                          -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_core_clks_rsts.sv"                                                               -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_hps_clks_rsts.sv"                                                                -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_io_tiles_wrap.sv"                                                                -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_io_tiles.sv"                                                                     -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_io_tiles_abphy.sv"                                                               -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_abphy_mux.sv"                                                                    -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_hmc_avl_if.sv"                                                                   -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_hmc_sideband_if.sv"                                                              -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_hmc_mmr_if.sv"                                                                   -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_hmc_amm_data_if.sv"                                                              -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_hmc_ast_data_if.sv"                                                              -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_afi_if.sv"                                                                       -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_seq_if.sv"                                                                       -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_regs.sv"                                                                         -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_oct.sv"                                                                                       -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_oct_um_fsm.sv"                                                                                -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/mem_array_abphy.sv"                                                                                  -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/twentynm_io_12_lane_abphy.sv"                                                                        -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/twentynm_io_12_lane_encrypted_abphy.sv"                                                              -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/twentynm_io_12_lane_nf5es_encrypted_abphy.sv"                                                        -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/io_12_lane_bcm__nf5es_abphy.sv"                                                                      -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/io_12_lane__nf5es_abphy.sv"                                                                          -work ghrd_10as066n2_altera_emif_arch_nf_161               
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_arria10_hps_io_161/sim/ghrd_10as066n2_altera_arria10_hps_io_161_yhkpgdq.v"                                                -work ghrd_10as066n2_altera_arria10_hps_io_161             
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/verbosity_pkg.sv"                                                                     -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/avalon_utilities_pkg.sv"                                                              -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/avalon_mm_pkg.sv"                                                                     -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/altera_avalon_mm_slave_bfm.sv"                                                        -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/questa_mvc_svapi.svh"                                                                 -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/mgc_common_axi.sv"                                                                    -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/mgc_axi_master.sv"                                                                    -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/mgc_axi_slave.sv"                                                                     -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/altera_avalon_interrupt_sink.sv"                                                      -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/altera_avalon_clock_source.sv"                                                        -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/altera_avalon_reset_source.sv"                                                        -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_cold_reset_req.sv"  -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_debug_reset_req.sv" -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_warm_reset_req.sv"  -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_stm_hw_events.sv"   -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_emif.sv"                -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_axi_reset.sv"       -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_h2f_lw_axi_reset.sv"    -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_h2f_axi_reset.sv"       -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2sdram0_reset.sv"      -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2sdram2_reset.sv"      -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey.sv"                     -work ghrd_10as066n2_altera_arria10_interface_generator_140
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_reset_controller_161/sim/altera_reset_controller.v"                                                                       -work ghrd_10as066n2_altera_reset_controller_161           
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_reset_controller_161/sim/altera_reset_synchronizer.v"                                                                     -work ghrd_10as066n2_altera_reset_controller_161           
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_irq_mapper_161/sim/ghrd_10as066n2_altera_irq_mapper_161_kbptgda.sv"                                                       -work ghrd_10as066n2_altera_irq_mapper_161                 
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_irq_mapper_161/sim/ghrd_10as066n2_altera_irq_mapper_161_43ijldi.sv"                                                       -work ghrd_10as066n2_altera_irq_mapper_161                 
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_irq_mapper_161/sim/ghrd_10as066n2_altera_irq_mapper_161_nvquryy.sv"                                                       -work ghrd_10as066n2_altera_irq_mapper_161                 
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_mm_interconnect_161/sim/ghrd_10as066n2_altera_mm_interconnect_161_a4dxs3y.v"                                              -work ghrd_10as066n2_altera_mm_interconnect_161            
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_mm_interconnect_161/sim/ghrd_10as066n2_altera_mm_interconnect_161_srnh6va.v"                                              -work ghrd_10as066n2_altera_mm_interconnect_161            
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_mm_interconnect_161/sim/ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.v"                                              -work ghrd_10as066n2_altera_mm_interconnect_161            
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_mm_interconnect_161/sim/ghrd_10as066n2_altera_mm_interconnect_161_imhgcbi.v"                                              -work ghrd_10as066n2_altera_mm_interconnect_161            
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_mm_interconnect_161/sim/ghrd_10as066n2_altera_mm_interconnect_161_k5z5r4y.v"                                              -work ghrd_10as066n2_altera_mm_interconnect_161            
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_mm_interconnect_161/sim/ghrd_10as066n2_altera_mm_interconnect_161_yundlma.v"                                              -work ghrd_10as066n2_altera_mm_interconnect_161            
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_avalon_sysid_qsys_161/sim/ghrd_10as066n2_altera_avalon_sysid_qsys_161_qri4vpa.v"                                          -work ghrd_10as066n2_altera_avalon_sysid_qsys_161          
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../protobuf_serializer_30/sim/protobuf_serializer.v"                                                                                -work ghrd_10as066n2_protobuf_serializer_30                
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../protobuf_serializer_30/sim/fsm_0.v"                                                                                              -work ghrd_10as066n2_protobuf_serializer_30                
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../protobuf_serializer_30/sim/fsm_1.v"                                                                                              -work ghrd_10as066n2_protobuf_serializer_30                
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../protobuf_serializer_30/sim/fsm_2.v"                                                                                              -work ghrd_10as066n2_protobuf_serializer_30                
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../protobuf_serializer_30/sim/fsm_3a.v"                                                                                             -work ghrd_10as066n2_protobuf_serializer_30                
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../protobuf_serializer_30/sim/fsm_3b.v"                                                                                             -work ghrd_10as066n2_protobuf_serializer_30                
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../protobuf_serializer_30/sim/fsm_3.v"                                                                                              -work ghrd_10as066n2_protobuf_serializer_30                
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../protobuf_serializer_30/sim/fsm_4.v"                                                                                              -work ghrd_10as066n2_protobuf_serializer_30                
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_avalon_mm_bridge_161/sim/altera_avalon_mm_bridge.v"                                                                       -work ghrd_10as066n2_altera_avalon_mm_bridge_161           
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_avalon_onchip_memory2_161/sim/ghrd_10as066n2_altera_avalon_onchip_memory2_161_lxrufkq.v"                                  -work ghrd_10as066n2_altera_avalon_onchip_memory2_161      
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_avalon_pio_161/sim/ghrd_10as066n2_altera_avalon_pio_161_p5oy5va.v"                                                        -work ghrd_10as066n2_altera_avalon_pio_161                 
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_in_system_sources_probes_161/sim/altsource_probe.v"                                                                       -work ghrd_10as066n2_altera_in_system_sources_probes_161   
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_jtag_avalon_master_161/sim/ghrd_10as066n2_altera_jtag_avalon_master_161_7opu3yi.v"                                        -work ghrd_10as066n2_altera_jtag_avalon_master_161         
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_emif_a10_hps_161/sim/ghrd_10as066n2_altera_emif_a10_hps_161_6mh7udq.v"                                                    -work ghrd_10as066n2_altera_emif_a10_hps_161               
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_avalon_pio_161/sim/ghrd_10as066n2_altera_avalon_pio_161_wd25eay.v"                                                        -work ghrd_10as066n2_altera_avalon_pio_161                 
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_avalon_pio_161/sim/ghrd_10as066n2_altera_avalon_pio_161_imbvr3i.v"                                                        -work ghrd_10as066n2_altera_avalon_pio_161                 
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_arria10_hps_161/sim/ghrd_10as066n2_altera_arria10_hps_161_wdommvq.v"                                                      -work ghrd_10as066n2_altera_arria10_hps_161                
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../interrupt_latency_counter_161/sim/interrupt_latency_counter.v"                                                                   -work ghrd_10as066n2_interrupt_latency_counter_161         
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../interrupt_latency_counter_161/sim/irq_detector.v"                                                                                -work ghrd_10as066n2_interrupt_latency_counter_161         
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../interrupt_latency_counter_161/sim/state_machine_counter.v"                                                                       -work ghrd_10as066n2_interrupt_latency_counter_161         
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/ghrd_10as066n2.v"                                                                                                                                                                              
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  vcs -lca -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
