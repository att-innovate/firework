config ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi_cfg;
		design ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.hps_only_master_master_translator use ghrd_10as066n2_altera_merlin_master_translator_161.altera_merlin_master_translator;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.hps_only_master_master_agent use ghrd_10as066n2_altera_merlin_master_agent_161.altera_merlin_master_agent;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.arria10_hps_0_f2h_axi_slave_agent use ghrd_10as066n2_altera_merlin_axi_slave_ni_161.altera_merlin_axi_slave_ni;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.router use ghrd_10as066n2_altera_merlin_router_161.ghrd_10as066n2_altera_merlin_router_161_23evfkq;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.router_001 use ghrd_10as066n2_altera_merlin_router_161.ghrd_10as066n2_altera_merlin_router_161_p6phnay;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.router_002 use ghrd_10as066n2_altera_merlin_router_161.ghrd_10as066n2_altera_merlin_router_161_p6phnay;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.hps_only_master_master_limiter use ghrd_10as066n2_altera_merlin_traffic_limiter_161.altera_merlin_traffic_limiter;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.cmd_demux use ghrd_10as066n2_altera_merlin_demultiplexer_161.ghrd_10as066n2_altera_merlin_demultiplexer_161_vlbffpa;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.cmd_mux use ghrd_10as066n2_altera_merlin_multiplexer_161.ghrd_10as066n2_altera_merlin_multiplexer_161_rk5recq;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.cmd_mux_001 use ghrd_10as066n2_altera_merlin_multiplexer_161.ghrd_10as066n2_altera_merlin_multiplexer_161_rk5recq;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.rsp_demux use ghrd_10as066n2_altera_merlin_demultiplexer_161.ghrd_10as066n2_altera_merlin_demultiplexer_161_j54ki5q;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.rsp_demux_001 use ghrd_10as066n2_altera_merlin_demultiplexer_161.ghrd_10as066n2_altera_merlin_demultiplexer_161_j54ki5q;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.rsp_mux use ghrd_10as066n2_altera_merlin_multiplexer_161.ghrd_10as066n2_altera_merlin_multiplexer_161_kblxcwy;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.arria10_hps_0_f2h_axi_slave_wr_cmd_width_adapter use ghrd_10as066n2_altera_merlin_width_adapter_161.altera_merlin_width_adapter;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.arria10_hps_0_f2h_axi_slave_rd_cmd_width_adapter use ghrd_10as066n2_altera_merlin_width_adapter_161.altera_merlin_width_adapter;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.arria10_hps_0_f2h_axi_slave_wr_rsp_width_adapter use ghrd_10as066n2_altera_merlin_width_adapter_161.altera_merlin_width_adapter;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.arria10_hps_0_f2h_axi_slave_rd_rsp_width_adapter use ghrd_10as066n2_altera_merlin_width_adapter_161.altera_merlin_width_adapter;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.limiter_pipeline use ghrd_10as066n2_altera_avalon_st_pipeline_stage_161.altera_avalon_st_pipeline_stage;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.limiter_pipeline_001 use ghrd_10as066n2_altera_avalon_st_pipeline_stage_161.altera_avalon_st_pipeline_stage;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.agent_pipeline use ghrd_10as066n2_altera_avalon_st_pipeline_stage_161.altera_avalon_st_pipeline_stage;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.agent_pipeline_001 use ghrd_10as066n2_altera_avalon_st_pipeline_stage_161.altera_avalon_st_pipeline_stage;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.agent_pipeline_002 use ghrd_10as066n2_altera_avalon_st_pipeline_stage_161.altera_avalon_st_pipeline_stage;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.agent_pipeline_003 use ghrd_10as066n2_altera_avalon_st_pipeline_stage_161.altera_avalon_st_pipeline_stage;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.mux_pipeline use ghrd_10as066n2_altera_avalon_st_pipeline_stage_161.altera_avalon_st_pipeline_stage;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.mux_pipeline_001 use ghrd_10as066n2_altera_avalon_st_pipeline_stage_161.altera_avalon_st_pipeline_stage;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.mux_pipeline_002 use ghrd_10as066n2_altera_avalon_st_pipeline_stage_161.altera_avalon_st_pipeline_stage;
		instance ghrd_10as066n2_altera_mm_interconnect_161_kzxwlpi.mux_pipeline_003 use ghrd_10as066n2_altera_avalon_st_pipeline_stage_161.altera_avalon_st_pipeline_stage;
endconfig

