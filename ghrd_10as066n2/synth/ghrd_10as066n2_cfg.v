config ghrd_10as066n2_cfg;
		design ghrd_10as066n2;
		instance ghrd_10as066n2.ilc use ghrd_10as066n2_interrupt_latency_counter_160.interrupt_latency_counter;
		instance ghrd_10as066n2.arria10_hps_0 use ghrd_10as066n2_altera_arria10_hps_160.ghrd_10as066n2_altera_arria10_hps_160_z5pkcay;
		instance ghrd_10as066n2.button_pio use ghrd_10as066n2_altera_avalon_pio_160.ghrd_10as066n2_altera_avalon_pio_160_ni6vtzq;
		instance ghrd_10as066n2.dipsw_pio use ghrd_10as066n2_altera_avalon_pio_160.ghrd_10as066n2_altera_avalon_pio_160_vok7g7q;
		instance ghrd_10as066n2.emif_a10_hps_0 use ghrd_10as066n2_altera_emif_a10_hps_160.ghrd_10as066n2_altera_emif_a10_hps_160_dm7bgly;
		instance ghrd_10as066n2.f2sdram_only_master use ghrd_10as066n2_altera_jtag_avalon_master_160.ghrd_10as066n2_altera_jtag_avalon_master_160_n3nalcq;
		instance ghrd_10as066n2.f2sdram_only_master1 use ghrd_10as066n2_altera_jtag_avalon_master_160.ghrd_10as066n2_altera_jtag_avalon_master_160_n3nalcq;
		instance ghrd_10as066n2.fpga_only_master use ghrd_10as066n2_altera_jtag_avalon_master_160.ghrd_10as066n2_altera_jtag_avalon_master_160_n3nalcq;
		instance ghrd_10as066n2.hps_only_master use ghrd_10as066n2_altera_jtag_avalon_master_160.ghrd_10as066n2_altera_jtag_avalon_master_160_n3nalcq;
		instance ghrd_10as066n2.in_system_sources_probes_0 use ghrd_10as066n2_altera_in_system_sources_probes_160.altsource_probe_top;
		instance ghrd_10as066n2.led_pio use ghrd_10as066n2_altera_avalon_pio_160.ghrd_10as066n2_altera_avalon_pio_160_obivuki;
		instance ghrd_10as066n2.onchip_memory2_0 use ghrd_10as066n2_altera_avalon_onchip_memory2_160.ghrd_10as066n2_altera_avalon_onchip_memory2_160_cs3qdiy;
		instance ghrd_10as066n2.pb_lwh2f use ghrd_10as066n2_altera_avalon_mm_bridge_160.altera_avalon_mm_bridge;
		instance ghrd_10as066n2.protobuf_serializer_0 use ghrd_10as066n2_protobuf_serializer_30.protobuf_serializer;
		instance ghrd_10as066n2.sysid_qsys_0 use ghrd_10as066n2_altera_avalon_sysid_qsys_160.ghrd_10as066n2_altera_avalon_sysid_qsys_160_6tl777y;
		instance ghrd_10as066n2.mm_interconnect_0 use ghrd_10as066n2_altera_mm_interconnect_160.ghrd_10as066n2_altera_mm_interconnect_160_l57bo3q;
		instance ghrd_10as066n2.mm_interconnect_1 use ghrd_10as066n2_altera_mm_interconnect_160.ghrd_10as066n2_altera_mm_interconnect_160_wkc4ela;
		instance ghrd_10as066n2.mm_interconnect_2 use ghrd_10as066n2_altera_mm_interconnect_160.ghrd_10as066n2_altera_mm_interconnect_160_whlrxya;
		instance ghrd_10as066n2.mm_interconnect_3 use ghrd_10as066n2_altera_mm_interconnect_160.ghrd_10as066n2_altera_mm_interconnect_160_w6ryx7i;
		instance ghrd_10as066n2.mm_interconnect_4 use ghrd_10as066n2_altera_mm_interconnect_160.ghrd_10as066n2_altera_mm_interconnect_160_bristfa;
		instance ghrd_10as066n2.mm_interconnect_5 use ghrd_10as066n2_altera_mm_interconnect_160.ghrd_10as066n2_altera_mm_interconnect_160_t5dt3by;
		instance ghrd_10as066n2.irq_mapper use ghrd_10as066n2_altera_irq_mapper_160.ghrd_10as066n2_altera_irq_mapper_160_wamtz2y;
		instance ghrd_10as066n2.irq_mapper_001 use ghrd_10as066n2_altera_irq_mapper_160.ghrd_10as066n2_altera_irq_mapper_160_nyvix5i;
		instance ghrd_10as066n2.irq_mapper_002 use ghrd_10as066n2_altera_irq_mapper_160.ghrd_10as066n2_altera_irq_mapper_160_knx5hka;
		instance ghrd_10as066n2.rst_controller use ghrd_10as066n2_altera_reset_controller_160.altera_reset_controller;
		instance ghrd_10as066n2.rst_controller_001 use ghrd_10as066n2_altera_reset_controller_160.altera_reset_controller;
		instance ghrd_10as066n2.rst_controller_002 use ghrd_10as066n2_altera_reset_controller_160.altera_reset_controller;
		instance ghrd_10as066n2.rst_controller_003 use ghrd_10as066n2_altera_reset_controller_160.altera_reset_controller;
		instance ghrd_10as066n2.rst_controller_004 use ghrd_10as066n2_altera_reset_controller_160.altera_reset_controller;
endconfig

