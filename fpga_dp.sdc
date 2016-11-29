# Clock Group
create_clock -name DP_REFCLK -period 3.703 [get_ports dp_refclk]
derive_pll_clocks -create_base_clocks
derive_clock_uncertainty

# Clock Group
set_clock_groups -exclusive \
-group [get_clocks {MAIN_CLOCK}] \
-group [get_clocks {DP_REFCLK}] \
-group [get_clocks {soc_inst|display_port|*|tx_clkout}] \
-group [get_clocks {soc_inst|display_port|video_pll|outclk0 soc_inst|display_port|video_pll|outclk1 soc_inst|display_port|video_pll|outclk2}]

set_output_delay -clock { soc_inst|display_port|video_pll|outclk1 } 0.5 [get_ports {DP_AUX_CH_P}]
set_output_delay -clock { soc_inst|display_port|video_pll|outclk1 } 0.5 [get_ports {DP_AUX_CH_N}]
set_input_delay -clock { soc_inst|display_port|video_pll|outclk1 } 0.5 [get_ports {DP_AUX_CH_P}]
set_input_delay -clock { soc_inst|display_port|video_pll|outclk1 } 0.5 [get_ports {DP_AUX_CH_N}]