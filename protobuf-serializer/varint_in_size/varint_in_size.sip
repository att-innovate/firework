set_global_assignment -entity "varint_in_size" -library "lib_varint_in_size" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "varint_in_size" -library "lib_varint_in_size" -name IP_TOOL_VERSION "16.0"
set_global_assignment -entity "varint_in_size" -library "lib_varint_in_size" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_varint_in_size" -name SPD_FILE [file join $::quartus(sip_path) "varint_in_size.spd"]
set_global_assignment -library "lib_varint_in_size" -name MISC_FILE [file join $::quartus(sip_path) "../varint_in_size.qsys"]

set_global_assignment -library "lib_varint_in_size" -name MISC_FILE [file join $::quartus(sip_path) "sim/varint_in_size.v"]
set_global_assignment -library "lib_varint_in_size" -name MISC_FILE [file join $::quartus(sip_path) "fifo_160/sim/varint_in_size_fifo_160_sjmeklq.v"]
