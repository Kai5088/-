`timescale 1ns / 1ps
module FourAdder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] S,
    output Cout
    );
    
    wire Net1, Net2, Net3;
    
    fulladder u1_FullAdder(.A(A[0]),.B(B[0]),.Cin(Cin),.Sum(S[0]),.Cout(Net1));
    fulladder u2_FullAdder(.A(A[1]),.B(B[1]),.Cin(Net1),.Sum(S[1]),.Cout(Net2));
    fulladder u3_FullAdder(.A(A[2]),.B(B[2]),.Cin(Net2),.Sum(S[2]),.Cout(Net3));
    fulladder u4_FullAdder(.A(A[3]),.B(B[3]),.Cin(Net3),.Sum(S[3]),.Cout(Cout));

endmodule
