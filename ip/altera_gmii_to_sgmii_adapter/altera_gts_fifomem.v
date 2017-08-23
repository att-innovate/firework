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


module altera_gts_fifomem #(
    parameter DSIZE = 8,
    parameter ASIZE = 4
) (
    input               wrclk,
    input               wrrst_n,
    input               rdclk,
    input               rdrst_n,
    input               wren,
    input [DSIZE-1:0]   wrdata,
    input [ASIZE-1:0]   wraddr,
    input [ASIZE-1:0]   rdaddr,
    input               insertion,
    output [DSIZE-1:0]  rddata
);

function integer clog2;
   input [31:0] value;  // Input variable
   for (clog2=0; value>0; clog2=clog2+1) 
   value = value>>'d1;
endfunction

localparam DEPTH = 1 << ASIZE;
localparam NUM_FIRST_STAGE_FLOP_INPUTS = 8; // First stage pipeline mux is always fixed to 8-to-1 mux
localparam NUM_FIRST_STAGE_FLOP_INPUTS_CLOG2 = clog2(NUM_FIRST_STAGE_FLOP_INPUTS - 1); // Expects 3
localparam NUM_FIRST_STAGE_FLOP = DEPTH >> NUM_FIRST_STAGE_FLOP_INPUTS_CLOG2; // Div by 8

reg [DSIZE-1:0] fifomem [0:DEPTH-1];
reg [DSIZE-1:0] fifomem_s1 [0:NUM_FIRST_STAGE_FLOP-1];
reg [ASIZE-NUM_FIRST_STAGE_FLOP_INPUTS_CLOG2-1:0] rdaddr_s1;

wire [NUM_FIRST_STAGE_FLOP_INPUTS_CLOG2-1:0]  rdaddr_pre_s1;

genvar i;
generate
    for (i=0; i<DEPTH; i=i+1) begin : fifomem_loop
        always @(posedge wrclk or negedge wrrst_n) begin
            if (!wrrst_n)
                fifomem[i] <= {DSIZE{1'b0}};
            else if (wren & (wraddr == i))
                fifomem[i] <= wrdata;
        end
    end
endgenerate

assign rdaddr_pre_s1 = rdaddr[NUM_FIRST_STAGE_FLOP_INPUTS_CLOG2-1:0];


// Read path of the fifomem (read domain)
generate
    for (i=0; i<NUM_FIRST_STAGE_FLOP; i=i+1) begin : fifomem_1_loop
        always @(posedge rdclk or negedge rdrst_n) begin
            if (!rdrst_n)
                fifomem_s1[i] <= {DSIZE{1'b0}};
            else if (insertion)
                fifomem_s1[i] <= fifomem_s1[i];
            else
                fifomem_s1[i] <= fifomem[rdaddr_pre_s1 + (i*NUM_FIRST_STAGE_FLOP_INPUTS)];
        end
    end
endgenerate

always @(posedge rdclk or negedge rdrst_n) begin
    if (!rdrst_n)
        rdaddr_s1 <= {(ASIZE-NUM_FIRST_STAGE_FLOP_INPUTS_CLOG2){1'b0}};
    else if (insertion)
        rdaddr_s1 <= rdaddr_s1;
    else
        rdaddr_s1 <= rdaddr[ASIZE-1:NUM_FIRST_STAGE_FLOP_INPUTS_CLOG2];
end

assign rddata = fifomem_s1[rdaddr_s1];

endmodule


