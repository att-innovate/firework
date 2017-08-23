
module out_fifo (
	data,
	wrreq,
	rdreq,
	clock,
	sclr,
	q,
	usedw,
	full,
	empty);	

	input	[7:0]	data;
	input		wrreq;
	input		rdreq;
	input		clock;
	input		sclr;
	output	[7:0]	q;
	output	[16:0]	usedw;
	output		full;
	output		empty;
endmodule
