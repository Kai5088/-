`timescale 1ns / 1ps
module elevator(
    input clk,
    input [3:0] requestFloor,
    output reg [3:0] currentFloor = 4'b0001
    );
    
    always @ (posedge clk) begin
        if (requestFloor < currentFloor)
            currentFloor <= currentFloor - 1;
        else if (requestFloor > currentFloor)
            currentFloor <= currentFloor + 1;
     end
endmodule
