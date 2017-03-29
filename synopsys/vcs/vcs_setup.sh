
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

# ACDS 16.0 211 linux 2017.03.28.16:27:19

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     out_fifo
#     raw_data_in_fifo
#     raw_data_in_index
#     raw_data_in_wstrb
#     raw_data_out_fifo
#     raw_data_out_index
#     varint_in_fifo
#     varint_in_index
#     varint_out_fifo
#     varint_out_index
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
# ACDS 16.0 211 linux 2017.03.28.16:27:19
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="varint_out_index"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="/home/mladmon/workspace/altera/16.0/quartus/"
SKIP_FILE_COPY=0
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
# copy RAM/ROM files to simulation directory

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
  $QSYS_SIMDIR/out_fifo/fifo_160/sim/out_fifo_fifo_160_otpqnty.v \
  $QSYS_SIMDIR/out_fifo/sim/out_fifo.v \
  $QSYS_SIMDIR/raw_data_in_fifo/fifo_160/sim/raw_data_in_fifo_fifo_160_v2ho2aa.v \
  $QSYS_SIMDIR/raw_data_in_fifo/sim/raw_data_in_fifo.v \
  $QSYS_SIMDIR/raw_data_in_index/fifo_160/sim/raw_data_in_index_fifo_160_kjjiney.v \
  $QSYS_SIMDIR/raw_data_in_index/sim/raw_data_in_index.v \
  $QSYS_SIMDIR/raw_data_in_wstrb/fifo_160/sim/raw_data_in_wstrb_fifo_160_sconavq.v \
  $QSYS_SIMDIR/raw_data_in_wstrb/sim/raw_data_in_wstrb.v \
  $QSYS_SIMDIR/raw_data_out_fifo/fifo_160/sim/raw_data_out_fifo_fifo_160_q2auapq.v \
  $QSYS_SIMDIR/raw_data_out_fifo/sim/raw_data_out_fifo.v \
  $QSYS_SIMDIR/raw_data_out_index/fifo_160/sim/raw_data_out_index_fifo_160_tgkntjy.v \
  $QSYS_SIMDIR/raw_data_out_index/sim/raw_data_out_index.v \
  $QSYS_SIMDIR/varint_in_fifo/fifo_160/sim/varint_in_fifo_fifo_160_v2ho2aa.v \
  $QSYS_SIMDIR/varint_in_fifo/sim/varint_in_fifo.v \
  $QSYS_SIMDIR/varint_in_index/fifo_160/sim/varint_in_index_fifo_160_kjjiney.v \
  $QSYS_SIMDIR/varint_in_index/sim/varint_in_index.v \
  $QSYS_SIMDIR/varint_out_fifo/fifo_160/sim/varint_out_fifo_fifo_160_q2auapq.v \
  $QSYS_SIMDIR/varint_out_fifo/sim/varint_out_fifo.v \
  $QSYS_SIMDIR/varint_out_index/fifo_160/sim/varint_out_index_fifo_160_tgkntjy.v \
  $QSYS_SIMDIR/varint_out_index/sim/varint_out_index.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
