
module in_fifo (
	data,
	wrreq,
	rdreq,
	clock,
	sclr,
	q,
	usedw,
	full,
	empty);	

	input	[31:0]	data;
	input		wrreq;
	input		rdreq;
	input		clock;
	input		sclr;
	output	[31:0]	q;
	output	[9:0]	usedw;
	output		full;
	output		empty;
endmodule
