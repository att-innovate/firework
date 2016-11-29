// (C) 2001-2015 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License Subscription 
// Agreement, Altera MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


module altera_gts_txbuffer #(
    parameter TX_BUFFER_DEPTH = 4,
    parameter TX_BUFFER_ASIZE = 2
) (
    input               wr_clk,
    input               wr_rst_n,
    input [9:0]         wr_data,
    input               rd_clk,
    input               rd_rst_n,

    output reg [9:0]    rd_data
    
);

reg [9:0]                   wr_data_flp;
reg                         enable_wr;

reg [TX_BUFFER_ASIZE:0]     wr_bin_ptr;
reg [TX_BUFFER_ASIZE:0]     wr_bin_ptr_nxt;

reg [TX_BUFFER_ASIZE:0]     rd_bin_ptr;
reg [TX_BUFFER_ASIZE:0]     rd_bin_ptr_nxt;

reg [TX_BUFFER_ASIZE:0]     wr_gray_ptr;

reg [TX_BUFFER_ASIZE:0]     rd_gray_ptr;

wire [TX_BUFFER_ASIZE:0]    wr_gray_ptr_nxt;

wire [TX_BUFFER_ASIZE:0]    rd_gray_ptr_nxt;

wire [TX_BUFFER_ASIZE:0]    wr_bin_ptr_default;
wire [TX_BUFFER_ASIZE:0]    wr_gray_ptr_default;
wire [TX_BUFFER_ASIZE:0]    incr_ptr_value;
wire                        almost_full;
wire                        deletion;
wire                        insertion;
wire                        empty;
wire                        almost_empty;
wire [TX_BUFFER_ASIZE:0]    wr_gray_ptr_synch;
wire [TX_BUFFER_ASIZE:0]    rd_gray_ptr_synch;
wire [TX_BUFFER_ASIZE:0]    wr_bin_ptr_synch;
wire [TX_BUFFER_ASIZE:0]    rd_bin_ptr_synch;
wire [TX_BUFFER_ASIZE:0]    wr_navail;
wire [TX_BUFFER_ASIZE:0]    rd_navail;
wire [TX_BUFFER_ASIZE:0]    high_wm;
wire [TX_BUFFER_ASIZE:0]    low_wm;
wire [9:0]                  q_out;

localparam DSIZE            = 10;

assign incr_ptr_value       = {{TX_BUFFER_ASIZE{1'b0}}, 1'b1};

// Write domain logic
assign wr_bin_ptr_default   = (TX_BUFFER_DEPTH >> 1);
assign high_wm              = (TX_BUFFER_DEPTH >> 1) + 4;
assign wr_navail            = wr_bin_ptr - rd_bin_ptr_synch;
assign almost_full          = (wr_navail >= high_wm);
assign deletion             = almost_full & (wr_data_flp == 10'h0);

altera_gts_bin_gray #(
    .SIZE   (TX_BUFFER_ASIZE + 1)    
) u_wr_gray_ptr_default (
    .bin    (wr_bin_ptr_default),
    .gray   (wr_gray_ptr_default)
);

altera_gts_bin_gray #(
    .SIZE   (TX_BUFFER_ASIZE + 1)    
) u_wr_bin_to_gray (
    .bin    (wr_bin_ptr_nxt),
    .gray   (wr_gray_ptr_nxt)
);

altera_gts_gray_bin #(
    .SIZE   (TX_BUFFER_ASIZE + 1)    
) u_wr_gray_to_bin (
    .gray   (rd_gray_ptr_synch),
    .bin    (rd_bin_ptr_synch)
);

always @(posedge wr_clk or negedge wr_rst_n) begin
    if (!wr_rst_n) begin
        wr_bin_ptr  <= wr_bin_ptr_default;
        wr_gray_ptr <= wr_gray_ptr_default;
    end
    else begin
        wr_bin_ptr  <= wr_bin_ptr_nxt;
        wr_gray_ptr <= wr_gray_ptr_nxt;
    end
end

always @* begin
    if (enable_wr & ~deletion) begin
        wr_bin_ptr_nxt = wr_bin_ptr + incr_ptr_value;
    end
    else begin
        wr_bin_ptr_nxt = wr_bin_ptr;
    end
end

always @(posedge wr_clk or negedge wr_rst_n) begin
    if (!wr_rst_n) begin
        wr_data_flp <= 10'h0;
        enable_wr   <= 1'b0;
    end
    else begin
        wr_data_flp <= wr_data;
        enable_wr   <= 1'b1;
    end
end

altera_std_synchronizer_bundle #(
    .width      (TX_BUFFER_ASIZE + 1),
    .depth      (2)
) u_rd_to_wr_synch (
    .clk        (wr_clk),
    .reset_n    (wr_rst_n),
    .din        (rd_gray_ptr),
    .dout       (rd_gray_ptr_synch)

);

// Read domain logic
assign empty        = (rd_navail == {(TX_BUFFER_ASIZE+1){1'b0}});
assign almost_empty = (rd_navail <= low_wm);
assign insertion    = almost_empty & (rd_data == 10'h0);
assign low_wm       = (TX_BUFFER_DEPTH >> 1) - 4;
assign rd_navail    = wr_bin_ptr_synch - rd_bin_ptr;

altera_gts_bin_gray #(
    .SIZE   (TX_BUFFER_ASIZE + 1)    
) u_rd_bin_to_gray (
    .bin    (rd_bin_ptr_nxt),
    .gray   (rd_gray_ptr_nxt)
);

altera_gts_gray_bin #(
    .SIZE   (TX_BUFFER_ASIZE + 1)    
) u_rd_gray_to_bin (
    .gray   (wr_gray_ptr_synch),
    .bin    (wr_bin_ptr_synch)
);

always @(posedge rd_clk or negedge rd_rst_n) begin
    if (!rd_rst_n) begin
        rd_bin_ptr  <= {(TX_BUFFER_ASIZE+1){1'b0}};
        rd_gray_ptr <= {(TX_BUFFER_ASIZE+1){1'b0}};
    end
    else begin
        rd_bin_ptr  <= rd_bin_ptr_nxt;
        rd_gray_ptr <= rd_gray_ptr_nxt;
    end
end

always @* begin
    if (~empty & ~insertion) begin
        rd_bin_ptr_nxt = rd_bin_ptr + incr_ptr_value;
    end
    else begin
        rd_bin_ptr_nxt = rd_bin_ptr;
    end
end

always @(posedge rd_clk or negedge rd_rst_n) begin
    if (!rd_rst_n)
        rd_data <= 10'h0;
    else if (insertion)
        rd_data <= rd_data;
    else
        rd_data <= q_out;
end


altera_gts_synchronizer_bundle #(
    .WIDTH          (TX_BUFFER_ASIZE + 1),
    .DEPTH          (2)
) u_wr_to_rd_synch (
    .clk            (rd_clk),
    .reset_n        (rd_rst_n),
    .reset_value    (wr_gray_ptr_default),
    .din            (wr_gray_ptr),
    .dout           (wr_gray_ptr_synch)

);


altera_gts_fifomem #(
    .DSIZE  (DSIZE),
    .ASIZE  (TX_BUFFER_ASIZE)
) u_fifomem (
    .wrclk              (wr_clk),
    .wrrst_n            (wr_rst_n),
    .rdclk              (rd_clk),
    .rdrst_n            (rd_rst_n),
    .wren               (enable_wr),
    .wrdata             (wr_data_flp),
    .wraddr             (wr_bin_ptr[TX_BUFFER_ASIZE-1:0]),
    .rdaddr             (rd_bin_ptr[TX_BUFFER_ASIZE-1:0]),
    .insertion          (insertion),
    .rddata             (q_out)
);



endmodule
