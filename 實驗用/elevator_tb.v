`timescale 1ns / 1ps
module elevator_tb();
    reg clk;
    reg [3:0] requestFloor;
    wire [3:0] currentFloor;
    
    initial begin
       clk <= 1'b0;
       requestFloor <= 4'b1010;
       #20
       requestFloor <= 4'b0010;
       #20
       requestFloor <= 4'b0101;
       #20 $finish;
    end
    
    always #1 begin
       clk <= ~clk;
    end
    
    elevator u_elevator(.clk(clk),.requestFloor(requestFloor),.currentFloor(currentFloor));
     
endmodule
