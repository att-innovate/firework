config ghrd_10as066n2_altera_jtag_avalon_master_161_7opu3yi_cfg;
		design ghrd_10as066n2_altera_jtag_avalon_master_161_7opu3yi;
		instance ghrd_10as066n2_altera_jtag_avalon_master_161_7opu3yi.jtag_phy_embedded_in_jtag_master use ghrd_10as066n2_altera_jtag_dc_streaming_161.altera_avalon_st_jtag_interface;
		instance ghrd_10as066n2_altera_jtag_avalon_master_161_7opu3yi.timing_adt use ghrd_10as066n2_timing_adapter_161.ghrd_10as066n2_timing_adapter_161_u532i6q;
		instance ghrd_10as066n2_altera_jtag_avalon_master_161_7opu3yi.fifo use ghrd_10as066n2_altera_avalon_sc_fifo_161.altera_avalon_sc_fifo;
		instance ghrd_10as066n2_altera_jtag_avalon_master_161_7opu3yi.b2p use ghrd_10as066n2_altera_avalon_st_bytes_to_packets_161.altera_avalon_st_bytes_to_packets;
		instance ghrd_10as066n2_altera_jtag_avalon_master_161_7opu3yi.p2b use ghrd_10as066n2_altera_avalon_st_packets_to_bytes_161.altera_avalon_st_packets_to_bytes;
		instance ghrd_10as066n2_altera_jtag_avalon_master_161_7opu3yi.transacto use ghrd_10as066n2_altera_avalon_packets_to_master_161.altera_avalon_packets_to_master;
		instance ghrd_10as066n2_altera_jtag_avalon_master_161_7opu3yi.b2p_adapter use ghrd_10as066n2_channel_adapter_161.ghrd_10as066n2_channel_adapter_161_fcviibi;
		instance ghrd_10as066n2_altera_jtag_avalon_master_161_7opu3yi.p2b_adapter use ghrd_10as066n2_channel_adapter_161.ghrd_10as066n2_channel_adapter_161_xd7xncy;
		instance ghrd_10as066n2_altera_jtag_avalon_master_161_7opu3yi.rst_controller use ghrd_10as066n2_altera_reset_controller_161.altera_reset_controller;
endconfig
