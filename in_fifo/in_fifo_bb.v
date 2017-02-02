
module in_fifo (
	data,
	wrreq,
	rdreq,
	clock,
	sclr,
	q,
	full,
	empty);	

	input	[31:0]	data;
	input		wrreq;
	input		rdreq;
	input		clock;
	input		sclr;
	output	[31:0]	q;
	output		full;
	output		empty;
endmodule
