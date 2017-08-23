
module ghrd_10as066n2 (
	clk_100_clk,
	emif_a10_hps_0_mem_conduit_end_mem_ck,
	emif_a10_hps_0_mem_conduit_end_mem_ck_n,
	emif_a10_hps_0_mem_conduit_end_mem_a,
	emif_a10_hps_0_mem_conduit_end_mem_act_n,
	emif_a10_hps_0_mem_conduit_end_mem_ba,
	emif_a10_hps_0_mem_conduit_end_mem_bg,
	emif_a10_hps_0_mem_conduit_end_mem_cke,
	emif_a10_hps_0_mem_conduit_end_mem_cs_n,
	emif_a10_hps_0_mem_conduit_end_mem_odt,
	emif_a10_hps_0_mem_conduit_end_mem_reset_n,
	emif_a10_hps_0_mem_conduit_end_mem_par,
	emif_a10_hps_0_mem_conduit_end_mem_alert_n,
	emif_a10_hps_0_mem_conduit_end_mem_dqs,
	emif_a10_hps_0_mem_conduit_end_mem_dqs_n,
	emif_a10_hps_0_mem_conduit_end_mem_dq,
	emif_a10_hps_0_mem_conduit_end_mem_dbi_n,
	emif_a10_hps_0_oct_conduit_end_oct_rzqin,
	emif_a10_hps_0_pll_ref_clk_clock_sink_clk,
	f2h_cold_reset_req_reset_n,
	f2h_debug_reset_req_reset_n,
	f2h_stm_hw_events_stm_hwevents,
	f2h_warm_reset_req_reset_n,
	hps_fpga_reset_reset,
	hps_io_hps_io_phery_emac0_TX_CLK,
	hps_io_hps_io_phery_emac0_TXD0,
	hps_io_hps_io_phery_emac0_TXD1,
	hps_io_hps_io_phery_emac0_TXD2,
	hps_io_hps_io_phery_emac0_TXD3,
	hps_io_hps_io_phery_emac0_RX_CTL,
	hps_io_hps_io_phery_emac0_TX_CTL,
	hps_io_hps_io_phery_emac0_RX_CLK,
	hps_io_hps_io_phery_emac0_RXD0,
	hps_io_hps_io_phery_emac0_RXD1,
	hps_io_hps_io_phery_emac0_RXD2,
	hps_io_hps_io_phery_emac0_RXD3,
	hps_io_hps_io_phery_emac0_MDIO,
	hps_io_hps_io_phery_emac0_MDC,
	hps_io_hps_io_phery_sdmmc_CMD,
	hps_io_hps_io_phery_sdmmc_D0,
	hps_io_hps_io_phery_sdmmc_D1,
	hps_io_hps_io_phery_sdmmc_D2,
	hps_io_hps_io_phery_sdmmc_D3,
	hps_io_hps_io_phery_sdmmc_D4,
	hps_io_hps_io_phery_sdmmc_D5,
	hps_io_hps_io_phery_sdmmc_D6,
	hps_io_hps_io_phery_sdmmc_D7,
	hps_io_hps_io_phery_sdmmc_CCLK,
	hps_io_hps_io_phery_usb0_DATA0,
	hps_io_hps_io_phery_usb0_DATA1,
	hps_io_hps_io_phery_usb0_DATA2,
	hps_io_hps_io_phery_usb0_DATA3,
	hps_io_hps_io_phery_usb0_DATA4,
	hps_io_hps_io_phery_usb0_DATA5,
	hps_io_hps_io_phery_usb0_DATA6,
	hps_io_hps_io_phery_usb0_DATA7,
	hps_io_hps_io_phery_usb0_CLK,
	hps_io_hps_io_phery_usb0_STP,
	hps_io_hps_io_phery_usb0_DIR,
	hps_io_hps_io_phery_usb0_NXT,
	hps_io_hps_io_phery_spim1_CLK,
	hps_io_hps_io_phery_spim1_MOSI,
	hps_io_hps_io_phery_spim1_MISO,
	hps_io_hps_io_phery_spim1_SS0_N,
	hps_io_hps_io_phery_spim1_SS1_N,
	hps_io_hps_io_phery_trace_CLK,
	hps_io_hps_io_phery_trace_D0,
	hps_io_hps_io_phery_trace_D1,
	hps_io_hps_io_phery_trace_D2,
	hps_io_hps_io_phery_trace_D3,
	hps_io_hps_io_phery_uart1_RX,
	hps_io_hps_io_phery_uart1_TX,
	hps_io_hps_io_phery_i2c1_SDA,
	hps_io_hps_io_phery_i2c1_SCL,
	hps_io_hps_io_gpio_gpio1_io5,
	hps_io_hps_io_gpio_gpio1_io14,
	hps_io_hps_io_gpio_gpio1_io16,
	hps_io_hps_io_gpio_gpio1_io17,
	issp_hps_resets_source,
	pio_button_external_connection_export,
	pio_dipsw_external_connection_export,
	pio_led_external_connection_in_port,
	pio_led_external_connection_out_port,
	reset_reset_n);	

	input		clk_100_clk;
	output	[0:0]	emif_a10_hps_0_mem_conduit_end_mem_ck;
	output	[0:0]	emif_a10_hps_0_mem_conduit_end_mem_ck_n;
	output	[16:0]	emif_a10_hps_0_mem_conduit_end_mem_a;
	output	[0:0]	emif_a10_hps_0_mem_conduit_end_mem_act_n;
	output	[1:0]	emif_a10_hps_0_mem_conduit_end_mem_ba;
	output	[0:0]	emif_a10_hps_0_mem_conduit_end_mem_bg;
	output	[0:0]	emif_a10_hps_0_mem_conduit_end_mem_cke;
	output	[0:0]	emif_a10_hps_0_mem_conduit_end_mem_cs_n;
	output	[0:0]	emif_a10_hps_0_mem_conduit_end_mem_odt;
	output	[0:0]	emif_a10_hps_0_mem_conduit_end_mem_reset_n;
	output	[0:0]	emif_a10_hps_0_mem_conduit_end_mem_par;
	input	[0:0]	emif_a10_hps_0_mem_conduit_end_mem_alert_n;
	inout	[3:0]	emif_a10_hps_0_mem_conduit_end_mem_dqs;
	inout	[3:0]	emif_a10_hps_0_mem_conduit_end_mem_dqs_n;
	inout	[31:0]	emif_a10_hps_0_mem_conduit_end_mem_dq;
	inout	[3:0]	emif_a10_hps_0_mem_conduit_end_mem_dbi_n;
	input		emif_a10_hps_0_oct_conduit_end_oct_rzqin;
	input		emif_a10_hps_0_pll_ref_clk_clock_sink_clk;
	input		f2h_cold_reset_req_reset_n;
	input		f2h_debug_reset_req_reset_n;
	input	[27:0]	f2h_stm_hw_events_stm_hwevents;
	input		f2h_warm_reset_req_reset_n;
	output		hps_fpga_reset_reset;
	output		hps_io_hps_io_phery_emac0_TX_CLK;
	output		hps_io_hps_io_phery_emac0_TXD0;
	output		hps_io_hps_io_phery_emac0_TXD1;
	output		hps_io_hps_io_phery_emac0_TXD2;
	output		hps_io_hps_io_phery_emac0_TXD3;
	input		hps_io_hps_io_phery_emac0_RX_CTL;
	output		hps_io_hps_io_phery_emac0_TX_CTL;
	input		hps_io_hps_io_phery_emac0_RX_CLK;
	input		hps_io_hps_io_phery_emac0_RXD0;
	input		hps_io_hps_io_phery_emac0_RXD1;
	input		hps_io_hps_io_phery_emac0_RXD2;
	input		hps_io_hps_io_phery_emac0_RXD3;
	inout		hps_io_hps_io_phery_emac0_MDIO;
	output		hps_io_hps_io_phery_emac0_MDC;
	inout		hps_io_hps_io_phery_sdmmc_CMD;
	inout		hps_io_hps_io_phery_sdmmc_D0;
	inout		hps_io_hps_io_phery_sdmmc_D1;
	inout		hps_io_hps_io_phery_sdmmc_D2;
	inout		hps_io_hps_io_phery_sdmmc_D3;
	inout		hps_io_hps_io_phery_sdmmc_D4;
	inout		hps_io_hps_io_phery_sdmmc_D5;
	inout		hps_io_hps_io_phery_sdmmc_D6;
	inout		hps_io_hps_io_phery_sdmmc_D7;
	output		hps_io_hps_io_phery_sdmmc_CCLK;
	inout		hps_io_hps_io_phery_usb0_DATA0;
	inout		hps_io_hps_io_phery_usb0_DATA1;
	inout		hps_io_hps_io_phery_usb0_DATA2;
	inout		hps_io_hps_io_phery_usb0_DATA3;
	inout		hps_io_hps_io_phery_usb0_DATA4;
	inout		hps_io_hps_io_phery_usb0_DATA5;
	inout		hps_io_hps_io_phery_usb0_DATA6;
	inout		hps_io_hps_io_phery_usb0_DATA7;
	input		hps_io_hps_io_phery_usb0_CLK;
	output		hps_io_hps_io_phery_usb0_STP;
	input		hps_io_hps_io_phery_usb0_DIR;
	input		hps_io_hps_io_phery_usb0_NXT;
	output		hps_io_hps_io_phery_spim1_CLK;
	output		hps_io_hps_io_phery_spim1_MOSI;
	input		hps_io_hps_io_phery_spim1_MISO;
	output		hps_io_hps_io_phery_spim1_SS0_N;
	output		hps_io_hps_io_phery_spim1_SS1_N;
	output		hps_io_hps_io_phery_trace_CLK;
	output		hps_io_hps_io_phery_trace_D0;
	output		hps_io_hps_io_phery_trace_D1;
	output		hps_io_hps_io_phery_trace_D2;
	output		hps_io_hps_io_phery_trace_D3;
	input		hps_io_hps_io_phery_uart1_RX;
	output		hps_io_hps_io_phery_uart1_TX;
	inout		hps_io_hps_io_phery_i2c1_SDA;
	inout		hps_io_hps_io_phery_i2c1_SCL;
	inout		hps_io_hps_io_gpio_gpio1_io5;
	inout		hps_io_hps_io_gpio_gpio1_io14;
	inout		hps_io_hps_io_gpio_gpio1_io16;
	inout		hps_io_hps_io_gpio_gpio1_io17;
	output	[2:0]	issp_hps_resets_source;
	input	[3:0]	pio_button_external_connection_export;
	input	[3:0]	pio_dipsw_external_connection_export;
	input	[3:0]	pio_led_external_connection_in_port;
	output	[3:0]	pio_led_external_connection_out_port;
	input		reset_reset_n;
endmodule
