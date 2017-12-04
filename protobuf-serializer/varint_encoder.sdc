# clock constraint
create_clock -name clock_clk -period 10.000 -waveform {0.000 5.000} [get_ports {clock_clk}]

# I/O port constraints
set_false_path -from [get_ports {reset_reset_n}]

# AXI4 input ports
set_false_path -from [get_ports {axs_s0_arid*}] -to *
set_false_path -from [get_ports {axs_s0_arlen*}] -to *
set_false_path -from [get_ports {axs_s0_arvalid}] -to *
set_false_path -from [get_ports {axs_s0_awaddr*}] -to *
set_false_path -from [get_ports {axs_s0_awid*}] -to *
set_false_path -from [get_ports {axs_s0_awvalid}] -to *
set_false_path -from [get_ports {axs_s0_bready}] -to *
set_false_path -from [get_ports {axs_s0_rready}] -to *
set_false_path -from [get_ports {axs_s0_wdata*}] -to *
set_false_path -from [get_ports {axs_s0_wstrb*}] -to *
set_false_path -from [get_ports {axs_s0_wvalid}] -to *

# AXI4 output ports
set_false_path -from * -to [get_ports {axs_s0_arready}]
set_false_path -from * -to [get_ports {axs_s0_awready}]
set_false_path -from * -to [get_ports {axs_s0_bid*}]
set_false_path -from * -to [get_ports {axs_s0_bvalid}]
set_false_path -from * -to [get_ports {axs_s0_rdata*}]
set_false_path -from * -to [get_ports {axs_s0_rid*}]
set_false_path -from * -to [get_ports {axs_s0_rlast}]
set_false_path -from * -to [get_ports {axs_s0_rvalid}]
set_false_path -from * -to [get_ports {axs_s0_wready}]

#set_false_path -from [get_ports {axs_s0_arid* axs_s0_arlen* axs_s0_arvalid axs_s0_awaddr* axs_s0_awid* axs_s0_awvalid axs_s0_bready axs_s0_rready axs_s0_wdata* axs_s0_wstrb* axs_s0_wvalid}] -to [get_ports {axs_s0_arready axs_s0_awready axs_s0_bid* axs_s0_bvalid axs_s0_rdata* axs_s0_rid* axs_s0_rlast axs_s0_rvalid axs_s0_wready}]
