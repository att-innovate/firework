set_global_assignment -entity "raw_data_in_fifo" -library "lib_raw_data_in_fifo" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "raw_data_in_fifo" -library "lib_raw_data_in_fifo" -name IP_TOOL_VERSION "17.1"
set_global_assignment -entity "raw_data_in_fifo" -library "lib_raw_data_in_fifo" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_raw_data_in_fifo" -name SPD_FILE [file join $::quartus(sip_path) "raw_data_in_fifo.spd"]
set_global_assignment -library "lib_raw_data_in_fifo" -name MISC_FILE [file join $::quartus(sip_path) "../raw_data_in_fifo.qsys"]

set_global_assignment -library "lib_raw_data_in_fifo" -name MISC_FILE [file join $::quartus(sip_path) "sim/raw_data_in_fifo.v"]
set_global_assignment -library "lib_raw_data_in_fifo" -name MISC_FILE [file join $::quartus(sip_path) "fifo_171/sim/raw_data_in_fifo_fifo_171_ad2l2zy.v"]
