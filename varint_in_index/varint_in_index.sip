set_global_assignment -entity "varint_in_index" -library "lib_varint_in_index" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "varint_in_index" -library "lib_varint_in_index" -name IP_TOOL_VERSION "16.0"
set_global_assignment -entity "varint_in_index" -library "lib_varint_in_index" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_varint_in_index" -name SPD_FILE [file join $::quartus(sip_path) "varint_in_index.spd"]
set_global_assignment -library "lib_varint_in_index" -name MISC_FILE [file join $::quartus(sip_path) "../varint_in_index.qsys"]

set_global_assignment -library "lib_varint_in_index" -name MISC_FILE [file join $::quartus(sip_path) "sim/varint_in_index.v"]
set_global_assignment -library "lib_varint_in_index" -name MISC_FILE [file join $::quartus(sip_path) "fifo_160/sim/varint_in_index_fifo_160_kjjiney.v"]
