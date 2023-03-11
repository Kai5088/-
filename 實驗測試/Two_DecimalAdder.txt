`timescale 1ns/1ps
module Two_DecimalAdder(
	input [7:0]A,
	input [7:0]B,
	input Cin,
	output [7:0]S,
	output Cout
	);
	
	wire Cout1;
	
	DecimalAdder fuc1_DecimalAdder(.A(A[3:0]),.B(B[3:0]),.Cin(Cin),.S(S[3:0]),.Cout(Cout1));
	DecimalAdder fuc2_DecimalAdder(.A(A[7:4]),.B(B[7:4]),.Cin(Cout1),.S(S[7:4]),.Cout(Cout));
	endmodule
