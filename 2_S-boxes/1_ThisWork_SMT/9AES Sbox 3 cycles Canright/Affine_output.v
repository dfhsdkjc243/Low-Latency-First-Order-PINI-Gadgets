
module Affine_output(
input clk,
input [7:0] aoin0,
input [7:0] aoin1,
output [7:0] aoout0,
output [7:0] aoout1

);


wire [7:0] C0,Z0;
wire S0T1, S0T2, S0T3, S0T4, S0T5, S0T6, S0T7, S0T8, S0T9, S0T10;
wire [7:0] D0;

assign C0 = aoin0;


assign S0T1 = C0[7]  ^  C0[3];
assign S0T2 = C0[6]  ^  C0[4];
assign S0T3 = C0[6]  ^  C0[0];
assign S0T4 = ~(C0[5] ^ C0[3]) ; 
assign S0T5 = ~(C0[5] ^ S0T1) ; 
assign S0T6 = ~(C0[5] ^ C0[1]) ; 
assign S0T7 = ~(C0[4] ^ S0T6) ; 
assign S0T8 = C0[2]  ^  S0T4 ; 
assign S0T9 = C0[1]  ^  S0T2 ; 

assign D0[7] = S0T4 ;
assign D0[6] = S0T1 ;
assign D0[5] = S0T3 ;
assign D0[4] = S0T5 ;
assign D0[3] = S0T2  ^  S0T5;
assign D0[2] = S0T3  ^  S0T8;
assign D0[1] = S0T7 ;
assign D0[0] = S0T9 ;


assign aoout0 = ~ D0;




wire [7:0] C1,Z1;
wire S1T1, S1T2, S1T3, S1T4, S1T5, S1T6, S1T7, S1T8, S1T9, S1T10;
wire [7:0] D1;

assign C1 = aoin1;


assign S1T1 = C1[7]  ^  C1[3];
assign S1T2 = C1[6]  ^  C1[4];
assign S1T3 = C1[6]  ^  C1[0];
assign S1T4 = ~(C1[5] ^ C1[3]) ; 
assign S1T5 = ~(C1[5] ^ S1T1) ; 
assign S1T6 = ~(C1[5] ^ C1[1]) ; 
assign S1T7 = ~(C1[4] ^ S1T6) ; 
assign S1T8 = C1[2]  ^  S1T4 ; 
assign S1T9 = C1[1]  ^  S1T2 ; 

assign D1[7] = ~ S1T4 ;
assign D1[6] = S1T1 ;
assign D1[5] = S1T3 ;
assign D1[4] = ~ S1T5 ;
assign D1[3] = ~(S1T2  ^  S1T5);
assign D1[2] = ~ (S1T3  ^  S1T8);
assign D1[1] = S1T7 ;
assign D1[0] = S1T9 ;


assign aoout1 = D1;




endmodule