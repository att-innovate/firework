
module out_fifo (
	data,
	wrreq,
	rdreq,
	clock,
	q,
	usedw,
	full,
	empty);	

	input	[7:0]	data;
	input		wrreq;
	input		rdreq;
	input		clock;
	output	[7:0]	q;
	output	[11:0]	usedw;
	output		full;
	output		empty;
endmodule
