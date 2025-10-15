module Stage3_trivialopt_l4_PINI(
input clk,
input [9:0] a0b0c0d0e0f0g0h0i0j0,
input [9:0] a1b1c1d1e1f1g1h1i1j1,
input [9:0] ran,
output [7:0] x0y0z0t0m0n0p0q0,
output [7:0] x1y1z1t1m1n1p1q1
);


wire a0,b0,c0,d0,e0,f0,g0,h0;
wire a1,b1,c1,d1,e1,f1,g1,h1;
wire x0,y0,z0,t0,m0,n0,p0,q0;
wire x1,y1,z1,t1,m1,n1,p1,q1;
wire i0,j0;
wire i1,j1;
wire r0m, r1m, r2m, r3m, r4m, r5m, r6m, r7m, r8m, r9m;

assign {j0,i0,h0,g0,f0,e0,d0,c0,b0,a0} = a0b0c0d0e0f0g0h0i0j0;
assign {j1,i1,h1,g1,f1,e1,d1,c1,b1,a1} = a1b1c1d1e1f1g1h1i1j1;
assign {r0m, r1m, r2m, r3m, r4m, r5m, r6m, r7m, r8m, r9m} = ran;

reg reg_0_0, reg_0_1, reg_0_2, reg_0_3, reg_0_4, reg_0_5, reg_0_6, reg_0_7, reg_0_8, reg_0_9, reg_0_10, reg_0_11, reg_0_12, reg_0_13, reg_0_14, reg_0_15, reg_0_16, reg_0_17, reg_0_18, reg_0_19;
reg reg_1_0, reg_1_1, reg_1_2, reg_1_3, reg_1_4, reg_1_5, reg_1_6, reg_1_7, reg_1_8, reg_1_9, reg_1_10, reg_1_11, reg_1_12, reg_1_13, reg_1_14, reg_1_15, reg_1_16, reg_1_17, reg_1_18, reg_1_19;



wire cdx_0m = (i1 ^ r0m);
wire cdx_1m = (j1 ^ r1m);
wire cdx_2m = j0 ^ r1m;
wire cdx_3m = (cdx_2m);
wire cdx_4m = e0&cdx_3m;
wire cdx_5m = (reg_0_11);
wire cdx_6m = (cdx_5m);
wire cdx_7m = reg_0_4&cdx_6m;
wire cdx_8m = i0 ^ r0m;
wire cdx_9m = (cdx_8m);
wire cdx_10m = f0&cdx_9m;
wire cdx_11m = (reg_0_10);
wire cdx_12m = (cdx_11m);
wire cdx_13m = reg_0_5&cdx_12m;
wire cdx_14m = f0&cdx_3m;
wire cdx_15m = reg_0_5&cdx_6m;
wire cdx_16m = e0&cdx_9m;
wire cdx_17m = reg_0_4&cdx_12m;
wire cdx_18m = g0&cdx_3m;
wire cdx_19m = reg_0_6&cdx_6m;
wire cdx_20m = h0&cdx_9m;
wire cdx_21m = reg_0_7&cdx_12m;
wire cdx_22m = h0&cdx_3m;
wire cdx_23m = reg_0_7&cdx_6m;
wire cdx_24m = g0&cdx_9m;
wire cdx_25m = reg_0_6&cdx_12m;
wire cdx_26m = a0&cdx_3m;
wire cdx_27m = reg_0_0&cdx_6m;
wire cdx_28m = b0&cdx_9m;
wire cdx_29m = reg_0_1&cdx_12m;
wire cdx_30m = b0&cdx_3m;
wire cdx_31m = reg_0_1&cdx_6m;
wire cdx_32m = a0&cdx_9m;
wire cdx_33m = reg_0_0&cdx_12m;
wire cdx_34m = c0&cdx_3m;
wire cdx_35m = reg_0_2&cdx_6m;
wire cdx_36m = d0&cdx_9m;
wire cdx_37m = reg_0_3&cdx_12m;
wire cdx_38m = d0&cdx_3m;
wire cdx_39m = reg_0_3&cdx_6m;
wire cdx_40m = c0&cdx_9m;
wire cdx_41m = reg_0_2&cdx_12m;
wire cdx_42m = j1 ^ r1m;
wire cdx_43m = e1&cdx_1m;
wire cdx_44m = (reg_1_11);
wire cdx_45m = (cdx_44m);
wire cdx_46m = reg_1_4&cdx_45m;
wire cdx_47m = i1 ^ r0m;
wire cdx_48m = f1&cdx_0m;
wire cdx_49m = (reg_1_10);
wire cdx_50m = (cdx_49m);
wire cdx_51m = reg_1_5&cdx_50m;
wire cdx_52m = f1&cdx_1m;
wire cdx_53m = reg_1_5&cdx_45m;
wire cdx_54m = e1&cdx_0m;
wire cdx_55m = reg_1_4&cdx_50m;
wire cdx_56m = g1&cdx_1m;
wire cdx_57m = reg_1_6&cdx_45m;
wire cdx_58m = h1&cdx_0m;
wire cdx_59m = reg_1_7&cdx_50m;
wire cdx_60m = h1&cdx_1m;
wire cdx_61m = reg_1_7&cdx_45m;
wire cdx_62m = g1&cdx_0m;
wire cdx_63m = reg_1_6&cdx_50m;
wire cdx_64m = a1&cdx_1m;
wire cdx_65m = reg_1_0&cdx_45m;
wire cdx_66m = b1&cdx_0m;
wire cdx_67m = reg_1_1&cdx_50m;
wire cdx_68m = b1&cdx_1m;
wire cdx_69m = reg_1_1&cdx_45m;
wire cdx_70m = a1&cdx_0m;
wire cdx_71m = reg_1_0&cdx_50m;
wire cdx_72m = c1&cdx_1m;
wire cdx_73m = reg_1_2&cdx_45m;
wire cdx_74m = d1&cdx_0m;
wire cdx_75m = reg_1_3&cdx_50m;
wire cdx_76m = d1&cdx_1m;
wire cdx_77m = reg_1_3&cdx_45m;
wire cdx_78m = c1&cdx_0m;
wire cdx_79m = reg_1_2&cdx_50m;



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
	reg_0_10 <= cdx_0m;
	reg_0_11 <= cdx_1m;
	reg_0_12 <= cdx_4m ^ cdx_10m ^ cdx_14m ^ r2m;
	reg_0_13 <= cdx_16m ^ cdx_4m ^ cdx_10m ^ r3m;
	reg_0_14 <= cdx_18m ^ cdx_20m ^ cdx_22m ^ r4m;
	reg_0_15 <= cdx_24m ^ cdx_18m ^ cdx_20m ^ r5m;
	reg_0_16 <= cdx_26m ^ cdx_28m ^ cdx_30m ^ r6m;
	reg_0_17 <= cdx_32m ^ cdx_26m ^ cdx_28m ^ r7m;
	reg_0_18 <= cdx_34m ^ cdx_36m ^ cdx_38m ^ r8m;
	reg_0_19 <= cdx_40m ^ cdx_34m ^ cdx_36m ^ r9m;





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
	reg_1_10 <= cdx_9m;
	reg_1_11 <= cdx_3m;
	reg_1_12 <= cdx_43m ^ cdx_48m ^ cdx_52m ^ r2m;
	reg_1_13 <= cdx_54m ^ cdx_43m ^ cdx_48m ^ r3m;
	reg_1_14 <= cdx_56m ^ cdx_58m ^ cdx_60m ^ r4m;
	reg_1_15 <= cdx_62m ^ cdx_56m ^ cdx_58m ^ r5m;
	reg_1_16 <= cdx_64m ^ cdx_66m ^ cdx_68m ^ r6m;
	reg_1_17 <= cdx_70m ^ cdx_64m ^ cdx_66m ^ r7m;
	reg_1_18 <= cdx_72m ^ cdx_74m ^ cdx_76m ^ r8m;
	reg_1_19 <= cdx_78m ^ cdx_72m ^ cdx_74m ^ r9m;
end

assign x0 = cdx_7m ^ cdx_13m ^ cdx_15m ^ reg_0_12;
assign y0 = cdx_17m ^ cdx_7m ^ cdx_13m ^ reg_0_13;
assign z0 = cdx_19m ^ cdx_21m ^ cdx_23m ^ reg_0_14;
assign t0 = cdx_25m ^ cdx_19m ^ cdx_21m ^ reg_0_15;
assign m0 = cdx_27m ^ cdx_29m ^ cdx_31m ^ reg_0_16;
assign n0 = cdx_33m ^ cdx_27m ^ cdx_29m ^ reg_0_17;
assign p0 = cdx_35m ^ cdx_37m ^ cdx_39m ^ reg_0_18;
assign q0 = cdx_41m ^ cdx_35m ^ cdx_37m ^ reg_0_19;



assign x1 = cdx_46m ^ cdx_51m ^ cdx_53m ^ reg_1_12;
assign y1 = cdx_55m ^ cdx_46m ^ cdx_51m ^ reg_1_13;
assign z1 = cdx_57m ^ cdx_59m ^ cdx_61m ^ reg_1_14;
assign t1 = cdx_63m ^ cdx_57m ^ cdx_59m ^ reg_1_15;
assign m1 = cdx_65m ^ cdx_67m ^ cdx_69m ^ reg_1_16;
assign n1 = cdx_71m ^ cdx_65m ^ cdx_67m ^ reg_1_17;
assign p1 = cdx_73m ^ cdx_75m ^ cdx_77m ^ reg_1_18;
assign q1 = cdx_79m ^ cdx_73m ^ cdx_75m ^ reg_1_19;



assign x0y0z0t0m0n0p0q0 = {q0,p0,n0,m0,t0,z0,y0,x0};
assign x1y1z1t1m1n1p1q1 = {q1,p1,n1,m1,t1,z1,y1,x1};



endmodule

