
module varint_out_fifo (
	data,
	wrreq,
	rdreq,
	clock,
	sclr,
	q,
	full,
	empty);	

	input	[7:0]	data;
	input		wrreq;
	input		rdreq;
	input		clock;
	input		sclr;
	output	[7:0]	q;
	output		full;
	output		empty;
endmodule
