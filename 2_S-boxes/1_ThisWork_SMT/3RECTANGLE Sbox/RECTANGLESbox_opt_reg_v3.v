
module RECTANGLESbox_opt_reg_v3(
input clk,
input [3:0] a0b0c0d0,
input [3:0] a1b1c1d1,
input [7:0] ran,
output [3:0] x0y0z0t0,
output [3:0] x1y1z1t1


);

wire a0,b0,c0,d0,a1,b1,c1,d1;
wire x0,y0,z0,t0,x1,y1,z1,t1;
wire r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;

assign {d0,c0,b0,a0} = a0b0c0d0;
assign {d1,c1,b1,a1} = a1b1c1d1;
assign {r0,r1,r2,r3,r4,r5,r6,r7} = ran;

reg reg0_0,reg0_1,reg0_2,reg0_3,reg0_4,reg0_5,reg0_6,reg0_7,reg0_8,reg0_9,reg0_10,reg0_11,reg0_12,reg0_13,reg0_14,reg0_15,reg0_16,reg0_17,reg0_18;
reg reg1_0,reg1_1,reg1_2,reg1_3,reg1_4,reg1_5,reg1_6,reg1_7,reg1_8,reg1_9,reg1_10,reg1_11,reg1_12,reg1_13,reg1_14,reg1_15,reg1_16,reg1_17,reg1_18;




wire lin_a0 = a0;
wire lin_a1 = a1;
reg lin_a0_reg ;
reg lin_a1_reg ;

wire lin_c0 = c0;
wire lin_c1 = c1;
reg lin_c0_reg ;
reg lin_c1_reg ;

wire lin_d0 = d0;
wire lin_d1 = d1;
reg lin_d0_reg ;
reg lin_d1_reg ;

wire lin_1ab0 = 1 ^ a0 ^ b0;
wire lin_1ab1 = a1 ^ b1;
reg lin_1ab0_reg ;
reg lin_1ab1_reg ;

wire lin_b0 = b0;
wire lin_b1 = b1;
reg lin_b0_reg ;
reg lin_b1_reg ;


wire lin_1c0 = 1 ^ c0;
wire lin_1c1 = c1;
reg lin_1c0_reg ;
reg lin_1c1_reg ;

wire lin_1abcd0 = 1 ^ a0 ^ b0 ^ c0 ^ d0;
wire lin_1abcd1 = a1 ^ b1 ^ c1 ^ d1;
reg lin_1abcd0_reg ;
reg lin_1abcd1_reg ;



wire c0i_0 = lin_b1 ^ r0;
wire c0i_1 = lin_1abcd1 ^ r1;
wire c0i_2 = lin_1c1 ^ r2;
wire c0i_3 = lin_b1&lin_1c1;
wire c0i_4 = lin_b0 ^ r0;
wire c0i_5 = lin_1abcd0 ^ r1;
wire c0i_6 = lin_1c0 ^ r2;
wire c0i_7 = lin_b0&lin_1c0;
wire c0i_8 = (c0i_7 ^ lin_b0&r2 ^ lin_1c0&r0 ^ r3  );
wire c0i_9 = (c0i_3 ^ lin_b1&r2 ^ lin_1c1&r0 ^ r3  );
wire c0i_10 = (lin_b0_reg&reg0_6 ^ lin_1c0_reg&reg0_4 ^ reg0_7   );
wire c0i_11 = (lin_b1_reg&reg1_6 ^ lin_1c1_reg&reg1_4 ^ reg1_7   );





//the first share

always @(posedge clk) begin
	//x


	lin_d0_reg <= lin_d0;
	lin_1ab0_reg <= lin_1ab0;
	lin_b0_reg <= lin_b0;
	lin_1c0_reg <= lin_1c0;




	
	
	reg0_4 <= c0i_0 ;
	reg0_5 <= c0i_1 ;
	reg0_6 <= c0i_2 ;
	reg0_7 <= c0i_3 ^ r3;
	//x
	reg0_8 <= lin_a0 ^ lin_c0 ^ lin_d0 ^ lin_1ab0&(c0i_4   )    ^ r4 ;
	//y
	reg0_9 <=  1 ^ lin_a0 ^ lin_b0 ^ lin_c0 ^ lin_d0&(c0i_4 )    ^ r5 ;
	//z
	reg0_10 <= lin_a0 ^ lin_b0 ^ lin_1c0&(c0i_5   ) ^ lin_1ab0&c0i_8   ^ r6;
	//t
	reg0_11 <= 1 ^ lin_a0 ^ lin_c0 ^ lin_1ab0&(c0i_5  ) ^ lin_d0&c0i_8 ^ r7;



end

assign x0 = lin_1ab0_reg&(reg0_4) ^ reg0_8;
assign y0 = lin_d0_reg&(reg0_4 ) ^ reg0_9;
assign z0 = lin_1c0_reg&(reg0_5) ^ lin_1ab0_reg&c0i_10 ^ reg0_10;
assign t0 = lin_1ab0_reg&(reg0_5) ^ lin_d0_reg&c0i_10 ^ reg0_11;



//the second share

always @(posedge clk) begin
	//x


	lin_d1_reg <= lin_d1;
	lin_1ab1_reg <= lin_1ab1;
	lin_b1_reg <= lin_b1;
	lin_1c1_reg <= lin_1c1;




	
	
	reg1_4 <= c0i_4 ;
	reg1_5 <= c0i_5 ;
	reg1_6 <= c0i_6 ;
	reg1_7 <= c0i_7 ^ r3;
	//x
	reg1_8 <= lin_a1 ^ lin_c1 ^ lin_d1 ^ lin_1ab1&(c0i_0   )    ^ r4 ;
	//y
	reg1_9 <=  lin_a1 ^ lin_b1 ^ lin_c1 ^ lin_d1&(c0i_0 )    ^ r5 ;
	//z
	reg1_10 <= lin_a1 ^ lin_b1 ^ lin_1c1&(c0i_1   ) ^ lin_1ab1&c0i_9   ^ r6;
	//t
	reg1_11 <= lin_a1 ^ lin_c1 ^ lin_1ab1&(c0i_1  ) ^ lin_d1&c0i_9 ^ r7;



end

assign x1 = lin_1ab1_reg&(reg1_4) ^ reg1_8;
assign y1 = lin_d1_reg&(reg1_4 ) ^ reg1_9;
assign z1 = lin_1c1_reg&(reg1_5) ^ lin_1ab1_reg&c0i_11 ^ reg1_10;
assign t1 = lin_1ab1_reg&(reg1_5) ^ lin_d1_reg&c0i_11 ^ reg1_11;




assign x0y0z0t0 = {t0,z0,y0,x0};
assign x1y1z1t1 = {t1,z1,y1,x1};






endmodule