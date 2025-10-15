
module Affine_input(
input clk,
input [7:0] ain0,
input [7:0] ain1,
output [7:0] aout0,
output [7:0] aout1

);

wire [7:0] A0, Z0;
wire S0R1,S0R2,S0R3,S0R4,S0R5,S0R6,S0R7,S0R8,S0R9;
wire [7:0] B0;

wire [7:0] A1, Z1;
wire S1R1,S1R2,S1R3,S1R4,S1R5,S1R6,S1R7,S1R8,S1R9;
wire [7:0] B1;


assign A0 = ain0;

assign   S0R1 = A0[7] ^ A0[5] ;
assign   S0R2 = ~(A0[7] ^ A0[4]) ;
assign   S0R3 = A0[6] ^ A0[0] ;
assign   S0R4 = ~(A0[5] ^ S0R3) ;
assign   S0R5 = A0[4] ^ S0R4 ;
assign   S0R6 = A0[3] ^ A0[0] ;
assign   S0R7 = A0[2] ^ S0R1 ;
assign   S0R8 = A0[1] ^ S0R3 ;
assign   S0R9 = A0[3] ^ S0R8 ;

assign   B0[7] = ~(S0R7 ^ S0R8) ;
assign   B0[6] = S0R5 ;
assign   B0[5] = A0[1] ^ S0R4 ;
assign   B0[4] = ~(S0R1 ^ S0R3) ;
assign   B0[3] = A0[1]^ S0R2 ^ S0R6 ;
assign   B0[2] = ~ A0[0] ;
assign   B0[1] = S0R4 ;
assign   B0[0] = ~(A0[2] ^ S0R9) ;

assign	aout0 = ~ B0;



assign A1 = ain1;

assign   S1R1 = A1[7] ^ A1[5] ;
assign   S1R2 = ~(A1[7] ^ A1[4]) ;
assign   S1R3 = A1[6] ^ A1[0] ;
assign   S1R4 = ~(A1[5] ^ S1R3) ;
assign   S1R5 = A1[4] ^ S1R4 ;
assign   S1R6 = A1[3] ^ A1[0] ;
assign   S1R7 = A1[2] ^ S1R1 ;
assign   S1R8 = A1[1] ^ S1R3 ;
assign   S1R9 = A1[3] ^ S1R8 ;

assign   B1[7] = ~(S1R7 ^ S1R8) ;
assign   B1[6] = S1R5 ;
assign   B1[5] = A1[1] ^ S1R4 ;
assign   B1[4] = ~(S1R1 ^ S1R3) ;
assign   B1[3] = A1[1]^ S1R2 ^ S1R6 ;
assign   B1[2] = ~ A1[0] ;
assign   B1[1] = S1R4 ;
assign   B1[0] = ~(A1[2] ^ S1R9) ;

assign	aout1 = ~ B1;



endmodule