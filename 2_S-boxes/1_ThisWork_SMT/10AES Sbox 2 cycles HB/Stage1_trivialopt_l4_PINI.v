module Stage1_trivialopt_l4_PINI(
input clk,
input [7:0] a0b0c0d0e0f0g0h0,
input [7:0] a1b1c1d1e1f1g1h1,
input [7:0] ran,
output [3:0] x0y0z0t0,
output [3:0] x1y1z1t1
);


wire a0,b0,c0,d0,e0,f0,g0,h0;
wire a1,b1,c1,d1,e1,f1,g1,h1;
wire x0,y0,z0,t0;
wire x1,y1,z1,t1;
wire r0m, r1m, r2m, r3m, r4m, r5m, r6m, r7m;

assign {h0,g0,f0,e0,d0,c0,b0,a0} = a0b0c0d0e0f0g0h0;
assign {h1,g1,f1,e1,d1,c1,b1,a1} = a1b1c1d1e1f1g1h1;
assign {r0m, r1m, r2m, r3m, r4m, r5m, r6m, r7m} = ran;

reg reg_0_0, reg_0_1, reg_0_2, reg_0_3, reg_0_4, reg_0_5, reg_0_6, reg_0_7, reg_0_8, reg_0_9, reg_0_10, reg_0_11, reg_0_12, reg_0_13, reg_0_14, reg_0_15;
reg reg_1_0, reg_1_1, reg_1_2, reg_1_3, reg_1_4, reg_1_5, reg_1_6, reg_1_7, reg_1_8, reg_1_9, reg_1_10, reg_1_11, reg_1_12, reg_1_13, reg_1_14, reg_1_15;


wire cdx_0m = (e1 ^ r0m);
wire cdx_1m = (f1 ^ r1m);
wire cdx_2m = (g1 ^ r2m);
wire cdx_3m = (h1 ^ r3m);
wire cdx_4m = b0 ^ d0 ^ f0 ^ h0;
wire cdx_5m = e0 ^ r0m;
wire cdx_6m = (cdx_5m);
wire cdx_7m = a0&cdx_6m;
wire cdx_8m = (reg_0_8);
wire cdx_9m = (cdx_8m);
wire cdx_10m = reg_0_0&cdx_9m;
wire cdx_11m = g0 ^ r2m;
wire cdx_12m = (cdx_11m);
wire cdx_13m = a0&cdx_12m;
wire cdx_14m = (reg_0_10);
wire cdx_15m = (cdx_14m);
wire cdx_16m = reg_0_0&cdx_15m;
wire cdx_17m = f0 ^ r1m;
wire cdx_18m = (cdx_17m);
wire cdx_19m = b0&cdx_18m;
wire cdx_20m = (reg_0_9);
wire cdx_21m = (cdx_20m);
wire cdx_22m = reg_0_1&cdx_21m;
wire cdx_23m = h0 ^ r3m;
wire cdx_24m = (cdx_23m);
wire cdx_25m = b0&cdx_24m;
wire cdx_26m = (reg_0_11);
wire cdx_27m = (cdx_26m);
wire cdx_28m = reg_0_1&cdx_27m;
wire cdx_29m = c0&cdx_6m;
wire cdx_30m = reg_0_2&cdx_9m;
wire cdx_31m = c0&cdx_12m;
wire cdx_32m = reg_0_2&cdx_15m;
wire cdx_33m = c0&cdx_24m;
wire cdx_34m = reg_0_2&cdx_27m;
wire cdx_35m = d0&cdx_18m;
wire cdx_36m = reg_0_3&cdx_21m;
wire cdx_37m = d0&cdx_12m;
wire cdx_38m = reg_0_3&cdx_15m;
wire cdx_39m = a0 ^ c0 ^ e0 ^ g0;
wire cdx_40m = a0&cdx_18m;
wire cdx_41m = reg_0_0&cdx_21m;
wire cdx_42m = a0&cdx_24m;
wire cdx_43m = reg_0_0&cdx_27m;
wire cdx_44m = b0&cdx_6m;
wire cdx_45m = reg_0_1&cdx_9m;
wire cdx_46m = b0&cdx_12m;
wire cdx_47m = reg_0_1&cdx_15m;
wire cdx_48m = c0&cdx_18m;
wire cdx_49m = reg_0_2&cdx_21m;
wire cdx_50m = d0&cdx_6m;
wire cdx_51m = reg_0_3&cdx_9m;
wire cdx_52m = d0&cdx_24m;
wire cdx_53m = reg_0_3&cdx_27m;
wire cdx_54m = a0 ^ e0;
wire cdx_55m = a0 ^ b0 ^ e0 ^ f0;
wire cdx_56m = b1 ^ d1 ^ f1 ^ h1;
wire cdx_57m = e1 ^ r0m;
wire cdx_58m = a1&cdx_0m;
wire cdx_59m = (reg_1_8);
wire cdx_60m = (cdx_59m);
wire cdx_61m = reg_1_0&cdx_60m;
wire cdx_62m = g1 ^ r2m;
wire cdx_63m = a1&cdx_2m;
wire cdx_64m = (reg_1_10);
wire cdx_65m = (cdx_64m);
wire cdx_66m = reg_1_0&cdx_65m;
wire cdx_67m = f1 ^ r1m;
wire cdx_68m = b1&cdx_1m;
wire cdx_69m = (reg_1_9);
wire cdx_70m = (cdx_69m);
wire cdx_71m = reg_1_1&cdx_70m;
wire cdx_72m = h1 ^ r3m;
wire cdx_73m = b1&cdx_3m;
wire cdx_74m = (reg_1_11);
wire cdx_75m = (cdx_74m);
wire cdx_76m = reg_1_1&cdx_75m;
wire cdx_77m = c1&cdx_0m;
wire cdx_78m = reg_1_2&cdx_60m;
wire cdx_79m = c1&cdx_2m;
wire cdx_80m = reg_1_2&cdx_65m;
wire cdx_81m = c1&cdx_3m;
wire cdx_82m = reg_1_2&cdx_75m;
wire cdx_83m = d1&cdx_1m;
wire cdx_84m = reg_1_3&cdx_70m;
wire cdx_85m = d1&cdx_2m;
wire cdx_86m = reg_1_3&cdx_65m;
wire cdx_87m = a1 ^ c1 ^ e1 ^ g1;
wire cdx_88m = a1&cdx_1m;
wire cdx_89m = reg_1_0&cdx_70m;
wire cdx_90m = a1&cdx_3m;
wire cdx_91m = reg_1_0&cdx_75m;
wire cdx_92m = b1&cdx_0m;
wire cdx_93m = reg_1_1&cdx_60m;
wire cdx_94m = b1&cdx_2m;
wire cdx_95m = reg_1_1&cdx_65m;
wire cdx_96m = c1&cdx_1m;
wire cdx_97m = reg_1_2&cdx_70m;
wire cdx_98m = d1&cdx_0m;
wire cdx_99m = reg_1_3&cdx_60m;
wire cdx_100m = d1&cdx_3m;
wire cdx_101m = reg_1_3&cdx_75m;
wire cdx_102m = a1 ^ e1;
wire cdx_103m = a1 ^ b1 ^ e1 ^ f1;



always @(posedge clk) begin
	reg_0_0 <= a0;
	reg_0_1 <= b0;
	reg_0_2 <= c0;
	reg_0_3 <= d0;
	reg_0_4 <= e0;
	reg_0_5 <= f0;
	reg_0_6 <= g0;
	reg_0_7 <= h0;
	reg_0_8 <= cdx_0m;
	reg_0_9 <= cdx_1m;
	reg_0_10 <= cdx_2m;
	reg_0_11 <= cdx_3m;
	reg_0_12 <= cdx_4m ^ cdx_7m ^ cdx_13m ^ cdx_19m ^ cdx_25m ^ cdx_29m ^ cdx_31m ^ cdx_33m ^ cdx_35m ^ cdx_37m ^ r4m;
	reg_0_13 <= cdx_39m ^ cdx_40m ^ cdx_42m ^ cdx_44m ^ cdx_19m ^ cdx_46m ^ cdx_25m ^ cdx_48m ^ cdx_31m ^ cdx_50m ^ cdx_35m ^ cdx_52m ^ r5m;
	reg_0_14 <= cdx_54m ^ cdx_7m ^ cdx_40m ^ cdx_13m ^ cdx_44m ^ cdx_25m ^ cdx_29m ^ cdx_31m ^ cdx_35m ^ cdx_52m ^ r6m;
	reg_0_15 <= cdx_55m ^ cdx_7m ^ cdx_42m ^ cdx_19m ^ cdx_46m ^ cdx_25m ^ cdx_48m ^ cdx_33m ^ cdx_50m ^ cdx_35m ^ cdx_37m ^ cdx_52m ^ r7m;





	reg_1_0 <= a1;
	reg_1_1 <= b1;
	reg_1_2 <= c1;
	reg_1_3 <= d1;
	reg_1_4 <= e1;
	reg_1_5 <= f1;
	reg_1_6 <= g1;
	reg_1_7 <= h1;
	reg_1_8 <= cdx_6m;
	reg_1_9 <= cdx_18m;
	reg_1_10 <= cdx_12m;
	reg_1_11 <= cdx_24m;
	reg_1_12 <= cdx_56m ^ cdx_58m ^ cdx_63m ^ cdx_68m ^ cdx_73m ^ cdx_77m ^ cdx_79m ^ cdx_81m ^ cdx_83m ^ cdx_85m ^ r4m;
	reg_1_13 <= cdx_87m ^ cdx_88m ^ cdx_90m ^ cdx_92m ^ cdx_68m ^ cdx_94m ^ cdx_73m ^ cdx_96m ^ cdx_79m ^ cdx_98m ^ cdx_83m ^ cdx_100m ^ r5m;
	reg_1_14 <= cdx_102m ^ cdx_58m ^ cdx_88m ^ cdx_63m ^ cdx_92m ^ cdx_73m ^ cdx_77m ^ cdx_79m ^ cdx_83m ^ cdx_100m ^ r6m;
	reg_1_15 <= cdx_103m ^ cdx_58m ^ cdx_90m ^ cdx_68m ^ cdx_94m ^ cdx_73m ^ cdx_96m ^ cdx_81m ^ cdx_98m ^ cdx_83m ^ cdx_85m ^ cdx_100m ^ r7m;
end

assign x0 = cdx_10m ^ cdx_16m ^ cdx_22m ^ cdx_28m ^ cdx_30m ^ cdx_32m ^ cdx_34m ^ cdx_36m ^ cdx_38m ^ reg_0_12;
assign y0 = cdx_41m ^ cdx_43m ^ cdx_45m ^ cdx_22m ^ cdx_47m ^ cdx_28m ^ cdx_49m ^ cdx_32m ^ cdx_51m ^ cdx_36m ^ cdx_53m ^ reg_0_13;
assign z0 = cdx_10m ^ cdx_41m ^ cdx_16m ^ cdx_45m ^ cdx_28m ^ cdx_30m ^ cdx_32m ^ cdx_36m ^ cdx_53m ^ reg_0_14;
assign t0 = cdx_10m ^ cdx_43m ^ cdx_22m ^ cdx_47m ^ cdx_28m ^ cdx_49m ^ cdx_34m ^ cdx_51m ^ cdx_36m ^ cdx_38m ^ cdx_53m ^ reg_0_15;



assign x1 = cdx_61m ^ cdx_66m ^ cdx_71m ^ cdx_76m ^ cdx_78m ^ cdx_80m ^ cdx_82m ^ cdx_84m ^ cdx_86m ^ reg_1_12;
assign y1 = cdx_89m ^ cdx_91m ^ cdx_93m ^ cdx_71m ^ cdx_95m ^ cdx_76m ^ cdx_97m ^ cdx_80m ^ cdx_99m ^ cdx_84m ^ cdx_101m ^ reg_1_13;
assign z1 = cdx_61m ^ cdx_89m ^ cdx_66m ^ cdx_93m ^ cdx_76m ^ cdx_78m ^ cdx_80m ^ cdx_84m ^ cdx_101m ^ reg_1_14;
assign t1 = cdx_61m ^ cdx_91m ^ cdx_71m ^ cdx_95m ^ cdx_76m ^ cdx_97m ^ cdx_82m ^ cdx_99m ^ cdx_84m ^ cdx_86m ^ cdx_101m ^ reg_1_15;



assign x0y0z0t0 = {t0,z0,y0,x0};
assign x1y1z1t1 = {t1,z1,y1,x1};



endmodule

