	raw_data_in_wstrb u0 (
		.data  (<connected-to-data>),  //  fifo_input.datain
		.wrreq (<connected-to-wrreq>), //            .wrreq
		.rdreq (<connected-to-rdreq>), //            .rdreq
		.clock (<connected-to-clock>), //            .clk
		.sclr  (<connected-to-sclr>),  //            .sclr
		.q     (<connected-to-q>)      // fifo_output.dataout
	);

