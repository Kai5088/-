`timescale 1ns / 1ps

module FourAdder(
   input Cin,
   input [3:0] A,
   input [3:0] B,
   output [3:0] S,
   output Cout

);

	
	wire Net1,Net2,Net3;
	 
	FullAdder u1_FullAdder(.A(A[0]),.B(B[0]),.Cin(Cin),.S(S[0]),.Cout( Net1));
	FullAdder u2_FullAdder(.A(A[1]),.B(B[1]),.Cin(Cin),.S(S[1]),.Cout( Net2));
	FullAdder u3_FullAdder(.A(A[2]),.B(B[2]),.Cin(Cin),.S(S[2]),.Cout( Net3));
	FullAdder u4_FullAdder(.A(A[3]),.B(B[3]),.Cin(Cin),.S(S[3]),.Cout( Cout));
	
	endmodule
