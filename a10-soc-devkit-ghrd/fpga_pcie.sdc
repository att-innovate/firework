# Clock Group
create_clock -name PCIE_REFCLK -period 10 [get_ports pcie_refclk_100]
derive_pll_clocks -create_base_clocks
derive_clock_uncertainty

set_clock_groups -exclusive -group [get_clocks {MAIN_CLOCK}] -group [get_clocks {PCIE_REFCLK}] -group [get_clocks {soc_inst|*|pcie_a10_hip_avmm|coreclkout}]
set_false_path -from [ get_ports {hps_pcie_a10_hip_avmm_0_npor_pin_perst}]