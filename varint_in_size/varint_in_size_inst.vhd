	component varint_in_size is
		port (
			data  : in  std_logic := 'X'; -- datain
			wrreq : in  std_logic := 'X'; -- wrreq
			rdreq : in  std_logic := 'X'; -- rdreq
			clock : in  std_logic := 'X'; -- clk
			sclr  : in  std_logic := 'X'; -- sclr
			q     : out std_logic         -- dataout
		);
	end component varint_in_size;

	u0 : component varint_in_size
		port map (
			data  => CONNECTED_TO_data,  --  fifo_input.datain
			wrreq => CONNECTED_TO_wrreq, --            .wrreq
			rdreq => CONNECTED_TO_rdreq, --            .rdreq
			clock => CONNECTED_TO_clock, --            .clk
			sclr  => CONNECTED_TO_sclr,  --            .sclr
			q     => CONNECTED_TO_q      -- fifo_output.dataout
		);

