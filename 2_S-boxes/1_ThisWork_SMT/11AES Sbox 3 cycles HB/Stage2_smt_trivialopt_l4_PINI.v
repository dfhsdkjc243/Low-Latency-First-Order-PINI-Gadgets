module Stage2_smt_trivialopt_l4_PINI(
input clk,
input [11:0] a0b0c0d0e0f0g0h0i0j0k0l0,
input [11:0] a1b1c1d1e1f1g1h1i1j1k1l1,
input [13:0] ran,
output [9:0] x0y0z0t0m0n0p0q0r0s0,
output [9:0] x1y1z1t1m1n1p1q1r1s1
);


wire a0,b0,c0,d0,e0,f0,g0,h0;
wire a1,b1,c1,d1,e1,f1,g1,h1;
wire x0,y0,z0,t0,m0,n0,p0,q0;
wire x1,y1,z1,t1,m1,n1,p1,q1;
wire i0,j0,k0,l0,u0,v0;
wire i1,j1,k1,l1,u1,v1;
wire r0m, r1m, r2m, r3m, r4m, r5m, r6m, r7m, r8m, r9m, r10m, r11m, r12m, r13m;

assign {v0,u0,l0,k0,h0,g0,f0,e0,d0,c0,b0,a0} = a0b0c0d0e0f0g0h0i0j0k0l0;
assign {v1,u1,l1,k1,h1,g1,f1,e1,d1,c1,b1,a1} = a1b1c1d1e1f1g1h1i1j1k1l1;


assign {j0,i0} = {1^k0^u0^v0, k0^l0^v0};
assign {j1,i1} = {k1^u1^v1, k1^l1^v1};
assign {r0m, r1m, r2m, r3m, r4m, r5m, r6m, r7m, r8m, r9m, r10m, r11m, r12m, r13m} = ran;



reg reg_0_0, reg_0_1, reg_0_2, reg_0_3, reg_0_4, reg_0_5, reg_0_6, reg_0_7, reg_0_8, reg_0_9, reg_0_10, reg_0_11, reg_0_12, reg_0_13, reg_0_14, reg_0_15, reg_0_16, reg_0_17, reg_0_18, reg_0_19, reg_0_20, reg_0_21, reg_0_22, reg_0_23, reg_0_24, reg_0_25, reg_0_26, reg_0_27;
reg reg_1_0, reg_1_1, reg_1_2, reg_1_3, reg_1_4, reg_1_5, reg_1_6, reg_1_7, reg_1_8, reg_1_9, reg_1_10, reg_1_11, reg_1_12, reg_1_13, reg_1_14, reg_1_15, reg_1_16, reg_1_17, reg_1_18, reg_1_19, reg_1_20, reg_1_21, reg_1_22, reg_1_23, reg_1_24, reg_1_25, reg_1_26, reg_1_27;



always @(posedge clk) begin
	reg_0_0 <= a0;
	reg_0_1 <= b0;
	reg_0_2 <= c0;
	reg_0_3 <= d0;
	reg_0_4 <= e0;
	reg_0_5 <= f0;
	reg_0_6 <= g0;
	reg_0_7 <= h0;
	reg_0_8 <= i0;
	reg_0_9 <= j0;
	reg_0_10 <= k0;
	reg_0_11 <= l0;
	reg_0_12 <= u0;
	reg_0_13 <= v0;
	reg_0_14 <= (k1 ^ r0m);
	reg_0_15 <= (l1 ^ r1m);
	reg_0_16 <= (u1 ^ r2m);
	reg_0_17 <= (v1 ^ r3m);
	reg_0_18 <= a0&(k0 ^ r0m) ^ a0&(l0 ^ r1m) ^ a0&(u0 ^ r2m) ^ b0&(k0 ^ r0m) ^ b0&(v0 ^ r3m) ^ c0&(k0 ^ r0m) ^ c0&(u0 ^ r2m) ^ d0&(l0 ^ r1m) ^ d0&(v0 ^ r3m) ^ r4m;
	reg_0_19 <= a0&(k0 ^ r0m) ^ a0&(v0 ^ r3m) ^ b0&(l0 ^ r1m) ^ b0&(u0 ^ r2m) ^ b0&(v0 ^ r3m) ^ c0&(l0 ^ r1m) ^ c0&(v0 ^ r3m) ^ d0&(k0 ^ r0m) ^ d0&(l0 ^ r1m) ^ d0&(u0 ^ r2m) ^ d0&(v0 ^ r3m) ^ r5m;
	reg_0_20 <= a0&(k0 ^ r0m) ^ a0&(u0 ^ r2m) ^ b0&(l0 ^ r1m) ^ b0&(v0 ^ r3m) ^ c0&(k0 ^ r0m) ^ c0&(u0 ^ r2m) ^ c0&(v0 ^ r3m) ^ d0&(l0 ^ r1m) ^ d0&(u0 ^ r2m) ^ r6m;
	reg_0_21 <= a0&(l0 ^ r1m) ^ a0&(v0 ^ r3m) ^ b0&(k0 ^ r0m) ^ b0&(l0 ^ r1m) ^ b0&(u0 ^ r2m) ^ b0&(v0 ^ r3m) ^ c0&(l0 ^ r1m) ^ c0&(u0 ^ r2m) ^ d0&(k0 ^ r0m) ^ d0&(l0 ^ r1m) ^ d0&(v0 ^ r3m) ^ r7m;
	reg_0_22 <= l0 ^ v0 ^ i0&(u0 ^ r2m) ^ j0&(v0 ^ r3m) ^ r8m;
	reg_0_23 <= u0 ^ v0 ^ i0&(k0 ^ r0m) ^ j0&(l0 ^ r1m) ^ r9m;
	reg_0_24 <= e0&(k0 ^ r0m) ^ e0&(l0 ^ r1m) ^ e0&(u0 ^ r2m) ^ f0&(k0 ^ r0m) ^ f0&(v0 ^ r3m) ^ g0&(k0 ^ r0m) ^ g0&(u0 ^ r2m) ^ h0&(l0 ^ r1m) ^ h0&(v0 ^ r3m) ^ r10m;
	reg_0_25 <= e0&(k0 ^ r0m) ^ e0&(v0 ^ r3m) ^ f0&(l0 ^ r1m) ^ f0&(u0 ^ r2m) ^ f0&(v0 ^ r3m) ^ g0&(l0 ^ r1m) ^ g0&(v0 ^ r3m) ^ h0&(k0 ^ r0m) ^ h0&(l0 ^ r1m) ^ h0&(u0 ^ r2m) ^ h0&(v0 ^ r3m) ^ r11m;
	reg_0_26 <= e0&(k0 ^ r0m) ^ e0&(u0 ^ r2m) ^ f0&(l0 ^ r1m) ^ f0&(v0 ^ r3m) ^ g0&(k0 ^ r0m) ^ g0&(u0 ^ r2m) ^ g0&(v0 ^ r3m) ^ h0&(l0 ^ r1m) ^ h0&(u0 ^ r2m) ^ r12m;
	reg_0_27 <= e0&(l0 ^ r1m) ^ e0&(v0 ^ r3m) ^ f0&(k0 ^ r0m) ^ f0&(l0 ^ r1m) ^ f0&(u0 ^ r2m) ^ f0&(v0 ^ r3m) ^ g0&(l0 ^ r1m) ^ g0&(u0 ^ r2m) ^ h0&(k0 ^ r0m) ^ h0&(l0 ^ r1m) ^ h0&(v0 ^ r3m) ^ r13m;





	reg_1_0 <= a1;
	reg_1_1 <= b1;
	reg_1_2 <= c1;
	reg_1_3 <= d1;
	reg_1_4 <= e1;
	reg_1_5 <= f1;
	reg_1_6 <= g1;
	reg_1_7 <= h1;
	reg_1_8 <= i1;
	reg_1_9 <= j1;
	reg_1_10 <= k1;
	reg_1_11 <= l1;
	reg_1_12 <= u1;
	reg_1_13 <= v1;
	reg_1_14 <= (k0 ^ r0m);
	reg_1_15 <= (l0 ^ r1m);
	reg_1_16 <= (u0 ^ r2m);
	reg_1_17 <= (v0 ^ r3m);
	reg_1_18 <= a1&(k1 ^ r0m) ^ a1&(l1 ^ r1m) ^ a1&(u1 ^ r2m) ^ b1&(k1 ^ r0m) ^ b1&(v1 ^ r3m) ^ c1&(k1 ^ r0m) ^ c1&(u1 ^ r2m) ^ d1&(l1 ^ r1m) ^ d1&(v1 ^ r3m) ^ r4m;
	reg_1_19 <= a1&(k1 ^ r0m) ^ a1&(v1 ^ r3m) ^ b1&(l1 ^ r1m) ^ b1&(u1 ^ r2m) ^ b1&(v1 ^ r3m) ^ c1&(l1 ^ r1m) ^ c1&(v1 ^ r3m) ^ d1&(k1 ^ r0m) ^ d1&(l1 ^ r1m) ^ d1&(u1 ^ r2m) ^ d1&(v1 ^ r3m) ^ r5m;
	reg_1_20 <= a1&(k1 ^ r0m) ^ a1&(u1 ^ r2m) ^ b1&(l1 ^ r1m) ^ b1&(v1 ^ r3m) ^ c1&(k1 ^ r0m) ^ c1&(u1 ^ r2m) ^ c1&(v1 ^ r3m) ^ d1&(l1 ^ r1m) ^ d1&(u1 ^ r2m) ^ r6m;
	reg_1_21 <= a1&(l1 ^ r1m) ^ a1&(v1 ^ r3m) ^ b1&(k1 ^ r0m) ^ b1&(l1 ^ r1m) ^ b1&(u1 ^ r2m) ^ b1&(v1 ^ r3m) ^ c1&(l1 ^ r1m) ^ c1&(u1 ^ r2m) ^ d1&(k1 ^ r0m) ^ d1&(l1 ^ r1m) ^ d1&(v1 ^ r3m) ^ r7m;
	reg_1_22 <= l1 ^ v1 ^ i1&(u1 ^ r2m) ^ j1&(v1 ^ r3m) ^ r8m;
	reg_1_23 <= u1 ^ v1 ^ i1&(k1 ^ r0m) ^ j1&(l1 ^ r1m) ^ r9m;
	reg_1_24 <= e1&(k1 ^ r0m) ^ e1&(l1 ^ r1m) ^ e1&(u1 ^ r2m) ^ f1&(k1 ^ r0m) ^ f1&(v1 ^ r3m) ^ g1&(k1 ^ r0m) ^ g1&(u1 ^ r2m) ^ h1&(l1 ^ r1m) ^ h1&(v1 ^ r3m) ^ r10m;
	reg_1_25 <= e1&(k1 ^ r0m) ^ e1&(v1 ^ r3m) ^ f1&(l1 ^ r1m) ^ f1&(u1 ^ r2m) ^ f1&(v1 ^ r3m) ^ g1&(l1 ^ r1m) ^ g1&(v1 ^ r3m) ^ h1&(k1 ^ r0m) ^ h1&(l1 ^ r1m) ^ h1&(u1 ^ r2m) ^ h1&(v1 ^ r3m) ^ r11m;
	reg_1_26 <= e1&(k1 ^ r0m) ^ e1&(u1 ^ r2m) ^ f1&(l1 ^ r1m) ^ f1&(v1 ^ r3m) ^ g1&(k1 ^ r0m) ^ g1&(u1 ^ r2m) ^ g1&(v1 ^ r3m) ^ h1&(l1 ^ r1m) ^ h1&(u1 ^ r2m) ^ r12m;
	reg_1_27 <= e1&(l1 ^ r1m) ^ e1&(v1 ^ r3m) ^ f1&(k1 ^ r0m) ^ f1&(l1 ^ r1m) ^ f1&(u1 ^ r2m) ^ f1&(v1 ^ r3m) ^ g1&(l1 ^ r1m) ^ g1&(u1 ^ r2m) ^ h1&(k1 ^ r0m) ^ h1&(l1 ^ r1m) ^ h1&(v1 ^ r3m) ^ r13m;
end

assign x0 = reg_0_0&((reg_0_14)) ^ reg_0_0&((reg_0_15)) ^ reg_0_0&((reg_0_16)) ^ reg_0_1&((reg_0_14)) ^ reg_0_1&((reg_0_17)) ^ reg_0_2&((reg_0_14)) ^ reg_0_2&((reg_0_16)) ^ reg_0_3&((reg_0_15)) ^ reg_0_3&((reg_0_17)) ^ reg_0_18;
assign y0 = reg_0_0&((reg_0_14)) ^ reg_0_0&((reg_0_17)) ^ reg_0_1&((reg_0_15)) ^ reg_0_1&((reg_0_16)) ^ reg_0_1&((reg_0_17)) ^ reg_0_2&((reg_0_15)) ^ reg_0_2&((reg_0_17)) ^ reg_0_3&((reg_0_14)) ^ reg_0_3&((reg_0_15)) ^ reg_0_3&((reg_0_16)) ^ reg_0_3&((reg_0_17)) ^ reg_0_19;
assign z0 = reg_0_0&((reg_0_14)) ^ reg_0_0&((reg_0_16)) ^ reg_0_1&((reg_0_15)) ^ reg_0_1&((reg_0_17)) ^ reg_0_2&((reg_0_14)) ^ reg_0_2&((reg_0_16)) ^ reg_0_2&((reg_0_17)) ^ reg_0_3&((reg_0_15)) ^ reg_0_3&((reg_0_16)) ^ reg_0_20;
assign t0 = reg_0_0&((reg_0_15)) ^ reg_0_0&((reg_0_17)) ^ reg_0_1&((reg_0_14)) ^ reg_0_1&((reg_0_15)) ^ reg_0_1&((reg_0_16)) ^ reg_0_1&((reg_0_17)) ^ reg_0_2&((reg_0_15)) ^ reg_0_2&((reg_0_16)) ^ reg_0_3&((reg_0_14)) ^ reg_0_3&((reg_0_15)) ^ reg_0_3&((reg_0_17)) ^ reg_0_21;
assign m0 = reg_0_8&((reg_0_16)) ^ reg_0_9&((reg_0_17)) ^ reg_0_22;
assign n0 = reg_0_8&((reg_0_14)) ^ reg_0_9&((reg_0_15)) ^ reg_0_23;
assign p0 = reg_0_4&((reg_0_14)) ^ reg_0_4&((reg_0_15)) ^ reg_0_4&((reg_0_16)) ^ reg_0_5&((reg_0_14)) ^ reg_0_5&((reg_0_17)) ^ reg_0_6&((reg_0_14)) ^ reg_0_6&((reg_0_16)) ^ reg_0_7&((reg_0_15)) ^ reg_0_7&((reg_0_17)) ^ reg_0_24;
assign q0 = reg_0_4&((reg_0_14)) ^ reg_0_4&((reg_0_17)) ^ reg_0_5&((reg_0_15)) ^ reg_0_5&((reg_0_16)) ^ reg_0_5&((reg_0_17)) ^ reg_0_6&((reg_0_15)) ^ reg_0_6&((reg_0_17)) ^ reg_0_7&((reg_0_14)) ^ reg_0_7&((reg_0_15)) ^ reg_0_7&((reg_0_16)) ^ reg_0_7&((reg_0_17)) ^ reg_0_25;
assign r0 = reg_0_4&((reg_0_14)) ^ reg_0_4&((reg_0_16)) ^ reg_0_5&((reg_0_15)) ^ reg_0_5&((reg_0_17)) ^ reg_0_6&((reg_0_14)) ^ reg_0_6&((reg_0_16)) ^ reg_0_6&((reg_0_17)) ^ reg_0_7&((reg_0_15)) ^ reg_0_7&((reg_0_16)) ^ reg_0_26;
assign s0 = reg_0_4&((reg_0_15)) ^ reg_0_4&((reg_0_17)) ^ reg_0_5&((reg_0_14)) ^ reg_0_5&((reg_0_15)) ^ reg_0_5&((reg_0_16)) ^ reg_0_5&((reg_0_17)) ^ reg_0_6&((reg_0_15)) ^ reg_0_6&((reg_0_16)) ^ reg_0_7&((reg_0_14)) ^ reg_0_7&((reg_0_15)) ^ reg_0_7&((reg_0_17)) ^ reg_0_27;



assign x1 = reg_1_0&((reg_1_14)) ^ reg_1_0&((reg_1_15)) ^ reg_1_0&((reg_1_16)) ^ reg_1_1&((reg_1_14)) ^ reg_1_1&((reg_1_17)) ^ reg_1_2&((reg_1_14)) ^ reg_1_2&((reg_1_16)) ^ reg_1_3&((reg_1_15)) ^ reg_1_3&((reg_1_17)) ^ reg_1_18;
assign y1 = reg_1_0&((reg_1_14)) ^ reg_1_0&((reg_1_17)) ^ reg_1_1&((reg_1_15)) ^ reg_1_1&((reg_1_16)) ^ reg_1_1&((reg_1_17)) ^ reg_1_2&((reg_1_15)) ^ reg_1_2&((reg_1_17)) ^ reg_1_3&((reg_1_14)) ^ reg_1_3&((reg_1_15)) ^ reg_1_3&((reg_1_16)) ^ reg_1_3&((reg_1_17)) ^ reg_1_19;
assign z1 = reg_1_0&((reg_1_14)) ^ reg_1_0&((reg_1_16)) ^ reg_1_1&((reg_1_15)) ^ reg_1_1&((reg_1_17)) ^ reg_1_2&((reg_1_14)) ^ reg_1_2&((reg_1_16)) ^ reg_1_2&((reg_1_17)) ^ reg_1_3&((reg_1_15)) ^ reg_1_3&((reg_1_16)) ^ reg_1_20;
assign t1 = reg_1_0&((reg_1_15)) ^ reg_1_0&((reg_1_17)) ^ reg_1_1&((reg_1_14)) ^ reg_1_1&((reg_1_15)) ^ reg_1_1&((reg_1_16)) ^ reg_1_1&((reg_1_17)) ^ reg_1_2&((reg_1_15)) ^ reg_1_2&((reg_1_16)) ^ reg_1_3&((reg_1_14)) ^ reg_1_3&((reg_1_15)) ^ reg_1_3&((reg_1_17)) ^ reg_1_21;
assign m1 = reg_1_8&((reg_1_16)) ^ reg_1_9&((reg_1_17)) ^ reg_1_22;
assign n1 = reg_1_8&((reg_1_14)) ^ reg_1_9&((reg_1_15)) ^ reg_1_23;
assign p1 = reg_1_4&((reg_1_14)) ^ reg_1_4&((reg_1_15)) ^ reg_1_4&((reg_1_16)) ^ reg_1_5&((reg_1_14)) ^ reg_1_5&((reg_1_17)) ^ reg_1_6&((reg_1_14)) ^ reg_1_6&((reg_1_16)) ^ reg_1_7&((reg_1_15)) ^ reg_1_7&((reg_1_17)) ^ reg_1_24;
assign q1 = reg_1_4&((reg_1_14)) ^ reg_1_4&((reg_1_17)) ^ reg_1_5&((reg_1_15)) ^ reg_1_5&((reg_1_16)) ^ reg_1_5&((reg_1_17)) ^ reg_1_6&((reg_1_15)) ^ reg_1_6&((reg_1_17)) ^ reg_1_7&((reg_1_14)) ^ reg_1_7&((reg_1_15)) ^ reg_1_7&((reg_1_16)) ^ reg_1_7&((reg_1_17)) ^ reg_1_25;
assign r1 = reg_1_4&((reg_1_14)) ^ reg_1_4&((reg_1_16)) ^ reg_1_5&((reg_1_15)) ^ reg_1_5&((reg_1_17)) ^ reg_1_6&((reg_1_14)) ^ reg_1_6&((reg_1_16)) ^ reg_1_6&((reg_1_17)) ^ reg_1_7&((reg_1_15)) ^ reg_1_7&((reg_1_16)) ^ reg_1_26;
assign s1 = reg_1_4&((reg_1_15)) ^ reg_1_4&((reg_1_17)) ^ reg_1_5&((reg_1_14)) ^ reg_1_5&((reg_1_15)) ^ reg_1_5&((reg_1_16)) ^ reg_1_5&((reg_1_17)) ^ reg_1_6&((reg_1_15)) ^ reg_1_6&((reg_1_16)) ^ reg_1_7&((reg_1_14)) ^ reg_1_7&((reg_1_15)) ^ reg_1_7&((reg_1_17)) ^ reg_1_27;



assign x0y0z0t0m0n0p0q0r0s0 = {s0,r0,q0,p0,n0,m0,t0,z0,y0,x0};
assign x1y1z1t1m1n1p1q1r1s1 = {s1,r1,q1,p1,n1,m1,t1,z1,y1,x1};



endmodule
