`timescale 1ns / 1ps
module DecadeAdder_TB;
  reg [7:0] A;
  reg [7:0] B;
  reg Cin;
  wire [7:0] S;
  wire Cout;
  
  initial begin
    Cin = 1'b0;
    A = 8'b00000101;
    B = 8'b00000001;
    #0.5
    A = 8'b00110001;
    B = 8'b00110101;
    #0.5
    A = 8'b01010111;
    B = 8'b10010000;
    #0.5 $finish;
  end
  
 Two_DecimalAdder u_DecadeAdder(.A(A),.B(B),.Cin(Cin),.S(S),.Cout(Cout));  

endmodule
