set_global_assignment -entity "raw_data_in_index" -library "lib_raw_data_in_index" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "raw_data_in_index" -library "lib_raw_data_in_index" -name IP_TOOL_VERSION "17.1"
set_global_assignment -entity "raw_data_in_index" -library "lib_raw_data_in_index" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_raw_data_in_index" -name SPD_FILE [file join $::quartus(sip_path) "raw_data_in_index.spd"]
set_global_assignment -library "lib_raw_data_in_index" -name MISC_FILE [file join $::quartus(sip_path) "../raw_data_in_index.qsys"]

set_global_assignment -library "lib_raw_data_in_index" -name MISC_FILE [file join $::quartus(sip_path) "sim/raw_data_in_index.v"]
set_global_assignment -library "lib_raw_data_in_index" -name MISC_FILE [file join $::quartus(sip_path) "fifo_171/sim/raw_data_in_index_fifo_171_sdxy63a.v"]
