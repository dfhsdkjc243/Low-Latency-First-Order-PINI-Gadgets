module GF16MultipSboxDouble_trivialopt_l4_PINI(
input clk,
input [7:0] gf256in0,
input [7:0] gf256in1,
input [3:0] gf16out0,
input [3:0] gf16out1,
input [11:0] ran,
output [7:0] x0y0z0t0m0n0p0q0,
output [7:0] x1y1z1t1m1n1p1q1
);


wire msb_a0,msb_b0,msb_c0,msb_d0,lsb_a0,lsb_b0,lsb_c0,lsb_d0,e0,f0,g0,h0;
wire msb_a1,msb_b1,msb_c1,msb_d1,lsb_a1,lsb_b1,lsb_c1,lsb_d1,e1,f1,g1,h1;
wire r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11;

assign {msb_d0, msb_c0, msb_b0, msb_a0, lsb_d0, lsb_c0, lsb_b0, lsb_a0} = gf256in0;
assign {msb_d1, msb_c1, msb_b1, msb_a1, lsb_d1, lsb_c1, lsb_b1, lsb_a1} = gf256in1;

assign {h0,g0,f0,e0} = gf16out0;
assign {h1,g1,f1,e1} = gf16out1;
assign {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11} = ran;

reg reg_0_0, reg_0_1, reg_0_2, reg_0_3, reg_0_4, reg_0_5, reg_0_6, reg_0_7, reg_0_8, reg_0_9, reg_0_10, reg_0_11, reg_0_12, reg_0_13, reg_0_14, reg_0_15, reg_0_16, reg_0_17, reg_0_18, reg_0_19, reg_0_20, reg_0_21, reg_0_22, reg_0_23, reg_0_24, reg_0_25, reg_0_26, reg_0_27, reg_0_28, reg_0_29, reg_0_30, reg_0_31, reg_0_32, reg_0_33, reg_0_34, reg_0_35, reg_0_36, reg_0_37, reg_0_38, reg_0_39, reg_0_40, reg_0_41, reg_0_42, reg_0_43, reg_0_44, reg_0_45, reg_0_46, reg_0_47, reg_0_48, reg_0_49, reg_0_50, reg_0_51, reg_0_52, reg_0_53, reg_0_54, reg_0_55, reg_0_56, reg_0_57, reg_0_58, reg_0_59, reg_0_60, reg_0_61, reg_0_62, reg_0_63, reg_0_64, reg_0_65, reg_0_66, reg_0_67, reg_0_68, reg_0_69, reg_0_70, reg_0_71, reg_0_72, reg_0_73, reg_0_74, reg_0_75, reg_0_76, reg_0_77, reg_0_78, reg_0_79, reg_0_80, reg_0_81, reg_0_82, reg_0_83, reg_0_84, reg_0_85, reg_0_86, reg_0_87, reg_0_88, reg_0_89, reg_0_90, reg_0_91, reg_0_92, reg_0_93, reg_0_94, reg_0_95, reg_0_96, reg_0_97, reg_0_98, reg_0_99, reg_0_100, reg_0_101, reg_0_102, reg_0_103, reg_0_104, reg_0_105, reg_0_106, reg_0_107, reg_0_108, reg_0_109, reg_0_110, reg_0_111, reg_0_112, reg_0_113, reg_0_114, reg_0_115, reg_0_116, reg_0_117, reg_0_118, reg_0_119, reg_0_120, reg_0_121, reg_0_122, reg_0_123, reg_0_124, reg_0_125, reg_0_126, reg_0_127, reg_0_128, reg_0_129, reg_0_130, reg_0_131, reg_0_132, reg_0_133, reg_0_134, reg_0_135, reg_0_136, reg_0_137;
reg reg_1_0, reg_1_1, reg_1_2, reg_1_3, reg_1_4, reg_1_5, reg_1_6, reg_1_7, reg_1_8, reg_1_9, reg_1_10, reg_1_11, reg_1_12, reg_1_13, reg_1_14, reg_1_15, reg_1_16, reg_1_17, reg_1_18, reg_1_19, reg_1_20, reg_1_21, reg_1_22, reg_1_23, reg_1_24, reg_1_25, reg_1_26, reg_1_27, reg_1_28, reg_1_29, reg_1_30, reg_1_31, reg_1_32, reg_1_33, reg_1_34, reg_1_35, reg_1_36, reg_1_37, reg_1_38, reg_1_39, reg_1_40, reg_1_41, reg_1_42, reg_1_43, reg_1_44, reg_1_45, reg_1_46, reg_1_47, reg_1_48, reg_1_49, reg_1_50, reg_1_51, reg_1_52, reg_1_53, reg_1_54, reg_1_55, reg_1_56, reg_1_57, reg_1_58, reg_1_59, reg_1_60, reg_1_61, reg_1_62, reg_1_63, reg_1_64, reg_1_65, reg_1_66, reg_1_67, reg_1_68, reg_1_69, reg_1_70, reg_1_71, reg_1_72, reg_1_73, reg_1_74, reg_1_75, reg_1_76, reg_1_77, reg_1_78, reg_1_79, reg_1_80, reg_1_81, reg_1_82, reg_1_83, reg_1_84, reg_1_85, reg_1_86, reg_1_87, reg_1_88, reg_1_89, reg_1_90, reg_1_91, reg_1_92, reg_1_93, reg_1_94, reg_1_95, reg_1_96, reg_1_97, reg_1_98, reg_1_99, reg_1_100, reg_1_101, reg_1_102, reg_1_103, reg_1_104, reg_1_105, reg_1_106, reg_1_107, reg_1_108, reg_1_109, reg_1_110, reg_1_111, reg_1_112, reg_1_113, reg_1_114, reg_1_115, reg_1_116, reg_1_117, reg_1_118, reg_1_119, reg_1_120, reg_1_121, reg_1_122, reg_1_123, reg_1_124, reg_1_125, reg_1_126, reg_1_127, reg_1_128, reg_1_129, reg_1_130, reg_1_131, reg_1_132, reg_1_133, reg_1_134, reg_1_135, reg_1_136, reg_1_137;

wire cdxi0m = g0 ^ r2        ;
wire cdxi1m = h1 ^ r3            ;
wire cdxi2m = g1 ^ r2            ;
wire cdxi3m = e0 ^ r0            ;
wire cdxi4m = h0 ^ r3            ;
wire cdxi5m = f1 ^ r1            ;
wire cdxi6m = e1 ^ r0            ;
wire cdxi7m = f0 ^ r1            ;
wire cdxii0m = msb_c0&(cdxi0m)   ;
wire cdxii1m = lsb_a0&(cdxi4m)   ;
wire cdxii2m = msb_a0&(cdxi0m)   ;
wire cdxii3m = lsb_b1&(cdxi2m)   ;
wire cdxii4m = lsb_a1&(cdxi6m)   ;
wire cdxii5m = msb_d1&(cdxi1m)   ;
wire cdxii6m = msb_d0&(cdxi0m)   ;
wire cdxii7m = lsb_b0&(cdxi7m)   ;
wire cdxii8m = msb_d0&(cdxi3m)   ;
wire cdxii9m = lsb_d1&(cdxi6m)   ;
wire cdxii10m = lsb_c1&(cdxi1m)  ;
wire cdxii11m = msb_b1&(cdxi1m)  ;
wire cdxii12m = msb_b0&(cdxi0m)  ;
wire cdxii13m = lsb_c1&(cdxi6m)  ;
wire cdxii14m = lsb_c0&(cdxi7m)  ;
wire cdxii15m = msb_d1&(cdxi6m)  ;
wire cdxii16m = lsb_d0&(cdxi4m)  ;
wire cdxii17m = msb_a0&(cdxi3m)  ;
wire cdxii18m = lsb_b1&(cdxi5m)  ;
wire cdxii19m = msb_c0&(cdxi4m)  ;
wire cdxii20m = msb_d1&(cdxi5m)  ;
wire cdxii21m = msb_a1&(cdxi2m)  ;
wire cdxii22m = msb_b0&(cdxi7m)  ;
wire cdxii23m = msb_b1&(cdxi6m)  ;
wire cdxii24m = lsb_b1&(cdxi6m)  ;
wire cdxii25m = msb_c1&(cdxi2m)  ;
wire cdxii26m = lsb_d0&(cdxi3m)  ;
wire cdxii27m = lsb_d0&(cdxi0m)  ;
wire cdxii28m = lsb_c0&(cdxi3m)  ;
wire cdxii29m = msb_d0&(cdxi4m)  ;
wire cdxii30m = msb_a0&(cdxi7m)  ;
wire cdxii31m = lsb_a1&(cdxi1m)  ;
wire cdxii32m = msb_a0&(cdxi4m)  ;
wire cdxii33m = lsb_d0&(cdxi7m)  ;
wire cdxii34m = lsb_b0&(cdxi4m)  ;
wire cdxii35m = msb_d1&(cdxi2m)  ;
wire cdxii36m = lsb_d1&(cdxi5m)  ;
wire cdxii37m = lsb_c0&(cdxi4m)  ;
wire cdxii38m = lsb_a1&(cdxi2m)  ;
wire cdxii39m = msb_c1&(cdxi1m)  ;
wire cdxii40m = lsb_b0&(cdxi3m)  ;
wire cdxii41m = lsb_a0&(cdxi0m)  ;
wire cdxii42m = lsb_b1&(cdxi1m)  ;
wire cdxii43m = lsb_a0&(cdxi3m)  ;
wire cdxii44m = msb_b0&(cdxi4m)  ;
wire cdxii45m = lsb_c0&(cdxi0m)  ;
wire cdxii46m = msb_b0&(cdxi3m)  ;
wire cdxii47m = lsb_d1&(cdxi1m)  ;
wire cdxii48m = lsb_d1&(cdxi2m)  ;
wire cdxii49m = lsb_a1&(cdxi5m)  ;
wire cdxii50m = msb_a1&(cdxi6m)  ;
wire cdxii51m = lsb_c1&(cdxi2m)  ;
wire cdxii52m = msb_c1&(cdxi6m)  ;
wire cdxii53m = msb_a1&(cdxi5m)  ;
wire cdxii54m = lsb_a0&(cdxi7m)  ;
wire cdxii55m = msb_b1&(cdxi5m)  ;
wire cdxii56m = msb_c0&(cdxi7m)  ;
wire cdxii57m = msb_b1&(cdxi2m)  ;
wire cdxii58m = msb_c0&(cdxi3m)  ;
wire cdxii59m = msb_c1&(cdxi5m)  ;
wire cdxii60m = lsb_c1&(cdxi5m)  ;
wire cdxii61m = msb_d0&(cdxi7m)  ;
wire cdxii62m = lsb_b0&(cdxi0m)  ;
wire cdxii63m = msb_a1&(cdxi1m)  ;
wire cdxiii0m = lsb_b0 ^ lsb_d0;
wire cdxiii1m = lsb_a0 ^ lsb_b0 ^ lsb_c0 ^ lsb_d0;
wire cdxiii2m = lsb_b0 ^ lsb_c0;
wire cdxiii3m = msb_b0 ^ msb_d0;
wire cdxiii4m = msb_a0 ^ msb_b0 ^ msb_c0 ^ msb_d0;
wire cdxiii5m = msb_b0 ^ msb_c0;
wire cdxiii6m = lsb_b1 ^ lsb_d1;
wire cdxiii7m = lsb_a1 ^ lsb_b1 ^ lsb_c1 ^ lsb_d1;
wire cdxiii8m = lsb_b1 ^ lsb_c1;
wire cdxiii9m = msb_b1 ^ msb_d1;
wire cdxiii10m = msb_a1 ^ msb_b1 ^ msb_c1 ^ msb_d1;
wire cdxiii11m = msb_b1 ^ msb_c1;


wire cdxiiii0m = reg_0_0&((reg_0_8));
wire cdxiiii1m = reg_0_0&((reg_0_9));
wire cdxiiii2m = reg_0_0&((reg_0_11));
wire cdxiiii3m = reg_0_1&((reg_0_9));
wire cdxiiii4m = reg_0_1&((reg_0_11));
wire cdxiiii5m = reg_0_2&((reg_0_8));
wire cdxiiii6m = reg_0_2&((reg_0_9));
wire cdxiiii7m = reg_0_2&((reg_0_10));
wire cdxiiii8m = reg_0_3&((reg_0_9));
wire cdxiiii9m = reg_0_1&((reg_0_8));
wire cdxiiii10m = reg_0_3&((reg_0_8));
wire cdxiiii11m = reg_0_3&((reg_0_10));
wire cdxiiii12m = reg_0_0&((reg_0_10));
wire cdxiiii13m = reg_0_2&((reg_0_11));
wire cdxiiii14m = reg_0_3&((reg_0_11));
wire cdxiiii15m = reg_0_1&((reg_0_10));

wire cdxiiii16m = reg_0_4&((reg_0_8));
wire cdxiiii17m = reg_0_4&((reg_0_9));
wire cdxiiii18m = reg_0_4&((reg_0_11));
wire cdxiiii19m = reg_0_5&((reg_0_9));
wire cdxiiii20m = reg_0_5&((reg_0_11));
wire cdxiiii21m = reg_0_6&((reg_0_8));
wire cdxiiii22m = reg_0_6&((reg_0_9));
wire cdxiiii23m = reg_0_6&((reg_0_10));
wire cdxiiii24m = reg_0_7&((reg_0_9));
wire cdxiiii25m = reg_0_5&((reg_0_8));
wire cdxiiii26m = reg_0_7&((reg_0_8));
wire cdxiiii27m = reg_0_7&((reg_0_10));
wire cdxiiii28m = reg_0_4&((reg_0_10));
wire cdxiiii29m = reg_0_6&((reg_0_11));
wire cdxiiii30m = reg_0_7&((reg_0_11));
wire cdxiiii31m = reg_0_5&((reg_0_10));


wire cdxiiii32m = reg_1_0&((reg_1_8));
wire cdxiiii33m = reg_1_0&((reg_1_9));
wire cdxiiii34m = reg_1_0&((reg_1_11));
wire cdxiiii35m = reg_1_1&((reg_1_9));
wire cdxiiii36m = reg_1_1&((reg_1_11));
wire cdxiiii37m = reg_1_2&((reg_1_8));
wire cdxiiii38m = reg_1_2&((reg_1_9));
wire cdxiiii39m = reg_1_2&((reg_1_10));
wire cdxiiii40m = reg_1_3&((reg_1_9));
wire cdxiiii41m = reg_1_1&((reg_1_8));
wire cdxiiii42m = reg_1_3&((reg_1_8));
wire cdxiiii43m = reg_1_3&((reg_1_10));
wire cdxiiii44m = reg_1_0&((reg_1_10));
wire cdxiiii45m = reg_1_2&((reg_1_11));
wire cdxiiii46m = reg_1_3&((reg_1_11));
wire cdxiiii47m = reg_1_1&((reg_1_10));

wire cdxiiii48m = reg_1_4&((reg_1_8));
wire cdxiiii49m = reg_1_4&((reg_1_9));
wire cdxiiii50m = reg_1_4&((reg_1_11));
wire cdxiiii51m = reg_1_5&((reg_1_9));
wire cdxiiii52m = reg_1_5&((reg_1_11));
wire cdxiiii53m = reg_1_6&((reg_1_8));
wire cdxiiii54m = reg_1_6&((reg_1_9));
wire cdxiiii55m = reg_1_6&((reg_1_10));
wire cdxiiii56m = reg_1_7&((reg_1_9));
wire cdxiiii57m = reg_1_5&((reg_1_8));
wire cdxiiii58m = reg_1_7&((reg_1_8));
wire cdxiiii59m = reg_1_7&((reg_1_10));
wire cdxiiii60m = reg_1_4&((reg_1_10));
wire cdxiiii61m = reg_1_6&((reg_1_11));
wire cdxiiii62m = reg_1_7&((reg_1_11));
wire cdxiiii63m = reg_1_5&((reg_1_10));




always @(posedge clk) begin


	reg_0_0 <= lsb_a0;
	reg_0_1 <= lsb_b0;
	reg_0_2 <= lsb_c0;
	reg_0_3 <= lsb_d0;
	reg_0_4 <= msb_a0;
	reg_0_5 <= msb_b0;
	reg_0_6 <= msb_c0;
	reg_0_7 <= msb_d0;

	reg_0_8 <= cdxi6m;
	reg_0_9 <= cdxi5m;
	reg_0_10 <= cdxi2m;
	reg_0_11 <= cdxi1m;
	
	reg_0_12 <= cdxiii0m ^ cdxii43m ^ cdxii54m ^ cdxii1m ^ cdxii7m ^ cdxii34m ^ cdxii28m ^ cdxii14m ^ cdxii45m ^ cdxii33m ^ r4;
	reg_0_13 <= cdxiii1m ^ cdxii54m ^ cdxii1m ^ cdxii40m ^ cdxii14m ^ cdxii26m ^ cdxii27m ^ r5;
	reg_0_14 <= cdxiii2m ^ cdxii43m ^ cdxii54m ^ cdxii41m ^ cdxii7m ^ cdxii28m ^ cdxii37m ^ cdxii26m ^ cdxii33m ^ cdxii27m ^ cdxii16m ^ r6;
	reg_0_15 <= lsb_a0 ^ cdxiii0m ^ cdxii54m ^ cdxii40m ^ cdxii62m ^ cdxii28m ^ cdxii14m ^ cdxii45m ^ cdxii37m ^ cdxii33m ^ cdxii27m ^ r7;
	
	reg_0_16 <= cdxiii3m ^ cdxii17m ^ cdxii30m ^ cdxii32m ^ cdxii22m ^ cdxii44m ^ cdxii58m ^ cdxii56m ^ cdxii0m ^ cdxii61m ^ r8;
	reg_0_17 <= cdxiii4m ^ cdxii30m ^ cdxii32m ^ cdxii46m ^ cdxii56m ^ cdxii8m ^ cdxii6m ^ r9;
	reg_0_18 <= cdxiii5m ^ cdxii17m ^ cdxii30m ^ cdxii2m ^ cdxii22m ^ cdxii58m ^ cdxii19m ^ cdxii8m ^ cdxii61m ^ cdxii6m ^ cdxii29m ^ r10;
	reg_0_19 <= msb_a0 ^ cdxiii3m ^ cdxii30m ^ cdxii46m ^ cdxii12m ^ cdxii58m ^ cdxii56m ^ cdxii0m ^ cdxii19m ^ cdxii61m ^ cdxii6m ^ r11;





	reg_1_0 <= lsb_a1;
	reg_1_1 <= lsb_b1;
	reg_1_2 <= lsb_c1;
	reg_1_3 <= lsb_d1;
	reg_1_4 <= msb_a1;
	reg_1_5 <= msb_b1;
	reg_1_6 <= msb_c1;
	reg_1_7 <= msb_d1;

	reg_1_8 <= cdxi3m;
	reg_1_9 <= cdxi7m;
	reg_1_10 <= cdxi0m;
	reg_1_11 <= cdxi4m;
	
	reg_1_12 <= cdxiii6m ^ cdxii4m ^ cdxii49m ^ cdxii31m ^ cdxii18m ^ cdxii42m ^ cdxii13m ^ cdxii60m ^ cdxii51m ^ cdxii36m ^ r4;
	reg_1_13 <= cdxiii7m ^ cdxii49m ^ cdxii31m ^ cdxii24m ^ cdxii60m ^ cdxii9m ^ cdxii48m ^ r5;
	reg_1_14 <= cdxiii8m ^ cdxii4m ^ cdxii49m ^ cdxii38m ^ cdxii18m ^ cdxii13m ^ cdxii10m ^ cdxii9m ^ cdxii36m ^ cdxii48m ^ cdxii47m ^ r6;
	reg_1_15 <= lsb_a1 ^ cdxiii6m ^ cdxii49m ^ cdxii24m ^ cdxii3m ^ cdxii13m ^ cdxii60m ^ cdxii51m ^ cdxii10m ^ cdxii36m ^ cdxii48m ^ r7;
	
	reg_1_16 <= cdxiii9m ^ cdxii50m ^ cdxii53m ^ cdxii63m ^ cdxii55m ^ cdxii11m ^ cdxii52m ^ cdxii59m ^ cdxii25m ^ cdxii20m ^ r8;
	reg_1_17 <= cdxiii10m ^ cdxii53m ^ cdxii63m ^ cdxii23m ^ cdxii59m ^ cdxii15m ^ cdxii35m ^ r9;
	reg_1_18 <= cdxiii11m ^ cdxii50m ^ cdxii53m ^ cdxii21m ^ cdxii55m ^ cdxii52m ^ cdxii39m ^ cdxii15m ^ cdxii20m ^ cdxii35m ^ cdxii5m ^ r10;
	reg_1_19 <= msb_a1 ^ cdxiii9m ^ cdxii53m ^ cdxii23m ^ cdxii57m ^ cdxii52m ^ cdxii59m ^ cdxii25m ^ cdxii39m ^ cdxii20m ^ cdxii35m ^ r11;




end

assign x0 = cdxiiii0m ^ cdxiiii1m ^ cdxiiii2m ^ cdxiiii3m ^ cdxiiii4m ^ cdxiiii5m ^ cdxiiii6m ^ cdxiiii7m ^ cdxiiii8m ^ reg_0_12;
assign y0 = cdxiiii1m ^ cdxiiii2m ^ cdxiiii9m ^ cdxiiii6m ^ cdxiiii10m ^ cdxiiii11m ^ reg_0_13;
assign z0 = cdxiiii0m ^ cdxiiii1m ^ cdxiiii12m ^ cdxiiii3m ^ cdxiiii5m ^ cdxiiii13m ^ cdxiiii10m ^ cdxiiii8m ^ cdxiiii11m ^ cdxiiii14m ^ reg_0_14;
assign t0 = cdxiiii1m ^ cdxiiii9m ^ cdxiiii15m ^ cdxiiii5m ^ cdxiiii6m ^ cdxiiii7m ^ cdxiiii13m ^ cdxiiii8m ^ cdxiiii11m ^ reg_0_15;

assign m0 = cdxiiii16m ^ cdxiiii17m ^ cdxiiii18m ^ cdxiiii19m ^ cdxiiii20m ^ cdxiiii21m ^ cdxiiii22m ^ cdxiiii23m ^ cdxiiii24m ^ reg_0_16;
assign n0 = cdxiiii17m ^ cdxiiii18m ^ cdxiiii25m ^ cdxiiii22m ^ cdxiiii26m ^ cdxiiii27m ^ reg_0_17;
assign p0 = cdxiiii16m ^ cdxiiii17m ^ cdxiiii28m ^ cdxiiii19m ^ cdxiiii21m ^ cdxiiii29m ^ cdxiiii26m ^ cdxiiii24m ^ cdxiiii27m ^ cdxiiii30m ^ reg_0_18;
assign q0 = cdxiiii17m ^ cdxiiii25m ^ cdxiiii31m ^ cdxiiii21m ^ cdxiiii22m ^ cdxiiii23m ^ cdxiiii29m ^ cdxiiii24m ^ cdxiiii27m ^ reg_0_19;





assign x1 = cdxiiii32m ^ cdxiiii33m ^ cdxiiii34m ^ cdxiiii35m ^ cdxiiii36m ^ cdxiiii37m ^ cdxiiii38m ^ cdxiiii39m ^ cdxiiii40m ^ reg_1_12;
assign y1 = cdxiiii33m ^ cdxiiii34m ^ cdxiiii41m ^ cdxiiii38m ^ cdxiiii42m ^ cdxiiii43m ^ reg_1_13;
assign z1 = cdxiiii32m ^ cdxiiii33m ^ cdxiiii44m ^ cdxiiii35m ^ cdxiiii37m ^ cdxiiii45m ^ cdxiiii42m ^ cdxiiii40m ^ cdxiiii43m ^ cdxiiii46m ^ reg_1_14;
assign t1 = cdxiiii33m ^ cdxiiii41m ^ cdxiiii47m ^ cdxiiii37m ^ cdxiiii38m ^ cdxiiii39m ^ cdxiiii45m ^ cdxiiii40m ^ cdxiiii43m ^ reg_1_15;

assign m1 = cdxiiii48m ^ cdxiiii49m ^ cdxiiii50m ^ cdxiiii51m ^ cdxiiii52m ^ cdxiiii53m ^ cdxiiii54m ^ cdxiiii55m ^ cdxiiii56m ^ reg_1_16;
assign n1 = cdxiiii49m ^ cdxiiii50m ^ cdxiiii57m ^ cdxiiii54m ^ cdxiiii58m ^ cdxiiii59m ^ reg_1_17;
assign p1 = cdxiiii48m ^ cdxiiii49m ^ cdxiiii60m ^ cdxiiii51m ^ cdxiiii53m ^ cdxiiii61m ^ cdxiiii58m ^ cdxiiii56m ^ cdxiiii59m ^ cdxiiii62m ^ reg_1_18;
assign q1 = cdxiiii49m ^ cdxiiii57m ^ cdxiiii63m ^ cdxiiii53m ^ cdxiiii54m ^ cdxiiii55m ^ cdxiiii61m ^ cdxiiii56m ^ cdxiiii59m ^ reg_1_19;



assign x0y0z0t0m0n0p0q0 = {q0,p0,n0,m0,t0,z0,y0,x0};
assign x1y1z1t1m1n1p1q1 = {q1,p1,n1,m1,t1,z1,y1,x1};



endmodule

