`timescale 1ns / 1ps

module fulladder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
    
    wire Net1,Net2,Net3;
    xor u0(Net1,A,B);
    xor u1(Sum,Net1,Cin);
    
    and u2(Net2,A,B);
    and u3(Net3,Net1,Cin);
    
    or u5(Cout,Net2,Net3);
endmodule
