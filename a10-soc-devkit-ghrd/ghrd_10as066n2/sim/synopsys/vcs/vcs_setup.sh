
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
# vcs - auto-generated simulation script

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
# testbench files, follow the guidelines below.
# 
# 1) Copy the shell script text from the TOP-LEVEL TEMPLATE section
# below into a new file, e.g. named "vcs_sim.sh".
# 
# 2) Copy the text from the DESIGN FILE LIST & OPTIONS TEMPLATE section into
# a separate file, e.g. named "filelist.f".
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # TOP_LEVEL_NAME is used in the Quartus-generated IP simulation script to
# # set the top-level simulation or testbench module/entity name.
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# # Source the Quartus-generated IP simulation script and do the following:
# # - Compile the Quartus EDA simulation library and IP simulation files.
# # - Specify TOP_LEVEL_NAME and QSYS_SIMDIR.
# # - Compile the design and top-level simulation module/entity using
# #   information specified in "filelist.f".
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# # - Run the simulation.
# #
# source <script generation output directory>/synopsys/vcs/vcs_setup.sh \
# TOP_LEVEL_NAME=<simulation top> \
# QSYS_SIMDIR=<script generation output directory> \
# USER_DEFINED_ELAB_OPTIONS="\"-f filelist.f\"" \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# ----------------------------------------
# # DESIGN FILE LIST & OPTIONS TEMPLATE - BEGIN
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the Quartus-generated IP simulation script)
# #
# +systemverilogext+.sv
# <design and testbench files, compile-time options, elaboration options>
# #
# # DESIGN FILE LIST & OPTIONS TEMPLATE - END
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
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/ghrd_10as066n2_altera_emif_arch_nf_161_7576xxi_seq_params_sim.hex ./
  cp -f $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/ghrd_10as066n2_altera_emif_arch_nf_161_7576xxi_seq_params_synth.hex ./
  cp -f $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/ghrd_10as066n2_altera_emif_arch_nf_161_7576xxi_seq_cal.hex ./
  cp -f $QSYS_SIMDIR/../altera_avalon_onchip_memory2_161/sim/ghrd_10as066n2_onchip_memory2_0.hex ./
fi

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v -ntb_opts dtm $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/twentynm_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/twentynm_hssi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hssi_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/twentynm_hip_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hip_atoms.v \
  $QSYS_SIMDIR/../error_adapter_161/sim/ghrd_10as066n2_error_adapter_161_bzz5nli.sv \
  $QSYS_SIMDIR/../error_adapter_161/sim/ghrd_10as066n2_error_adapter_161_mg6siqa.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/verbosity_pkg.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/avalon_utilities_pkg.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/avalon_mm_pkg.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/altera_avalon_mm_slave_bfm.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/altera_avalon_interrupt_sink.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/altera_avalon_clock_source.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/altera_avalon_reset_source.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_eoqgdey_hps_io.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_eoqgdey.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_kblxcwy.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/altera_merlin_arbitrator.sv \
  $QSYS_SIMDIR/../altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_j54ki5q.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_rk5recq.sv \
  $QSYS_SIMDIR/../altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_vlbffpa.sv \
  $QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_p6phnay.sv \
  $QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_23evfkq.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_5ardxoi.sv \
  $QSYS_SIMDIR/../altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_bfk75pa.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_icmsfcq.sv \
  $QSYS_SIMDIR/../altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_zfzukmy.sv \
  $QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_pvtvnwi.sv \
  $QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_vr26f3y.sv \
  $QSYS_SIMDIR/../altera_avalon_st_adapter_161/sim/ghrd_10as066n2_altera_avalon_st_adapter_161_4hslsya.v \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_lepxjey.sv \
  $QSYS_SIMDIR/../altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_3cn2f3i.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_to4nw7y.sv \
  $QSYS_SIMDIR/../altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_ue62npa.sv \
  $QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_54j6pka.sv \
  $QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_cwpupmi.sv \
  $QSYS_SIMDIR/../altera_merlin_master_agent_161/sim/altera_merlin_master_agent.sv \
  $QSYS_SIMDIR/../altera_merlin_master_translator_161/sim/altera_merlin_master_translator.sv \
  $QSYS_SIMDIR/../altera_avalon_st_adapter_161/sim/ghrd_10as066n2_altera_avalon_st_adapter_161_4tryxxy.v \
  $QSYS_SIMDIR/../altera_avalon_st_pipeline_stage_161/sim/altera_avalon_st_pipeline_stage.sv \
  $QSYS_SIMDIR/../altera_avalon_st_pipeline_stage_161/sim/altera_avalon_st_pipeline_base.v \
  $QSYS_SIMDIR/../altera_merlin_width_adapter_161/sim/altera_merlin_width_adapter.sv \
  $QSYS_SIMDIR/../altera_merlin_width_adapter_161/sim/altera_merlin_address_alignment.sv \
  $QSYS_SIMDIR/../altera_merlin_width_adapter_161/sim/altera_merlin_burst_uncompressor.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_x6gq7vq.sv \
  $QSYS_SIMDIR/../altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_vweyymi.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_w7zbgra.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_161/sim/ghrd_10as066n2_altera_merlin_multiplexer_161_sz5y66a.sv \
  $QSYS_SIMDIR/../altera_merlin_demultiplexer_161/sim/ghrd_10as066n2_altera_merlin_demultiplexer_161_usno3ea.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_161/sim/altera_merlin_burst_adapter.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_161/sim/altera_merlin_burst_adapter_uncmpr.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_161/sim/altera_merlin_burst_adapter_13_1.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_161/sim/altera_merlin_burst_adapter_new.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_161/sim/altera_incr_burst_converter.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_161/sim/altera_wrap_burst_converter.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_161/sim/altera_default_burst_converter.sv \
  $QSYS_SIMDIR/../altera_merlin_traffic_limiter_161/sim/altera_merlin_traffic_limiter.sv \
  $QSYS_SIMDIR/../altera_merlin_traffic_limiter_161/sim/altera_merlin_reorder_memory.sv \
  $QSYS_SIMDIR/../altera_merlin_traffic_limiter_161/sim/altera_avalon_sc_fifo.v \
  $QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_r2wmb7q.sv \
  $QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_eznt4gi.sv \
  $QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_6tlrwfy.sv \
  $QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_3z24bki.sv \
  $QSYS_SIMDIR/../altera_merlin_router_161/sim/ghrd_10as066n2_altera_merlin_router_161_glc2kaq.sv \
  $QSYS_SIMDIR/../altera_merlin_slave_agent_161/sim/altera_merlin_slave_agent.sv \
  $QSYS_SIMDIR/../altera_merlin_axi_slave_ni_161/sim/altera_merlin_axi_slave_ni.sv \
  $QSYS_SIMDIR/../altera_merlin_axi_master_ni_161/sim/altera_merlin_axi_master_ni.sv \
  $QSYS_SIMDIR/../altera_merlin_slave_translator_161/sim/altera_merlin_slave_translator.sv \
  $QSYS_SIMDIR/../altera_merlin_axi_translator_161/sim/altera_merlin_axi_translator.sv \
  $QSYS_SIMDIR/../channel_adapter_161/sim/ghrd_10as066n2_channel_adapter_161_xd7xncy.sv \
  $QSYS_SIMDIR/../channel_adapter_161/sim/ghrd_10as066n2_channel_adapter_161_fcviibi.sv \
  $QSYS_SIMDIR/../altera_avalon_packets_to_master_161/sim/altera_avalon_packets_to_master.v \
  $QSYS_SIMDIR/../altera_avalon_st_packets_to_bytes_161/sim/altera_avalon_st_packets_to_bytes.v \
  $QSYS_SIMDIR/../altera_avalon_st_bytes_to_packets_161/sim/altera_avalon_st_bytes_to_packets.v \
  $QSYS_SIMDIR/../timing_adapter_161/sim/ghrd_10as066n2_timing_adapter_161_u532i6q.sv \
  $QSYS_SIMDIR/../altera_jtag_dc_streaming_161/sim/altera_avalon_st_jtag_interface.v \
  $QSYS_SIMDIR/../altera_jtag_dc_streaming_161/sim/altera_jtag_dc_streaming.v \
  $QSYS_SIMDIR/../altera_jtag_dc_streaming_161/sim/altera_jtag_sld_node.v \
  $QSYS_SIMDIR/../altera_jtag_dc_streaming_161/sim/altera_jtag_streaming.v \
  $QSYS_SIMDIR/../altera_jtag_dc_streaming_161/sim/altera_avalon_st_clock_crosser.v \
  $QSYS_SIMDIR/../altera_jtag_dc_streaming_161/sim/altera_std_synchronizer_nocut.v \
  $QSYS_SIMDIR/../altera_jtag_dc_streaming_161/sim/altera_avalon_st_idle_remover.v \
  $QSYS_SIMDIR/../altera_jtag_dc_streaming_161/sim/altera_avalon_st_idle_inserter.v \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/ghrd_10as066n2_altera_emif_arch_nf_161_7576xxi_top.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/ghrd_10as066n2_altera_emif_arch_nf_161_7576xxi_io_aux.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/ghrd_10as066n2_altera_emif_arch_nf_161_7576xxi.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_bufs.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_udir_se_i.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_udir_se_o.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_udir_df_i.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_udir_df_o.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_udir_cp_i.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_bdir_df.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_bdir_se.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_buf_unused.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_pll.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_pll_fast_sim.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_pll_extra_clks.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_oct.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_core_clks_rsts.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_hps_clks_rsts.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_io_tiles_wrap.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_io_tiles.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_io_tiles_abphy.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_abphy_mux.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_hmc_avl_if.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_hmc_sideband_if.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_hmc_mmr_if.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_hmc_amm_data_if.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_hmc_ast_data_if.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_afi_if.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_seq_if.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_emif_arch_nf_regs.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_oct.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/altera_oct_um_fsm.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/mem_array_abphy.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/twentynm_io_12_lane_abphy.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/twentynm_io_12_lane_encrypted_abphy.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/twentynm_io_12_lane_nf5es_encrypted_abphy.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/io_12_lane_bcm__nf5es_abphy.sv \
  $QSYS_SIMDIR/../altera_emif_arch_nf_161/sim/io_12_lane__nf5es_abphy.sv \
  $QSYS_SIMDIR/../altera_arria10_hps_io_161/sim/ghrd_10as066n2_altera_arria10_hps_io_161_yhkpgdq.v \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/questa_mvc_svapi.svh \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/mgc_common_axi.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/mgc_axi_master.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/mgc_axi_slave.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_cold_reset_req.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_debug_reset_req.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_warm_reset_req.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_stm_hw_events.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_emif.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2h_axi_reset.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_h2f_lw_axi_reset.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_h2f_axi_reset.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2sdram0_reset.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey_f2sdram2_reset.sv \
  $QSYS_SIMDIR/../altera_arria10_interface_generator_140/sim/ghrd_10as066n2_altera_arria10_interface_generator_140_h73okey.sv \
  $QSYS_SIMDIR/../altera_reset_controller_161/sim/altera_reset_controller.v \
  $QSYS_SIMDIR/../altera_reset_controller_161/sim/altera_reset_synchronizer.v \
  $QSYS_SIMDIR/../altera_irq_mapper_161/sim/ghrd_10as066n2_altera_irq_mapper_161_kbptgda.sv \
  $QSYS_SIMDIR/../altera_irq_mapper_161/sim/ghrd_10as066n2_altera_irq_mapper_161_43ijldi.sv \
  $QSYS_SIMDIR/../altera_irq_mapper_161/sim/ghrd_10as066n2_altera_irq_mapper_161_nvquryy.sv \
  $QSYS_SIMDIR/../altera_mm_interconnect_161/sim/ghrd_10as066n2_altera_mm_interconnect_161_a4dxs3y.v \
  $QSYS_SIMDIR/../altera_mm_interconnect_161/sim/ghrd_10as066n2_altera_mm_interconnect_161_srnh6va.v \
  $QSYS_SIMDIR/../altera_mm_interconnect_161/sim/ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.v \
  $QSYS_SIMDIR/../altera_mm_interconnect_161/sim/ghrd_10as066n2_altera_mm_interconnect_161_imhgcbi.v \
  $QSYS_SIMDIR/../altera_mm_interconnect_161/sim/ghrd_10as066n2_altera_mm_interconnect_161_k5z5r4y.v \
  $QSYS_SIMDIR/../altera_mm_interconnect_161/sim/ghrd_10as066n2_altera_mm_interconnect_161_yundlma.v \
  $QSYS_SIMDIR/../altera_avalon_sysid_qsys_161/sim/ghrd_10as066n2_altera_avalon_sysid_qsys_161_qri4vpa.v \
  $QSYS_SIMDIR/../protobuf_serializer_30/sim/protobuf_serializer.v \
  $QSYS_SIMDIR/../protobuf_serializer_30/sim/fsm_0.v \
  $QSYS_SIMDIR/../protobuf_serializer_30/sim/fsm_1.v \
  $QSYS_SIMDIR/../protobuf_serializer_30/sim/fsm_2.v \
  $QSYS_SIMDIR/../protobuf_serializer_30/sim/fsm_3a.v \
  $QSYS_SIMDIR/../protobuf_serializer_30/sim/fsm_3b.v \
  $QSYS_SIMDIR/../protobuf_serializer_30/sim/fsm_3.v \
  $QSYS_SIMDIR/../protobuf_serializer_30/sim/fsm_4.v \
  $QSYS_SIMDIR/../altera_avalon_mm_bridge_161/sim/altera_avalon_mm_bridge.v \
  $QSYS_SIMDIR/../altera_avalon_onchip_memory2_161/sim/ghrd_10as066n2_altera_avalon_onchip_memory2_161_lxrufkq.v \
  $QSYS_SIMDIR/../altera_avalon_pio_161/sim/ghrd_10as066n2_altera_avalon_pio_161_p5oy5va.v \
  $QSYS_SIMDIR/../altera_in_system_sources_probes_161/sim/altsource_probe.v \
  $QSYS_SIMDIR/../altera_jtag_avalon_master_161/sim/ghrd_10as066n2_altera_jtag_avalon_master_161_7opu3yi.v \
  $QSYS_SIMDIR/../altera_emif_a10_hps_161/sim/ghrd_10as066n2_altera_emif_a10_hps_161_6mh7udq.v \
  $QSYS_SIMDIR/../altera_avalon_pio_161/sim/ghrd_10as066n2_altera_avalon_pio_161_wd25eay.v \
  $QSYS_SIMDIR/../altera_avalon_pio_161/sim/ghrd_10as066n2_altera_avalon_pio_161_imbvr3i.v \
  $QSYS_SIMDIR/../altera_arria10_hps_161/sim/ghrd_10as066n2_altera_arria10_hps_161_wdommvq.v \
  $QSYS_SIMDIR/../interrupt_latency_counter_161/sim/interrupt_latency_counter.v \
  $QSYS_SIMDIR/../interrupt_latency_counter_161/sim/irq_detector.v \
  $QSYS_SIMDIR/../interrupt_latency_counter_161/sim/state_machine_counter.v \
  $QSYS_SIMDIR/ghrd_10as066n2.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
