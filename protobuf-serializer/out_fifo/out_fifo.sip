set_global_assignment -entity "out_fifo" -library "lib_out_fifo" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "out_fifo" -library "lib_out_fifo" -name IP_TOOL_VERSION "17.1"
set_global_assignment -entity "out_fifo" -library "lib_out_fifo" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_out_fifo" -name SPD_FILE [file join $::quartus(sip_path) "out_fifo.spd"]
set_global_assignment -library "lib_out_fifo" -name MISC_FILE [file join $::quartus(sip_path) "../out_fifo.qsys"]

set_global_assignment -library "lib_out_fifo" -name MISC_FILE [file join $::quartus(sip_path) "sim/out_fifo.v"]
set_global_assignment -library "lib_out_fifo" -name MISC_FILE [file join $::quartus(sip_path) "fifo_171/sim/out_fifo_fifo_171_onw3uty.v"]
