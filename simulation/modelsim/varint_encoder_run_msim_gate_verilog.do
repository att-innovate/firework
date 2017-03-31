transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {varint_encoder.vo}

vlog -vlog01compat -work work +incdir+/home/mladmon/workspace/firework/protobuf-serializer {/home/mladmon/workspace/firework/protobuf-serializer/protobuf_serializer_tb.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L twentynm_ver -L lpm_ver -L sgate_ver -L twentynm_hssi_ver -L twentynm_hip_ver -L gate_work -L work -voptargs="+acc"  protobuf_serializer_tb

add wave *
view structure
view signals
run -all
