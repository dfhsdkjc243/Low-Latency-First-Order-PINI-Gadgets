
module GF256_INV(
input clk,
input [29:0] ran,
input [7:0] gf256in0,
input [7:0] gf256in1,
output [7:0] gf256out0,
output [7:0] gf256out1



);

wire [3:0] ssmout0, ssmout1;
reg [7:0] gf256in0_d1, gf256in1_d1;
// reg [7:0] gf256in0_d2, gf256in1_d2;

wire [9:0] stage2_out0, stage2_out1;

wire [7:0] gf256out0_tmp, gf256out1_tmp;


Stage1_trivialopt_l4_PINI ssm(
.clk(clk),
.a0b0c0d0e0f0g0h0(gf256in0),
.a1b1c1d1e1f1g1h1(gf256in1),
.ran(ran[29:22]),
.x0y0z0t0(ssmout0),
.x1y1z1t1(ssmout1)

);

// Stage23_trivialopt_l4_PINI stage23(
// Stage23_2cycles_smt_trivialopt_l4_PINI stage23(
Stage23_smt_trivialopt_l4_PINI stage23(
.clk(clk),
.a0b0c0d0e0f0g0h0i0j0k0l0({ssmout0, gf256in0_d1}),
.a1b1c1d1e1f1g1h1i1j1k1l1({ssmout1, gf256in1_d1}),
.ran(ran[21:0]),
.x0y0z0t0m0n0p0q0(gf256out0),
.x1y1z1t1m1n1p1q1(gf256out1)

);

always @(posedge clk) begin
	gf256in0_d1 <= gf256in0;
	gf256in1_d1 <= gf256in1;

	// gf256in0_d2 <= gf256in0_d1;
	// gf256in1_d2 <= gf256in1_d1;


end



// assign gf256out0 = {gf256out0_tmp[3:0], gf256out0_tmp[7:4]};
// assign gf256out1 = {gf256out1_tmp[3:0], gf256out1_tmp[7:4]};




// wire [3:0] debug1;
// wire [9:0] debug2;
// wire [7:0] debug3;

// assign debug1 = ssmout0 ^ ssmout1;
// assign debug2 = stage2_out0 ^ stage2_out1;
// assign debug3 = gf256out0 ^ gf256out1;








endmodule