set_global_assignment -entity "in_fifo" -library "lib_in_fifo" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "in_fifo" -library "lib_in_fifo" -name IP_TOOL_VERSION "16.0"
set_global_assignment -entity "in_fifo" -library "lib_in_fifo" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_in_fifo" -name SPD_FILE [file join $::quartus(sip_path) "in_fifo.spd"]
set_global_assignment -library "lib_in_fifo" -name MISC_FILE [file join $::quartus(sip_path) "../in_fifo.qsys"]

set_global_assignment -library "lib_in_fifo" -name MISC_FILE [file join $::quartus(sip_path) "sim/in_fifo.v"]
set_global_assignment -library "lib_in_fifo" -name MISC_FILE [file join $::quartus(sip_path) "fifo_160/sim/in_fifo_fifo_160_2524una.v"]
