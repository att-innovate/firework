
module raw_data_in_wstrb (
	data,
	wrreq,
	rdreq,
	clock,
	sclr,
	q);	

	input	[3:0]	data;
	input		wrreq;
	input		rdreq;
	input		clock;
	input		sclr;
	output	[3:0]	q;
endmodule
