`timescale 1ns/1ps
module DecimalAdder(
	input [3:0]A,
	input [3:0]B,
	input Cin,
	output [3:0]S,
	output Cout
);
	wire Cout1,Cout2;
	wire [3:0] SumTemp;
	wire [3:0] C;

	assign Cout = Cout1 | (SumTemp[3]&SumTemp[2]) | (SumTemp[3]&SumTemp[1]);
	assign C[0] = 1'b0;
	assign C[1] = Cout;
	assign C[2] = Cout;
	assign C[3] = 1'b0;
	
	FourAdder ycl_1_FourAdder(.A(A),.B(B),.Cin(Cin),.S(SumTemp),.Cout(Cout1));
	FourAdder ycl_2_FourAdder(.A(SumTemp),.B(C),.Cin(1'b0),.S(S),.Cout(Cout2));

	
endmodule
