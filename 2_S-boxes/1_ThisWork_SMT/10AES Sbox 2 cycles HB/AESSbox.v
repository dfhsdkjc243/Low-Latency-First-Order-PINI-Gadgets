
module AESSbox (
input clk,
input [29:0] ran,
input [7:0] a0b0c0d0e0f0g0h0,
input [7:0] a1b1c1d1e1f1g1h1,
output [7:0] x0y0z0t0m0n0p0q0,
output [7:0] x1y1z1t1m1n1p1q1


);

wire [7:0]  aiout0, aiout1,gf256invout0,gf256invout1;
 
Affine_input ai(
.clk(clk),
.ain0(a0b0c0d0e0f0g0h0),
.ain1(a1b1c1d1e1f1g1h1),
.aout0(aiout0),
.aout1(aiout1)

);

GF256_INV gf256inv(
.clk(clk),
.gf256in0(aiout0),
.gf256in1(aiout1),
.ran(ran),
.gf256out0(gf256invout0),
.gf256out1(gf256invout1)
);

Affine_output ao(
.clk(clk),
.aoin0(gf256invout0),
.aoin1(gf256invout1),
.aoout0(x0y0z0t0m0n0p0q0),
.aoout1(x1y1z1t1m1n1p1q1)

);




endmodule