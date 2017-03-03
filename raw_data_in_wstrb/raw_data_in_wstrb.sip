set_global_assignment -entity "raw_data_in_wstrb" -library "lib_raw_data_in_wstrb" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "raw_data_in_wstrb" -library "lib_raw_data_in_wstrb" -name IP_TOOL_VERSION "16.0"
set_global_assignment -entity "raw_data_in_wstrb" -library "lib_raw_data_in_wstrb" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_raw_data_in_wstrb" -name SPD_FILE [file join $::quartus(sip_path) "raw_data_in_wstrb.spd"]
set_global_assignment -library "lib_raw_data_in_wstrb" -name MISC_FILE [file join $::quartus(sip_path) "../raw_data_in_wstrb.qsys"]

set_global_assignment -library "lib_raw_data_in_wstrb" -name MISC_FILE [file join $::quartus(sip_path) "sim/raw_data_in_wstrb.v"]
set_global_assignment -library "lib_raw_data_in_wstrb" -name MISC_FILE [file join $::quartus(sip_path) "fifo_160/sim/raw_data_in_wstrb_fifo_160_sconavq.v"]
