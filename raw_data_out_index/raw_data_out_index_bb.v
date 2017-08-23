
module raw_data_out_index (
	data,
	wrreq,
	rdreq,
	clock,
	sclr,
	q);	

	input	[9:0]	data;
	input		wrreq;
	input		rdreq;
	input		clock;
	input		sclr;
	output	[9:0]	q;
endmodule
