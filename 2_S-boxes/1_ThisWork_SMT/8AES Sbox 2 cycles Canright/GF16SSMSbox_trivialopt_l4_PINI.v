module GF16SSMSbox_trivialopt_l4_PINI(
input clk,
input [7:0] a0b0c0d0e0f0g0h0,
input [7:0] a1b1c1d1e1f1g1h1,
input [7:0] ran,
output [3:0] x0y0z0t0,
output [3:0] x1y1z1t1
);


wire a0,b0,c0,d0,e0,f0,g0,h0;
wire a1,b1,c1,d1,e1,f1,g1,h1;
wire r0, r1, r2, r3, r4, r5, r6, r7;

assign {h0,g0,f0,e0,d0,c0,b0,a0} = a0b0c0d0e0f0g0h0;
assign {h1,g1,f1,e1,d1,c1,b1,a1} = a1b1c1d1e1f1g1h1;
assign {r0, r1, r2, r3, r4, r5, r6, r7} = ran;

reg reg_0_0, reg_0_1, reg_0_2, reg_0_3, reg_0_4, reg_0_5, reg_0_6, reg_0_7, reg_0_8, reg_0_9, reg_0_10, reg_0_11, reg_0_12, reg_0_13, reg_0_14, reg_0_15, reg_0_16, reg_0_17, reg_0_18, reg_0_19, reg_0_20, reg_0_21, reg_0_22, reg_0_23, reg_0_24, reg_0_25, reg_0_26, reg_0_27, reg_0_28, reg_0_29, reg_0_30, reg_0_31, reg_0_32, reg_0_33, reg_0_34, reg_0_35, reg_0_36, reg_0_37, reg_0_38, reg_0_39, reg_0_40, reg_0_41, reg_0_42, reg_0_43, reg_0_44, reg_0_45, reg_0_46, reg_0_47, reg_0_48, reg_0_49, reg_0_50, reg_0_51, reg_0_52, reg_0_53, reg_0_54, reg_0_55, reg_0_56, reg_0_57, reg_0_58, reg_0_59, reg_0_60, reg_0_61, reg_0_62, reg_0_63, reg_0_64, reg_0_65, reg_0_66, reg_0_67, reg_0_68, reg_0_69, reg_0_70, reg_0_71, reg_0_72, reg_0_73, reg_0_74, reg_0_75, reg_0_76, reg_0_77, reg_0_78, reg_0_79, reg_0_80, reg_0_81, reg_0_82, reg_0_83, reg_0_84, reg_0_85, reg_0_86, reg_0_87, reg_0_88, reg_0_89, reg_0_90, reg_0_91, reg_0_92, reg_0_93, reg_0_94, reg_0_95, reg_0_96, reg_0_97, reg_0_98, reg_0_99, reg_0_100, reg_0_101, reg_0_102, reg_0_103, reg_0_104, reg_0_105, reg_0_106, reg_0_107, reg_0_108, reg_0_109, reg_0_110, reg_0_111, reg_0_112, reg_0_113, reg_0_114, reg_0_115, reg_0_116, reg_0_117, reg_0_118, reg_0_119, reg_0_120, reg_0_121, reg_0_122, reg_0_123, reg_0_124, reg_0_125, reg_0_126, reg_0_127, reg_0_128, reg_0_129, reg_0_130, reg_0_131, reg_0_132, reg_0_133, reg_0_134, reg_0_135, reg_0_136, reg_0_137;
reg reg_1_0, reg_1_1, reg_1_2, reg_1_3, reg_1_4, reg_1_5, reg_1_6, reg_1_7, reg_1_8, reg_1_9, reg_1_10, reg_1_11, reg_1_12, reg_1_13, reg_1_14, reg_1_15, reg_1_16, reg_1_17, reg_1_18, reg_1_19, reg_1_20, reg_1_21, reg_1_22, reg_1_23, reg_1_24, reg_1_25, reg_1_26, reg_1_27, reg_1_28, reg_1_29, reg_1_30, reg_1_31, reg_1_32, reg_1_33, reg_1_34, reg_1_35, reg_1_36, reg_1_37, reg_1_38, reg_1_39, reg_1_40, reg_1_41, reg_1_42, reg_1_43, reg_1_44, reg_1_45, reg_1_46, reg_1_47, reg_1_48, reg_1_49, reg_1_50, reg_1_51, reg_1_52, reg_1_53, reg_1_54, reg_1_55, reg_1_56, reg_1_57, reg_1_58, reg_1_59, reg_1_60, reg_1_61, reg_1_62, reg_1_63, reg_1_64, reg_1_65, reg_1_66, reg_1_67, reg_1_68, reg_1_69, reg_1_70, reg_1_71, reg_1_72, reg_1_73, reg_1_74, reg_1_75, reg_1_76, reg_1_77, reg_1_78, reg_1_79, reg_1_80, reg_1_81, reg_1_82, reg_1_83, reg_1_84, reg_1_85, reg_1_86, reg_1_87, reg_1_88, reg_1_89, reg_1_90, reg_1_91, reg_1_92, reg_1_93, reg_1_94, reg_1_95, reg_1_96, reg_1_97, reg_1_98, reg_1_99, reg_1_100, reg_1_101, reg_1_102, reg_1_103, reg_1_104, reg_1_105, reg_1_106, reg_1_107, reg_1_108, reg_1_109, reg_1_110, reg_1_111, reg_1_112, reg_1_113, reg_1_114, reg_1_115, reg_1_116, reg_1_117, reg_1_118, reg_1_119, reg_1_120, reg_1_121, reg_1_122, reg_1_123, reg_1_124, reg_1_125, reg_1_126, reg_1_127, reg_1_128, reg_1_129, reg_1_130, reg_1_131, reg_1_132, reg_1_133, reg_1_134, reg_1_135, reg_1_136, reg_1_137;


wire cdxi0m = e1 ^ r0;
wire cdxi1m = f1 ^ r1;
wire cdxi2m = g1 ^ r2;
wire cdxi3m = h1 ^ r3;
wire cdxi4m = a0 ^ e0;
wire cdxi5m = e0 ^ r0;
wire cdxi6m = f0 ^ r1;
wire cdxi7m = g0 ^ r2;
wire cdxi8m = h0 ^ r3;
wire cdxi9m = a0&(cdxi5m);
wire cdxi10m = a0&(cdxi6m);
wire cdxi11m = a0&(cdxi7m);
wire cdxi12m = b0&(cdxi5m);
wire cdxi13m = b0&(cdxi8m);
wire cdxi14m = c0&(cdxi5m);
wire cdxi15m = c0&(cdxi7m);
wire cdxi16m = d0&(cdxi6m);
wire cdxi17m = d0&(cdxi8m);
wire cdxi18m = 1 ^ d0 ^ h0;
wire cdxi19m = a0&(cdxi8m);
wire cdxi20m = b0&(cdxi7m);
wire cdxi21m = c0&(cdxi6m);
wire cdxi22m = d0&(cdxi5m);
wire cdxi23m = a0 ^ b0 ^ c0 ^ d0 ^ e0 ^ f0 ^ g0 ^ h0;
wire cdxi24m = c0&(cdxi8m);
wire cdxi25m = d0&(cdxi7m);
wire cdxi26m = b0 ^ d0 ^ f0 ^ h0;
wire cdxi27m = b0&(cdxi6m);

wire cdxi28m = a1 ^ e1;
wire cdxi29m = a1&(cdxi0m);
wire cdxi30m = a1&(cdxi1m);
wire cdxi31m = a1&(cdxi2m);
wire cdxi32m = b1&(cdxi0m);
wire cdxi33m = b1&(cdxi3m);
wire cdxi34m = c1&(cdxi0m);
wire cdxi35m = c1&(cdxi2m);
wire cdxi36m = d1&(cdxi1m);
wire cdxi37m = d1&(cdxi3m);
wire cdxi38m = 0 ^ d1 ^ h1;
wire cdxi39m = a1&(cdxi3m);
wire cdxi40m = b1&(cdxi2m);
wire cdxi41m = c1&(cdxi1m);
wire cdxi42m = d1&(cdxi0m);
wire cdxi43m = a1 ^ b1 ^ c1 ^ d1 ^ e1 ^ f1 ^ g1 ^ h1;
wire cdxi44m = c1&(cdxi3m);
wire cdxi45m = d1&(cdxi2m);
wire cdxi46m = b1 ^ d1 ^ f1 ^ h1;
wire cdxi47m = b1&(cdxi1m);


wire cdxi48m = reg_0_0&((reg_0_4));
wire cdxi49m = reg_0_0&((reg_0_5));
wire cdxi50m = reg_0_0&((reg_0_6));
wire cdxi51m = reg_0_1&((reg_0_4));
wire cdxi52m = reg_0_1&((reg_0_7));
wire cdxi53m = reg_0_2&((reg_0_4));
wire cdxi54m = reg_0_2&((reg_0_6));
wire cdxi55m = reg_0_3&((reg_0_5));
wire cdxi56m = reg_0_3&((reg_0_7));
wire cdxi57m = reg_0_0&((reg_0_7));
wire cdxi58m = reg_0_1&((reg_0_6));
wire cdxi59m = reg_0_2&((reg_0_5));
wire cdxi60m = reg_0_3&((reg_0_4));
wire cdxi61m = reg_0_2&((reg_0_7));
wire cdxi62m = reg_0_3&((reg_0_6));
wire cdxi63m = reg_0_1&((reg_0_5));

wire cdxi64m = reg_1_0&((reg_1_4));
wire cdxi65m = reg_1_0&((reg_1_5));
wire cdxi66m = reg_1_0&((reg_1_6));
wire cdxi67m = reg_1_1&((reg_1_4));
wire cdxi68m = reg_1_1&((reg_1_7));
wire cdxi69m = reg_1_2&((reg_1_4));
wire cdxi70m = reg_1_2&((reg_1_6));
wire cdxi71m = reg_1_3&((reg_1_5));
wire cdxi72m = reg_1_3&((reg_1_7));
wire cdxi73m = reg_1_0&((reg_1_7));
wire cdxi74m = reg_1_1&((reg_1_6));
wire cdxi75m = reg_1_2&((reg_1_5));
wire cdxi76m = reg_1_3&((reg_1_4));
wire cdxi77m = reg_1_2&((reg_1_7));
wire cdxi78m = reg_1_3&((reg_1_6));
wire cdxi79m = reg_1_1&((reg_1_5));


always @(posedge clk) begin
	reg_0_0 <= a0;
	reg_0_1 <= b0;
	reg_0_2 <= c0;
	reg_0_3 <= d0;
	
	
	reg_0_4 <= cdxi0m;
	reg_0_5 <= cdxi1m;
	reg_0_6 <= cdxi2m;
	reg_0_7 <= cdxi3m;
	
	reg_0_8 <= cdxi4m ^ cdxi9m ^ cdxi10m ^ cdxi11m ^ cdxi12m ^ cdxi13m ^ cdxi14m ^ cdxi15m ^ cdxi16m ^ cdxi17m ^ r4;
	reg_0_9 <= cdxi18m ^ cdxi9m ^ cdxi10m ^ cdxi19m ^ cdxi12m ^ cdxi20m ^ cdxi13m ^ cdxi21m ^ cdxi22m ^ cdxi16m ^ r5;
	reg_0_10 <= cdxi23m ^ cdxi9m ^ cdxi10m ^ cdxi11m ^ cdxi19m ^ cdxi12m ^ cdxi20m ^ cdxi14m ^ cdxi21m ^ cdxi24m ^ cdxi22m ^ cdxi25m ^ cdxi17m ^ r6;
	reg_0_11 <= cdxi26m ^ cdxi9m ^ cdxi11m ^ cdxi27m ^ cdxi13m ^ cdxi14m ^ cdxi15m ^ cdxi24m ^ cdxi16m ^ cdxi25m ^ r7;





	reg_1_0 <= a1;
	reg_1_1 <= b1;
	reg_1_2 <= c1;
	reg_1_3 <= d1;


	reg_1_4 <= cdxi5m;
	reg_1_5 <= cdxi6m;
	reg_1_6 <= cdxi7m;
	reg_1_7 <= cdxi8m;
	
	reg_1_8 <= cdxi28m ^ cdxi29m ^ cdxi30m ^ cdxi31m ^ cdxi32m ^ cdxi33m ^ cdxi34m ^ cdxi35m ^ cdxi36m ^ cdxi37m ^ r4;
	reg_1_9 <= cdxi38m ^ cdxi29m ^ cdxi30m ^ cdxi39m ^ cdxi32m ^ cdxi40m ^ cdxi33m ^ cdxi41m ^ cdxi42m ^ cdxi36m ^ r5;
	reg_1_10 <= cdxi43m ^ cdxi29m ^ cdxi30m ^ cdxi31m ^ cdxi39m ^ cdxi32m ^ cdxi40m ^ cdxi34m ^ cdxi41m ^ cdxi44m ^ cdxi42m ^ cdxi45m ^ cdxi37m ^ r6;
	reg_1_11 <= cdxi46m ^ cdxi29m ^ cdxi31m ^ cdxi47m ^ cdxi33m ^ cdxi34m ^ cdxi35m ^ cdxi44m ^ cdxi36m ^ cdxi45m ^ r7;
end

assign x0 = cdxi48m ^ cdxi49m ^ cdxi50m ^ cdxi51m ^ cdxi52m ^ cdxi53m ^ cdxi54m ^ cdxi55m ^ cdxi56m ^ reg_0_8;
assign y0 = cdxi48m ^ cdxi49m ^ cdxi57m ^ cdxi51m ^ cdxi58m ^ cdxi52m ^ cdxi59m ^ cdxi60m ^ cdxi55m ^ reg_0_9;
assign z0 = cdxi48m ^ cdxi49m ^ cdxi50m ^ cdxi57m ^ cdxi51m ^ cdxi58m ^ cdxi53m ^ cdxi59m ^ cdxi61m ^ cdxi60m ^ cdxi62m ^ cdxi56m ^ reg_0_10;
assign t0 = cdxi48m ^ cdxi50m ^ cdxi63m ^ cdxi52m ^ cdxi53m ^ cdxi54m ^ cdxi61m ^ cdxi55m ^ cdxi62m ^ reg_0_11;



assign x1 = cdxi64m ^ cdxi65m ^ cdxi66m ^ cdxi67m ^ cdxi68m ^ cdxi69m ^ cdxi70m ^ cdxi71m ^ cdxi72m ^ reg_1_8;
assign y1 = cdxi64m ^ cdxi65m ^ cdxi73m ^ cdxi67m ^ cdxi74m ^ cdxi68m ^ cdxi75m ^ cdxi76m ^ cdxi71m ^ reg_1_9;
assign z1 = cdxi64m ^ cdxi65m ^ cdxi66m ^ cdxi73m ^ cdxi67m ^ cdxi74m ^ cdxi69m ^ cdxi75m ^ cdxi77m ^ cdxi76m ^ cdxi78m ^ cdxi72m ^ reg_1_10;
assign t1 = cdxi64m ^ cdxi66m ^ cdxi79m ^ cdxi68m ^ cdxi69m ^ cdxi70m ^ cdxi77m ^ cdxi71m ^ cdxi78m ^ reg_1_11;



assign x0y0z0t0 = {t0,z0,y0,x0};
assign x1y1z1t1 = {t1,z1,y1,x1};



endmodule

