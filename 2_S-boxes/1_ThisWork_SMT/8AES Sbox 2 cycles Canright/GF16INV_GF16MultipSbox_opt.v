module GF16INV_GF16MultipSbox_opt(
input clk,
input [7:0] a0b0c0d0e0f0g0h0,
input [7:0] a1b1c1d1e1f1g1h1,
input [3:0] i0j0k0l0,
input [3:0] i1j1k1l1,
input [21:0] ran,
output [7:0] x0y0z0t0m0n0p0q0,
output [7:0] x1y1z1t1m1n1p1q1
);


wire a0,b0,c0,d0,e0,f0,g0,h0;
wire a1,b1,c1,d1,e1,f1,g1,h1;
wire x0,y0,z0,t0,m0,n0,p0,q0;
wire x1,y1,z1,t1,m1,n1,p1,q1;
wire i0,j0,k0,l0;
wire i1,j1,k1,l1;
wire r0m, r1m, r2m, r3m, r4m, r5m, r6m, r7m, r8m, r9m, r10m, r11m, r12m, r13m, r14m, r15m, r16m, r17m, r18m, r19m, r20m, r21m;

assign {h0,g0,f0,e0,d0,c0,b0,a0} = a0b0c0d0e0f0g0h0;
assign {h1,g1,f1,e1,d1,c1,b1,a1} = a1b1c1d1e1f1g1h1;
assign {l0,k0,j0,i0} = i0j0k0l0;
assign {l1,k1,j1,i1} = i1j1k1l1;
assign {r0m, r1m, r2m, r3m, r4m, r5m, r6m, r7m, r8m, r9m, r10m, r11m, r12m, r13m, r14m, r15m, r16m, r17m, r18m, r19m, r20m, r21m} = ran;

reg reg_0_0, reg_0_1, reg_0_2, reg_0_3, reg_0_4, reg_0_5, reg_0_6, reg_0_7, reg_0_8, reg_0_9, reg_0_10, reg_0_11, reg_0_12, reg_0_13, reg_0_14, reg_0_15, reg_0_16, reg_0_17, reg_0_18, reg_0_19, reg_0_20, reg_0_21, reg_0_22, reg_0_23, reg_0_24, reg_0_25, reg_0_26, reg_0_27, reg_0_28, reg_0_29, reg_0_30, reg_0_31, reg_0_32, reg_0_33;
reg reg_1_0, reg_1_1, reg_1_2, reg_1_3, reg_1_4, reg_1_5, reg_1_6, reg_1_7, reg_1_8, reg_1_9, reg_1_10, reg_1_11, reg_1_12, reg_1_13, reg_1_14, reg_1_15, reg_1_16, reg_1_17, reg_1_18, reg_1_19, reg_1_20, reg_1_21, reg_1_22, reg_1_23, reg_1_24, reg_1_25, reg_1_26, reg_1_27, reg_1_28, reg_1_29, reg_1_30, reg_1_31, reg_1_32, reg_1_33;

// wire a = a0 ^ a1;
// wire b = b0 ^ b1;
// wire c = c0 ^ c1;
// wire d = d0 ^ d1;
// wire e = e0 ^ e1;
// wire f = f0 ^ f1;
// wire g = g0 ^ g1;
// wire h = h0 ^ h1;

// wire i = i0 ^ i1;
// wire j = j0 ^ j1;
// wire k = k0 ^ k1;
// wire l = l0 ^ l1;


// assign x0=		  b ^ d ^ (a & i) ^ (a & l) ^ (b & j) ^ (c & i) ^ (c & l) ^ (d & j) ^ (d & k) ^ (d & l) ^ (a & i & k) ^ (a & i & l) ^ (a & j & k) ^ (a & j & l) ^ (a & k & l) ^ (b & i & k) ^ (b & i & l) ^ (c & i & k) ^ (d & i & k) ^ (d & j & l) ^ (a & i & j & k) ^ (a & i & j & l) ^ (a & i & k & l) ^ (a & j & k & l) ^ (b & i & j & l) ^ (b & i & k & l) ^ (b & j & k & l) ^ (c & i & j & k) ^ (c & i & j & l) ^ (c & j & k & l) ^ (d & i & j & l) ^ (d & i & k & l);
// assign y0=        a ^ b ^ c ^ d ^ (a & j) ^ (b & i) ^ (b & j) ^ (b & l) ^ (c & j) ^ (c & k) ^ (c & l) ^ (d & i) ^ (d & j) ^ (d & k) ^ (a & i & k) ^ (a & i & l) ^ (b & j & k) ^ (b & j & l) ^ (b & k & l) ^ (c & i & k) ^ (c & j & l) ^ (d & j & l) ^ (a & i & j & l) ^ (a & i & k & l) ^ (a & j & k & l) ^ (b & i & j & k) ^ (c & i & j & l) ^ (c & i & k & l) ^ (d & i & j & k) ^ (d & i & k & l) ^ (d & j & k & l);
// assign z0=        b ^ c ^ (a & i) ^ (a & l) ^ (b & j) ^ (b & k) ^ (b & l) ^ (c & i) ^ (c & j) ^ (c & k) ^ (d & i) ^ (d & k) ^ (a & i & k) ^ (b & i & k) ^ (b & j & l) ^ (c & i & l) ^ (c & j & k) ^ (c & k & l) ^ (d & i & k) ^ (d & i & l) ^ (d & j & l) ^ (a & i & j & k) ^ (a & i & j & l) ^ (a & j & k & l) ^ (b & i & j & l) ^ (b & i & k & l) ^ (c & i & j & k) ^ (c & j & k & l) ^ (d & i & j & k) ^ (d & i & j & l);
// assign t0=        a ^ b ^ d ^ (a & j) ^ (a & k) ^ (a & l) ^ (b & i) ^ (b & j) ^ (b & k) ^ (c & i) ^ (c & k) ^ (d & j) ^ (a & i & k) ^ (a & j & l) ^ (b & j & l) ^ (c & i & k) ^ (c & i & l) ^ (c & j & l) ^ (d & i & k) ^ (d & j & k) ^ (d & j & l) ^ (d & k & l) ^ (a & i & j & l) ^ (a & i & k & l) ^ (b & i & j & k) ^ (b & i & k & l) ^ (b & j & k & l) ^ (c & i & j & k) ^ (c & i & j & l) ^ (d & i & j & l) ^ (d & j & k & l);
// assign m0=        f ^ h ^ (e & i) ^ (e & l) ^ (f & j) ^ (g & i) ^ (g & l) ^ (h & j) ^ (h & k) ^ (h & l) ^ (e & i & k) ^ (e & i & l) ^ (e & j & k) ^ (e & j & l) ^ (e & k & l) ^ (f & i & k) ^ (f & i & l) ^ (g & i & k) ^ (h & i & k) ^ (h & j & l) ^ (e & i & j & k) ^ (e & i & j & l) ^ (e & i & k & l) ^ (e & j & k & l) ^ (f & i & j & l) ^ (f & i & k & l) ^ (f & j & k & l) ^ (g & i & j & k) ^ (g & i & j & l) ^ (g & j & k & l) ^ (h & i & j & l) ^ (h & i & k & l);
// assign n0=        e ^ f ^ g ^ h ^ (e & j) ^ (f & i) ^ (f & j) ^ (f & l) ^ (g & j) ^ (g & k) ^ (g & l) ^ (h & i) ^ (h & j) ^ (h & k) ^ (e & i & k) ^ (e & i & l) ^ (f & j & k) ^ (f & j & l) ^ (f & k & l) ^ (g & i & k) ^ (g & j & l) ^ (h & j & l) ^ (e & i & j & l) ^ (e & i & k & l) ^ (e & j & k & l) ^ (f & i & j & k) ^ (g & i & j & l) ^ (g & i & k & l) ^ (h & i & j & k) ^ (h & i & k & l) ^ (h & j & k & l);
// assign p0=        f ^ g ^ (e & i) ^ (e & l) ^ (f & j) ^ (f & k) ^ (f & l) ^ (g & i) ^ (g & j) ^ (g & k) ^ (h & i) ^ (h & k) ^ (e & i & k) ^ (f & i & k) ^ (f & j & l) ^ (g & i & l) ^ (g & j & k) ^ (g & k & l) ^ (h & i & k) ^ (h & i & l) ^ (h & j & l) ^ (e & i & j & k) ^ (e & i & j & l) ^ (e & j & k & l) ^ (f & i & j & l) ^ (f & i & k & l) ^ (g & i & j & k) ^ (g & j & k & l) ^ (h & i & j & k) ^ (h & i & j & l);
// assign q0=        e ^ f ^ h ^ (e & j) ^ (e & k) ^ (e & l) ^ (f & i) ^ (f & j) ^ (f & k) ^ (g & i) ^ (g & k) ^ (h & j) ^ (e & i & k) ^ (e & j & l) ^ (f & j & l) ^ (g & i & k) ^ (g & i & l) ^ (g & j & l) ^ (h & i & k) ^ (h & j & k) ^ (h & j & l) ^ (h & k & l) ^ (e & i & j & l) ^ (e & i & k & l) ^ (f & i & j & k) ^ (f & i & k & l) ^ (f & j & k & l) ^ (g & i & j & k) ^ (g & i & j & l) ^ (h & i & j & l) ^ (h & j & k & l);


// assign x1=	0;
// assign y1=  0;
// assign z1=  0;
// assign t1=  0;
// assign m1=  0;
// assign n1=  0;
// assign p1=  0;
// assign q1=  0;


wire cdx_0m = (l0);
wire cdx_1m = (i0 ^ j0 ^ k0);
wire cdx_2m = (k0);
wire cdx_3m = (j0 ^ k0);
wire cdx_4m = (l1);
wire cdx_5m = (i1 ^ j1 ^ k1);
wire cdx_6m = (k1);
wire cdx_7m = (j1 ^ k1);
wire cdx_8m = (l1 ^ r0m);
wire cdx_9m = (cdx_5m ^ r1m);
wire cdx_10m = (k1 ^ r2m);
wire cdx_11m = (cdx_7m ^ r3m);
wire cdx_12m = (l0 ^ r0m);
wire cdx_13m = (cdx_1m ^ r1m);
wire cdx_14m = (k0 ^ r2m);
wire cdx_15m = (cdx_3m ^ r3m);
wire cdx_16m = cdx_6m&cdx_7m;
wire cdx_17m = cdx_6m&cdx_5m;
wire cdx_18m = cdx_4m&cdx_7m;
wire cdx_19m = cdx_4m&cdx_6m;
wire cdx_20m = cdx_4m&cdx_5m;
wire cdx_21m = cdx_7m&cdx_5m;
wire cdx_22m = cdx_16m&cdx_5m;
wire cdx_23m = cdx_18m&cdx_5m;
wire cdx_24m = cdx_4m&cdx_17m;
wire cdx_25m = cdx_7m&cdx_19m;
wire cdx_26m = cdx_2m&cdx_3m;
wire cdx_27m = cdx_2m&cdx_1m;
wire cdx_28m = cdx_0m&cdx_3m;
wire cdx_29m = cdx_0m&cdx_2m;
wire cdx_30m = cdx_0m&cdx_1m;
wire cdx_31m = cdx_3m&cdx_1m;
wire cdx_32m = cdx_26m&cdx_1m;
wire cdx_33m = cdx_28m&cdx_1m;
wire cdx_34m = cdx_0m&cdx_27m;
wire cdx_35m = cdx_3m&cdx_29m;
wire cdx_36m = cdx_16m ^ r4m;
wire cdx_37m = cdx_17m ^ r5m;
wire cdx_38m = cdx_18m ^ r6m;
wire cdx_39m = cdx_19m ^ r7m;
wire cdx_40m = cdx_20m ^ r8m;
wire cdx_41m = cdx_21m ^ r9m;
wire cdx_42m = cdx_22m ^ r10m;
wire cdx_43m = cdx_23m ^ r11m;
wire cdx_44m = cdx_24m ^ r12m;
wire cdx_45m = cdx_25m ^ r13m;
wire cdx_46m = cdx_26m ^ r4m;
wire cdx_47m = cdx_27m ^ r5m;
wire cdx_48m = cdx_28m ^ r6m;
wire cdx_49m = cdx_29m ^ r7m;
wire cdx_50m = cdx_30m ^ r8m;
wire cdx_51m = cdx_31m ^ r9m;
wire cdx_52m = cdx_32m ^ r10m;
wire cdx_53m = cdx_33m ^ r11m;
wire cdx_54m = cdx_34m ^ r12m;
wire cdx_55m = cdx_35m ^ r13m;
wire cdx_120m = (cdx_26m ^ cdx_2m&r3m ^ cdx_3m&r2m ^ r4m);
wire cdx_121m = (cdx_27m ^ cdx_2m&r1m ^ cdx_1m&r2m ^ r5m);
wire cdx_122m = (cdx_28m ^ cdx_0m&r3m ^ cdx_3m&r0m ^ r6m);
wire cdx_123m = (cdx_1m&cdx_26m ^ cdx_1m&cdx_2m&r3m ^ cdx_1m&cdx_3m&r2m ^ cdx_26m&r1m ^ cdx_1m&r4m ^ cdx_2m&r9m ^ cdx_3m&r5m ^ r10m);
wire cdx_124m = (cdx_29m ^ cdx_0m&r2m ^ cdx_2m&r0m ^ r7m);
wire cdx_125m = (cdx_1m&cdx_28m ^ cdx_1m&cdx_0m&r3m ^ cdx_1m&cdx_3m&r0m ^ cdx_28m&r1m ^ cdx_1m&r6m ^ cdx_0m&r9m ^ cdx_3m&r8m ^ r11m);
wire cdx_126m = (cdx_1m&cdx_29m ^ cdx_1m&cdx_0m&r2m ^ cdx_1m&cdx_2m&r0m ^ cdx_29m&r1m ^ cdx_1m&r7m ^ cdx_0m&r5m ^ cdx_2m&r8m ^ r12m);
wire cdx_127m = (cdx_30m ^ cdx_0m&r1m ^ cdx_1m&r0m ^ r8m);
wire cdx_128m = (cdx_35m ^ cdx_3m&cdx_0m&r2m ^ cdx_3m&cdx_2m&r0m ^ cdx_29m&r3m ^ cdx_3m&r7m ^ cdx_0m&r4m ^ cdx_2m&r6m ^ r13m);
wire cdx_129m = (cdx_16m ^ cdx_6m&r3m ^ cdx_7m&r2m ^ r4m);
wire cdx_130m = (cdx_17m ^ cdx_6m&r1m ^ cdx_5m&r2m ^ r5m);
wire cdx_131m = (cdx_18m ^ cdx_4m&r3m ^ cdx_7m&r0m ^ r6m);
wire cdx_132m = (cdx_5m&cdx_16m ^ cdx_5m&cdx_6m&r3m ^ cdx_5m&cdx_7m&r2m ^ cdx_16m&r1m ^ cdx_5m&r4m ^ cdx_6m&r9m ^ cdx_7m&r5m ^ r10m);
wire cdx_133m = (cdx_19m ^ cdx_4m&r2m ^ cdx_6m&r0m ^ r7m);
wire cdx_134m = (cdx_5m&cdx_18m ^ cdx_5m&cdx_4m&r3m ^ cdx_5m&cdx_7m&r0m ^ cdx_18m&r1m ^ cdx_5m&r6m ^ cdx_4m&r9m ^ cdx_7m&r8m ^ r11m);
wire cdx_135m = (cdx_5m&cdx_19m ^ cdx_5m&cdx_4m&r2m ^ cdx_5m&cdx_6m&r0m ^ cdx_19m&r1m ^ cdx_5m&r7m ^ cdx_4m&r5m ^ cdx_6m&r8m ^ r12m);
wire cdx_136m = (cdx_20m ^ cdx_4m&r1m ^ cdx_5m&r0m ^ r8m);
wire cdx_137m = (cdx_25m ^ cdx_7m&cdx_4m&r2m ^ cdx_7m&cdx_6m&r0m ^ cdx_19m&r3m ^ cdx_7m&r7m ^ cdx_4m&r4m ^ cdx_6m&r6m ^ r13m);
wire cdx_138m = (reg_0_10&reg_0_15 ^ reg_0_11&reg_0_14 ^ reg_0_16);
wire cdx_139m = ((reg_0_10)&reg_0_13 ^ (reg_0_9)&reg_0_14 ^ reg_0_17);
wire cdx_140m = (reg_0_8&reg_0_15 ^ reg_0_11&reg_0_12 ^ reg_0_18);
wire cdx_141m = (reg_0_9&reg_0_10&reg_0_15 ^ reg_0_9&reg_0_11&reg_0_14 ^ reg_0_10&reg_0_11&reg_0_13 ^ reg_0_9&reg_0_16 ^ reg_0_10&reg_0_21 ^ reg_0_11&reg_0_17 ^ reg_0_22);
wire cdx_142m = (reg_0_10&reg_0_13 ^ reg_0_9&reg_0_14 ^ reg_0_17);
wire cdx_143m = (reg_0_8&reg_0_14 ^ reg_0_10&reg_0_12 ^ reg_0_19);
wire cdx_144m = (reg_0_9&reg_0_8&reg_0_15 ^ reg_0_9&reg_0_11&reg_0_12 ^ reg_0_8&reg_0_11&reg_0_13 ^ reg_0_9&reg_0_18 ^ reg_0_8&reg_0_21 ^ reg_0_11&reg_0_20 ^ reg_0_23);
wire cdx_145m = (reg_0_9&reg_0_8&reg_0_14 ^ reg_0_9&reg_0_10&reg_0_12 ^ reg_0_8&reg_0_10&reg_0_13 ^ reg_0_9&reg_0_19 ^ reg_0_8&reg_0_17 ^ reg_0_10&reg_0_20 ^ reg_0_24);
wire cdx_146m = (reg_0_8&reg_0_13 ^ reg_0_9&reg_0_12 ^ reg_0_20);
wire cdx_147m = (reg_0_11&reg_0_8&reg_0_14 ^ reg_0_11&reg_0_10&reg_0_12 ^ reg_0_8&reg_0_10&reg_0_15 ^ reg_0_11&reg_0_19 ^ reg_0_8&reg_0_16 ^ reg_0_10&reg_0_18 ^ reg_0_25);
wire cdx_148m = (reg_1_10&reg_1_15 ^ reg_1_11&reg_1_14 ^ reg_1_16);
wire cdx_149m = ((reg_1_10)&reg_1_13 ^ (reg_1_9)&reg_1_14 ^ reg_1_17);
wire cdx_150m = (reg_1_8&reg_1_15 ^ reg_1_11&reg_1_12 ^ reg_1_18);
wire cdx_151m = (reg_1_9&reg_1_10&reg_1_15 ^ reg_1_9&reg_1_11&reg_1_14 ^ reg_1_10&reg_1_11&reg_1_13 ^ reg_1_9&reg_1_16 ^ reg_1_10&reg_1_21 ^ reg_1_11&reg_1_17 ^ reg_1_22);
wire cdx_152m = (reg_1_10&reg_1_13 ^ reg_1_9&reg_1_14 ^ reg_1_17);
wire cdx_153m = (reg_1_8&reg_1_14 ^ reg_1_10&reg_1_12 ^ reg_1_19);
wire cdx_154m = (reg_1_9&reg_1_8&reg_1_15 ^ reg_1_9&reg_1_11&reg_1_12 ^ reg_1_8&reg_1_11&reg_1_13 ^ reg_1_9&reg_1_18 ^ reg_1_8&reg_1_21 ^ reg_1_11&reg_1_20 ^ reg_1_23);
wire cdx_155m = (reg_1_9&reg_1_8&reg_1_14 ^ reg_1_9&reg_1_10&reg_1_12 ^ reg_1_8&reg_1_10&reg_1_13 ^ reg_1_9&reg_1_19 ^ reg_1_8&reg_1_17 ^ reg_1_10&reg_1_20 ^ reg_1_24);
wire cdx_156m = (reg_1_8&reg_1_13 ^ reg_1_9&reg_1_12 ^ reg_1_20);
wire cdx_157m = (reg_1_11&reg_1_8&reg_1_14 ^ reg_1_11&reg_1_10&reg_1_12 ^ reg_1_8&reg_1_10&reg_1_15 ^ reg_1_11&reg_1_19 ^ reg_1_8&reg_1_16 ^ reg_1_10&reg_1_18 ^ reg_1_25);






wire tmp_comp0_e = (cdx_12m ^ cdx_13m ^ cdx_120m ^ cdx_121m ^ cdx_122m ^ cdx_123m);
wire tmp_comp0_f = (cdx_12m ^ cdx_15m ^ cdx_120m ^ cdx_121m ^ cdx_124m ^ cdx_125m);
wire tmp_comp0_g = (cdx_12m ^ cdx_120m ^ cdx_126m);
wire tmp_comp0_h = (cdx_14m ^ cdx_12m ^ cdx_127m ^ cdx_128m);

wire tmp_reg0_comp0_e = ((reg_0_12) ^ (reg_0_13) ^ cdx_138m ^ cdx_139m ^ cdx_140m ^ cdx_141m);
wire tmp_reg0_comp0_f = ((reg_0_12) ^ (reg_0_15) ^ cdx_138m ^ cdx_142m ^ cdx_143m ^ cdx_144m);
wire tmp_reg0_comp0_g = ((reg_0_12) ^ cdx_138m ^ cdx_145m);
wire tmp_reg0_comp0_h = ((reg_0_14) ^ (reg_0_12) ^ cdx_146m ^ cdx_147m);

wire tmp_comp1_e = (cdx_8m ^ cdx_9m ^ cdx_129m ^ cdx_130m ^ cdx_131m ^ cdx_132m);
wire tmp_comp1_f = (cdx_8m ^ cdx_11m ^ cdx_129m ^ cdx_130m ^ cdx_133m ^ cdx_134m);
wire tmp_comp1_g = (cdx_8m ^ cdx_129m ^ cdx_135m);
wire tmp_comp1_h = (cdx_10m ^ cdx_8m ^ cdx_136m ^ cdx_137m);

wire tmp_reg1_comp1_e = ((reg_1_12) ^ (reg_1_13) ^ cdx_148m ^ cdx_149m ^ cdx_150m ^ cdx_151m);
wire tmp_reg1_comp1_f = ((reg_1_12) ^ (reg_1_15) ^ cdx_148m ^ cdx_152m ^ cdx_153m ^ cdx_154m);
wire tmp_reg1_comp1_g = ((reg_1_12) ^ cdx_148m ^ cdx_155m);
wire tmp_reg1_comp1_h = ((reg_1_14) ^ (reg_1_12) ^ cdx_156m ^ cdx_157m);






wire cdx_56m = a0&tmp_comp0_e;
wire cdx_57m = c0&tmp_comp0_e;
wire cdx_58m = a0&tmp_comp0_f;
wire cdx_59m = b0&tmp_comp0_f;
wire cdx_60m = c0&tmp_comp0_f;
wire cdx_61m = d0&tmp_comp0_f;
wire cdx_62m = c0&tmp_comp0_g;
wire cdx_63m = a0&tmp_comp0_h;
wire cdx_64m = b0&tmp_comp0_h;
wire cdx_65m = b0&tmp_comp0_e;
wire cdx_66m = d0&tmp_comp0_e;
wire cdx_67m = d0&tmp_comp0_g;
wire cdx_68m = a0&tmp_comp0_g;
wire cdx_69m = c0&tmp_comp0_h;
wire cdx_70m = d0&tmp_comp0_h;
wire cdx_71m = b0&tmp_comp0_g;
wire cdx_72m = e0&tmp_comp0_e;
wire cdx_73m = g0&tmp_comp0_e;
wire cdx_74m = e0&tmp_comp0_f;
wire cdx_75m = f0&tmp_comp0_f;
wire cdx_76m = g0&tmp_comp0_f;
wire cdx_77m = h0&tmp_comp0_f;
wire cdx_78m = g0&tmp_comp0_g;
wire cdx_79m = e0&tmp_comp0_h;
wire cdx_80m = f0&tmp_comp0_h;
wire cdx_81m = f0&tmp_comp0_e;
wire cdx_82m = h0&tmp_comp0_e;
wire cdx_83m = h0&tmp_comp0_g;
wire cdx_84m = e0&tmp_comp0_g;
wire cdx_85m = g0&tmp_comp0_h;
wire cdx_86m = h0&tmp_comp0_h;
wire cdx_87m = f0&tmp_comp0_g;
wire cdx_88m = a1&tmp_comp1_e;
wire cdx_89m = c1&tmp_comp1_e;
wire cdx_90m = a1&tmp_comp1_f;
wire cdx_91m = b1&tmp_comp1_f;
wire cdx_92m = c1&tmp_comp1_f;
wire cdx_93m = d1&tmp_comp1_f;
wire cdx_94m = c1&tmp_comp1_g;
wire cdx_95m = a1&tmp_comp1_h;
wire cdx_96m = b1&tmp_comp1_h;
wire cdx_97m = b1&tmp_comp1_e;
wire cdx_98m = d1&tmp_comp1_e;
wire cdx_99m = d1&tmp_comp1_g;
wire cdx_100m = a1&tmp_comp1_g;
wire cdx_101m = c1&tmp_comp1_h;
wire cdx_102m = d1&tmp_comp1_h;
wire cdx_103m = b1&tmp_comp1_g;
wire cdx_104m = e1&tmp_comp1_e;
wire cdx_105m = g1&tmp_comp1_e;
wire cdx_106m = e1&tmp_comp1_f;
wire cdx_107m = f1&tmp_comp1_f;
wire cdx_108m = g1&tmp_comp1_f;
wire cdx_109m = h1&tmp_comp1_f;
wire cdx_110m = g1&tmp_comp1_g;
wire cdx_111m = e1&tmp_comp1_h;
wire cdx_112m = f1&tmp_comp1_h;
wire cdx_113m = f1&tmp_comp1_e;
wire cdx_114m = h1&tmp_comp1_e;
wire cdx_115m = h1&tmp_comp1_g;
wire cdx_116m = e1&tmp_comp1_g;
wire cdx_117m = g1&tmp_comp1_h;
wire cdx_118m = h1&tmp_comp1_h;
wire cdx_119m = f1&tmp_comp1_g;
wire cdx_158m = reg_0_0&tmp_reg0_comp0_e;
wire cdx_159m = reg_0_2&tmp_reg0_comp0_e;
wire cdx_160m = reg_0_0&tmp_reg0_comp0_f;
wire cdx_161m = reg_0_1&tmp_reg0_comp0_f;
wire cdx_162m = reg_0_2&tmp_reg0_comp0_f;
wire cdx_163m = reg_0_3&tmp_reg0_comp0_f;
wire cdx_164m = reg_0_2&tmp_reg0_comp0_g;
wire cdx_165m = reg_0_0&tmp_reg0_comp0_h;
wire cdx_166m = reg_0_1&tmp_reg0_comp0_h;
wire cdx_167m = reg_0_1&tmp_reg0_comp0_e;
wire cdx_168m = reg_0_3&tmp_reg0_comp0_e;
wire cdx_169m = reg_0_3&tmp_reg0_comp0_g;
wire cdx_170m = reg_0_0&tmp_reg0_comp0_g;
wire cdx_171m = reg_0_2&tmp_reg0_comp0_h;
wire cdx_172m = reg_0_3&tmp_reg0_comp0_h;
wire cdx_173m = reg_0_1&tmp_reg0_comp0_g;
wire cdx_174m = reg_0_4&tmp_reg0_comp0_e;
wire cdx_175m = reg_0_6&tmp_reg0_comp0_e;
wire cdx_176m = reg_0_4&tmp_reg0_comp0_f;
wire cdx_177m = reg_0_5&tmp_reg0_comp0_f;
wire cdx_178m = reg_0_6&tmp_reg0_comp0_f;
wire cdx_179m = reg_0_7&tmp_reg0_comp0_f;
wire cdx_180m = reg_0_6&tmp_reg0_comp0_g;
wire cdx_181m = reg_0_4&tmp_reg0_comp0_h;
wire cdx_182m = reg_0_5&tmp_reg0_comp0_h;
wire cdx_183m = reg_0_5&tmp_reg0_comp0_e;
wire cdx_184m = reg_0_7&tmp_reg0_comp0_e;
wire cdx_185m = reg_0_7&tmp_reg0_comp0_g;
wire cdx_186m = reg_0_4&tmp_reg0_comp0_g;
wire cdx_187m = reg_0_6&tmp_reg0_comp0_h;
wire cdx_188m = reg_0_7&tmp_reg0_comp0_h;
wire cdx_189m = reg_0_5&tmp_reg0_comp0_g;
wire cdx_190m = reg_1_0&tmp_reg1_comp1_e;
wire cdx_191m = reg_1_2&tmp_reg1_comp1_e;
wire cdx_192m = reg_1_0&tmp_reg1_comp1_f;
wire cdx_193m = reg_1_1&tmp_reg1_comp1_f;
wire cdx_194m = reg_1_2&tmp_reg1_comp1_f;
wire cdx_195m = reg_1_3&tmp_reg1_comp1_f;
wire cdx_196m = reg_1_2&tmp_reg1_comp1_g;
wire cdx_197m = reg_1_0&tmp_reg1_comp1_h;
wire cdx_198m = reg_1_1&tmp_reg1_comp1_h;
wire cdx_199m = reg_1_1&tmp_reg1_comp1_e;
wire cdx_200m = reg_1_3&tmp_reg1_comp1_e;
wire cdx_201m = reg_1_3&tmp_reg1_comp1_g;
wire cdx_202m = reg_1_0&tmp_reg1_comp1_g;
wire cdx_203m = reg_1_2&tmp_reg1_comp1_h;
wire cdx_204m = reg_1_3&tmp_reg1_comp1_h;
wire cdx_205m = reg_1_1&tmp_reg1_comp1_g;
wire cdx_206m = reg_1_4&tmp_reg1_comp1_e;
wire cdx_207m = reg_1_6&tmp_reg1_comp1_e;
wire cdx_208m = reg_1_4&tmp_reg1_comp1_f;
wire cdx_209m = reg_1_5&tmp_reg1_comp1_f;
wire cdx_210m = reg_1_6&tmp_reg1_comp1_f;
wire cdx_211m = reg_1_7&tmp_reg1_comp1_f;
wire cdx_212m = reg_1_6&tmp_reg1_comp1_g;
wire cdx_213m = reg_1_4&tmp_reg1_comp1_h;
wire cdx_214m = reg_1_5&tmp_reg1_comp1_h;
wire cdx_215m = reg_1_5&tmp_reg1_comp1_e;
wire cdx_216m = reg_1_7&tmp_reg1_comp1_e;
wire cdx_217m = reg_1_7&tmp_reg1_comp1_g;
wire cdx_218m = reg_1_4&tmp_reg1_comp1_g;
wire cdx_219m = reg_1_6&tmp_reg1_comp1_h;
wire cdx_220m = reg_1_7&tmp_reg1_comp1_h;
wire cdx_221m = reg_1_5&tmp_reg1_comp1_g;









always @(posedge clk) begin
	reg_0_0 <= a0;
	reg_0_1 <= b0;
	reg_0_2 <= c0;
	reg_0_3 <= d0;
	reg_0_4 <= e0;
	reg_0_5 <= f0;
	reg_0_6 <= g0;
	reg_0_7 <= h0;
	reg_0_8  <= cdx_0m;
	reg_0_9  <= cdx_1m;
	reg_0_10 <= cdx_2m;
	reg_0_11 <= cdx_3m;
	reg_0_12 <= cdx_8m;
	reg_0_13 <= cdx_9m;
	reg_0_14 <= cdx_10m;
	reg_0_15 <= cdx_11m;
	reg_0_16 <= cdx_36m;
	reg_0_17 <= cdx_37m;
	reg_0_18 <= cdx_38m;
	reg_0_19 <= cdx_39m;
	reg_0_20 <= cdx_40m;
	reg_0_21 <= cdx_41m;
	reg_0_22 <= cdx_42m;
	reg_0_23 <= cdx_43m;
	reg_0_24 <= cdx_44m;
	reg_0_25 <= cdx_45m;
	
	
	
	
	reg_0_26 <= b0 ^ d0 ^ cdx_56m ^ cdx_57m ^ cdx_58m ^ cdx_59m ^ cdx_60m ^ cdx_61m ^ cdx_62m ^ cdx_63m ^ cdx_64m ^ r14m;
	reg_0_27 <= a0 ^ b0 ^ c0 ^ d0 ^ cdx_65m ^ cdx_66m ^ cdx_58m ^ cdx_60m ^ cdx_67m ^ cdx_63m ^ r15m;
	reg_0_28 <= b0 ^ c0 ^ cdx_56m ^ cdx_57m ^ cdx_66m ^ cdx_58m ^ cdx_59m ^ cdx_61m ^ cdx_68m ^ cdx_67m ^ cdx_69m ^ cdx_70m ^ r16m;
	reg_0_29 <= a0 ^ b0 ^ d0 ^ cdx_65m ^ cdx_57m ^ cdx_58m ^ cdx_60m ^ cdx_61m ^ cdx_71m ^ cdx_62m ^ cdx_67m ^ cdx_69m ^ r17m;
	reg_0_30 <= f0 ^ h0 ^ cdx_72m ^ cdx_73m ^ cdx_74m ^ cdx_75m ^ cdx_76m ^ cdx_77m ^ cdx_78m ^ cdx_79m ^ cdx_80m ^ r18m;
	reg_0_31 <= e0 ^ f0 ^ g0 ^ h0 ^ cdx_81m ^ cdx_82m ^ cdx_74m ^ cdx_76m ^ cdx_83m ^ cdx_79m ^ r19m;
	reg_0_32 <= f0 ^ g0 ^ cdx_72m ^ cdx_73m ^ cdx_82m ^ cdx_74m ^ cdx_75m ^ cdx_77m ^ cdx_84m ^ cdx_83m ^ cdx_85m ^ cdx_86m ^ r20m;
	reg_0_33 <= e0 ^ f0 ^ h0 ^ cdx_81m ^ cdx_73m ^ cdx_74m ^ cdx_76m ^ cdx_77m ^ cdx_87m ^ cdx_78m ^ cdx_83m ^ cdx_85m ^ r21m;





	reg_1_0 <= a1;
	reg_1_1 <= b1;
	reg_1_2 <= c1;
	reg_1_3 <= d1;
	reg_1_4 <= e1;
	reg_1_5 <= f1;
	reg_1_6 <= g1;
	reg_1_7 <= h1;
	reg_1_8  <= cdx_4m;
	reg_1_9  <= cdx_5m;
	reg_1_10 <= cdx_6m;
	reg_1_11 <= cdx_7m;
	reg_1_12 <= cdx_12m;
	reg_1_13 <= cdx_13m;
	reg_1_14 <= cdx_14m;
	reg_1_15 <= cdx_15m;
	reg_1_16 <= cdx_46m;
	reg_1_17 <= cdx_47m;
	reg_1_18 <= cdx_48m;
	reg_1_19 <= cdx_49m;
	reg_1_20 <= cdx_50m;
	reg_1_21 <= cdx_51m;
	reg_1_22 <= cdx_52m;
	reg_1_23 <= cdx_53m;
	reg_1_24 <= cdx_54m;
	reg_1_25 <= cdx_55m;
	
	
	reg_1_26 <= b1 ^ d1 ^ cdx_88m ^ cdx_89m ^ cdx_90m ^ cdx_91m ^ cdx_92m ^ cdx_93m ^ cdx_94m ^ cdx_95m ^ cdx_96m ^ r14m;
	reg_1_27 <= a1 ^ b1 ^ c1 ^ d1 ^ cdx_97m ^ cdx_98m ^ cdx_90m ^ cdx_92m ^ cdx_99m ^ cdx_95m ^ r15m;
	reg_1_28 <= b1 ^ c1 ^ cdx_88m ^ cdx_89m ^ cdx_98m ^ cdx_90m ^ cdx_91m ^ cdx_93m ^ cdx_100m ^ cdx_99m ^ cdx_101m ^ cdx_102m ^ r16m;
	reg_1_29 <= a1 ^ b1 ^ d1 ^ cdx_97m ^ cdx_89m ^ cdx_90m ^ cdx_92m ^ cdx_93m ^ cdx_103m ^ cdx_94m ^ cdx_99m ^ cdx_101m ^ r17m;
	reg_1_30 <= f1 ^ h1 ^ cdx_104m ^ cdx_105m ^ cdx_106m ^ cdx_107m ^ cdx_108m ^ cdx_109m ^ cdx_110m ^ cdx_111m ^ cdx_112m ^ r18m;
	reg_1_31 <= e1 ^ f1 ^ g1 ^ h1 ^ cdx_113m ^ cdx_114m ^ cdx_106m ^ cdx_108m ^ cdx_115m ^ cdx_111m ^ r19m;
	reg_1_32 <= f1 ^ g1 ^ cdx_104m ^ cdx_105m ^ cdx_114m ^ cdx_106m ^ cdx_107m ^ cdx_109m ^ cdx_116m ^ cdx_115m ^ cdx_117m ^ cdx_118m ^ r20m;
	reg_1_33 <= e1 ^ f1 ^ h1 ^ cdx_113m ^ cdx_105m ^ cdx_106m ^ cdx_108m ^ cdx_109m ^ cdx_119m ^ cdx_110m ^ cdx_115m ^ cdx_117m ^ r21m;



end

assign x0 = cdx_158m ^  cdx_159m ^  cdx_160m ^  cdx_161m ^  cdx_162m ^  cdx_163m ^  cdx_164m ^  cdx_165m ^  cdx_166m ^ reg_0_26;
assign y0 = cdx_167m ^  cdx_168m ^  cdx_160m ^  cdx_162m ^  cdx_169m ^  cdx_165m ^ reg_0_27;
assign z0 = cdx_158m ^  cdx_159m ^  cdx_168m ^  cdx_160m ^  cdx_161m ^  cdx_163m ^  cdx_170m ^  cdx_169m ^  cdx_171m ^  cdx_172m ^ reg_0_28;
assign t0 = cdx_167m ^  cdx_159m ^  cdx_160m ^  cdx_162m ^  cdx_163m ^  cdx_173m ^  cdx_164m ^  cdx_169m ^  cdx_171m ^ reg_0_29;
assign m0 = cdx_174m ^  cdx_175m ^  cdx_176m ^  cdx_177m ^  cdx_178m ^  cdx_179m ^  cdx_180m ^  cdx_181m ^  cdx_182m ^ reg_0_30;
assign n0 = cdx_183m ^  cdx_184m ^  cdx_176m ^  cdx_178m ^  cdx_185m ^  cdx_181m ^ reg_0_31;
assign p0 = cdx_174m ^  cdx_175m ^  cdx_184m ^  cdx_176m ^  cdx_177m ^  cdx_179m ^  cdx_186m ^  cdx_185m ^  cdx_187m ^  cdx_188m ^ reg_0_32;
assign q0 = cdx_183m ^  cdx_175m ^  cdx_176m ^  cdx_178m ^  cdx_179m ^  cdx_189m ^  cdx_180m ^  cdx_185m ^  cdx_187m ^ reg_0_33;



assign x1 = cdx_190m ^  cdx_191m ^  cdx_192m ^  cdx_193m ^  cdx_194m ^  cdx_195m ^  cdx_196m ^  cdx_197m ^  cdx_198m ^ reg_1_26;
assign y1 = cdx_199m ^  cdx_200m ^  cdx_192m ^  cdx_194m ^  cdx_201m ^  cdx_197m ^ reg_1_27;
assign z1 = cdx_190m ^  cdx_191m ^  cdx_200m ^  cdx_192m ^  cdx_193m ^  cdx_195m ^  cdx_202m ^  cdx_201m ^  cdx_203m ^  cdx_204m ^ reg_1_28;
assign t1 = cdx_199m ^  cdx_191m ^  cdx_192m ^  cdx_194m ^  cdx_195m ^  cdx_205m ^  cdx_196m ^  cdx_201m ^  cdx_203m ^ reg_1_29;
assign m1 = cdx_206m ^  cdx_207m ^  cdx_208m ^  cdx_209m ^  cdx_210m ^  cdx_211m ^  cdx_212m ^  cdx_213m ^  cdx_214m ^ reg_1_30;
assign n1 = cdx_215m ^  cdx_216m ^  cdx_208m ^  cdx_210m ^  cdx_217m ^  cdx_213m ^ reg_1_31;
assign p1 = cdx_206m ^  cdx_207m ^  cdx_216m ^  cdx_208m ^  cdx_209m ^  cdx_211m ^  cdx_218m ^  cdx_217m ^  cdx_219m ^  cdx_220m ^ reg_1_32;
assign q1 = cdx_215m ^  cdx_207m ^  cdx_208m ^  cdx_210m ^  cdx_211m ^  cdx_221m ^  cdx_212m ^  cdx_217m ^  cdx_219m ^ reg_1_33;



assign x0y0z0t0m0n0p0q0 = {q0,p0,n0,m0,t0,z0,y0,x0};
assign x1y1z1t1m1n1p1q1 = {q1,p1,n1,m1,t1,z1,y1,x1};



endmodule


