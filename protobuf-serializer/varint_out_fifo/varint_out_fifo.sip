set_global_assignment -entity "varint_out_fifo" -library "lib_varint_out_fifo" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "varint_out_fifo" -library "lib_varint_out_fifo" -name IP_TOOL_VERSION "16.0"
set_global_assignment -entity "varint_out_fifo" -library "lib_varint_out_fifo" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_varint_out_fifo" -name SPD_FILE [file join $::quartus(sip_path) "varint_out_fifo.spd"]
set_global_assignment -library "lib_varint_out_fifo" -name MISC_FILE [file join $::quartus(sip_path) "../varint_out_fifo.qsys"]

set_global_assignment -library "lib_varint_out_fifo" -name MISC_FILE [file join $::quartus(sip_path) "sim/varint_out_fifo.v"]
set_global_assignment -library "lib_varint_out_fifo" -name MISC_FILE [file join $::quartus(sip_path) "fifo_160/sim/varint_out_fifo_fifo_160_q2auapq.v"]
