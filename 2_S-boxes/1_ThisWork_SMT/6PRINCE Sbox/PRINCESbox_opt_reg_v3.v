
module PRINCESbox_opt_reg_v3(
input clk,
input [3:0] a0b0c0d0,
input [3:0] a1b1c1d1,
input [9:0] ran,
output [3:0] x0y0z0t0,
output [3:0] x1y1z1t1


);

wire a0,b0,c0,d0,a1,b1,c1,d1;
wire x0,y0,z0,t0,x1,y1,z1,t1;
wire r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;

assign {d0,c0,b0,a0} = a0b0c0d0;
assign {d1,c1,b1,a1} = a1b1c1d1;
assign {r0,r1,r2,r3,r4,r5,r6,r7,r8,r9} = ran;

reg reg0_0,reg0_1,reg0_2,reg0_3,reg0_4,reg0_5,reg0_6,reg0_7,reg0_8,reg0_9,reg0_10,reg0_11,reg0_12,reg0_13,reg0_14,reg0_15,reg0_16,reg0_17,reg0_18;
reg reg1_0,reg1_1,reg1_2,reg1_3,reg1_4,reg1_5,reg1_6,reg1_7,reg1_8,reg1_9,reg1_10,reg1_11,reg1_12,reg1_13,reg1_14,reg1_15,reg1_16,reg1_17,reg1_18;


reg lin_b0_reg         ;
reg lin_abc0_reg       ;
reg lin_bc0_reg        ;
reg lin_1acd0_reg      ;
reg lin_b1_reg         ;
reg lin_abc1_reg       ;
reg lin_bc1_reg        ;
reg lin_1acd1_reg      ;




wire lin_b0 = b0;
wire lin_b1 = b1;
// wire lin_b0_reg = reg0_1;
// wire lin_b1_reg = reg1_1;
wire lin_c0 = c0;
wire lin_c1 = c1;
// wire lin_c0_reg = reg0_2;
// wire lin_c1_reg = reg1_2;
wire lin_d0 = d0;
wire lin_d1 = d1;
// wire lin_d0_reg = reg0_3;
// wire lin_d1_reg = reg1_3;
wire lin_1acd0 = 1 ^ a0 ^ c0 ^ d0;
wire lin_1acd1 = a1 ^ c1 ^ d1;
// wire lin_1acd0_reg = 1 ^ reg0_0 ^ reg0_2 ^ reg0_3;
// wire lin_1acd1_reg = reg1_0 ^ reg1_2 ^ reg1_3;
wire lin_abc0 = a0 ^ b0 ^ c0;
wire lin_abc1 = a1 ^ b1 ^ c1;
// wire lin_abc0_reg = reg0_0 ^ reg0_1 ^ reg0_2;
// wire lin_abc1_reg = reg1_0 ^ reg1_1 ^ reg1_2;
wire lin_bc0 = b0 ^ c0;
wire lin_bc1 = b1 ^ c1;
// wire lin_bc0_reg = reg0_1 ^ reg0_2;
// wire lin_bc1_reg = reg1_1 ^ reg1_2;
wire lin_1bcd0 = 1 ^ b0 ^ c0 ^ d0;
wire lin_1bcd1 = b1 ^ c1 ^ d1;
// wire lin_1bcd0_reg = 1 ^ reg0_1 ^ reg0_2 ^ reg0_3;
// wire lin_1bcd1_reg = reg1_1 ^ reg1_2 ^ reg1_3;

wire lin_ac0 = a0 ^ c0;
wire lin_ac1 = a1 ^ c1;
// wire lin_ac0_reg = reg0_0 ^ reg0_2;
// wire lin_ac1_reg = reg1_0 ^ reg1_2;
wire lin_1abd0 = 1 ^ a0 ^ b0 ^ d0;
wire lin_1abd1 = a1 ^ b1 ^ d1;
// wire lin_1abd0_reg = 1 ^ reg0_0 ^ reg0_1 ^ reg0_3;
// wire lin_1abd1_reg = reg1_0 ^ reg1_1 ^ reg1_3;



wire c0i_0 = lin_1acd1 ^ r0;
wire c0i_1 = lin_b1 ^ r1;
wire c0i_2 = lin_bc1 ^ r2;
wire c0i_3 = lin_b1&lin_bc1;
wire c0i_4 = lin_b1&lin_1acd1;
wire c0i_5 = lin_bc1&lin_1acd1;
wire c0i_6 = lin_1acd0 ^ r0;
wire c0i_7 = lin_b0 ^ r1;
wire c0i_8 = lin_bc0 ^ r2;
wire c0i_9 = lin_b0&lin_bc0;
wire c0i_10 = lin_b0&lin_1acd0;
wire c0i_11 = lin_bc0&lin_1acd0;
wire c0i_12 = (c0i_9 ^ lin_b0&r2 ^ lin_bc0&r1 ^ r3    );
wire c0i_13 = (lin_1bcd0 ^ r6 ^ c0i_10 ^ lin_b0&r0 ^ lin_1acd0&r1   );
wire c0i_14 = (c0i_11 ^ lin_bc0&r0 ^ lin_1acd0&r2 ^ r8    );
wire c0i_15 = (c0i_3 ^ lin_b1&r2 ^ lin_bc1&r1 ^ r3    );
wire c0i_16 = (lin_1bcd1 ^ r6 ^ c0i_4 ^ lin_b1&r0 ^ lin_1acd1&r1   );
wire c0i_17 = (c0i_5 ^ lin_bc1&r0 ^ lin_1acd1&r2 ^ r8    );
wire c0i_18 = (lin_b0_reg&reg0_6 ^ lin_bc0_reg&reg0_5 ^ reg0_7   );
wire c0i_19 = (reg0_10 ^ lin_b0_reg&reg0_4 ^ lin_1acd0_reg&reg0_5    );
wire c0i_20 = (lin_bc0_reg&reg0_4 ^ lin_1acd0_reg&reg0_6 ^ reg0_12   );
wire c0i_21 = (lin_b1_reg&reg1_6 ^ lin_bc1_reg&reg1_5 ^ reg1_7   );
wire c0i_22 = (reg1_10 ^ lin_b1_reg&reg1_4 ^ lin_1acd1_reg&reg1_5    );
wire c0i_23 = (lin_bc1_reg&reg1_4 ^ lin_1acd1_reg&reg1_6 ^ reg1_12   );


//the first share

always @(posedge clk) begin
	//x
	lin_b0_reg <= lin_b0;
	lin_abc0_reg <= lin_abc0;
	lin_bc0_reg <= lin_bc0;
	lin_1acd0_reg <= lin_1acd0;
	
	
	
	reg0_4 <= c0i_0;
	reg0_5 <= c0i_1;
	reg0_6 <= c0i_2;
	reg0_7 <= c0i_3 ^ r3;
	//x
	reg0_8 <= 1 ^ lin_b0 ^ lin_c0 ^ lin_d0 ^ (lin_b0 ^ lin_abc0)&(c0i_6 ) ^ lin_abc0&c0i_12    ^ r4;	
	//y
	reg0_9 <= 1 ^ lin_c0 ^  lin_abc0&(c0i_8  ) ^ lin_1acd0&c0i_12 ^ r5;
	//z
	reg0_10 <= lin_1bcd1 ^ c0i_4 ^ r6;
	reg0_11 <= lin_d0 ^ lin_bc0&(c0i_6  ) ^ lin_abc0&c0i_13 ^ r7    ;
	//t
	reg0_12 <= c0i_5 ^ r8  ;
	reg0_13 <= 1 ^ lin_d0 ^ lin_b0&(c0i_8 ^ c0i_6 ) ^ lin_abc0&c0i_14 ^ r9;


end

assign x0 = (lin_b0_reg ^ lin_abc0_reg)&(reg0_4   ) ^ lin_abc0_reg&c0i_18 ^ reg0_8 ;
assign y0 = lin_abc0_reg&(reg0_6  ) ^ lin_1acd0_reg&c0i_18 ^ reg0_9  ;
assign z0 = lin_bc0_reg&(reg0_4  ) ^ lin_abc0_reg&c0i_19    ^ reg0_11;
assign t0 = lin_b0_reg&(reg0_6 ^ reg0_4 ) ^ lin_abc0_reg&c0i_20   ^ reg0_13;



//the second share

always @(posedge clk) begin
	//x
	lin_b1_reg <= lin_b1;
	lin_abc1_reg <= lin_abc1;
	lin_bc1_reg <= lin_bc1;
	lin_1acd1_reg <= lin_1acd1;
	
	
	
	reg1_4 <= c0i_6;
	reg1_5 <= c0i_7;
	reg1_6 <= c0i_8;
	reg1_7 <= c0i_9 ^ r3;
	//x
	reg1_8 <= 0 ^ lin_b1 ^ lin_c1 ^ lin_d1 ^ (lin_b1 ^ lin_abc1)&(c0i_0 ) ^ lin_abc1&c0i_15    ^ r4;	
	//y
	reg1_9 <= 0 ^ lin_c1 ^  lin_abc1&(c0i_2  ) ^ lin_1acd1&c0i_15 ^ r5;
	//z
	reg1_10 <= lin_1bcd0 ^ c0i_10 ^ r6;
	reg1_11 <= lin_d1 ^ lin_bc1&(c0i_0  ) ^ lin_abc1&c0i_16 ^ r7    ;
	//t
	reg1_12 <= c0i_11 ^ r8  ;
	reg1_13 <= 0 ^ lin_d1 ^ lin_b1&(c0i_2 ^ c0i_0 ) ^ lin_abc1&c0i_17 ^ r9;

end

assign x1 = (lin_b1_reg ^ lin_abc1_reg)&(reg1_4   ) ^ lin_abc1_reg&c0i_21 ^ reg1_8 ;
assign y1 = lin_abc1_reg&(reg1_6  ) ^ lin_1acd1_reg&c0i_21 ^ reg1_9  ;
assign z1 = lin_bc1_reg&(reg1_4  ) ^ lin_abc1_reg&c0i_22    ^ reg1_11;
assign t1 = lin_b1_reg&(reg1_6 ^ reg1_4 ) ^ lin_abc1_reg&c0i_23   ^ reg1_13;





assign x0y0z0t0 = {t0,z0,y0,x0};
assign x1y1z1t1 = {t1,z1,y1,x1};






endmodule