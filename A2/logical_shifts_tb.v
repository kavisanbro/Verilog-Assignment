`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 13:27:21
// Design Name: 
// Module Name: logical_shifts_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_logical_shifts;
    reg [3:0] x;
    wire [3:0] shl, shr;

    logical_shifts uut(x, shl, shr);

    initial begin
        $monitor("x=%b shl=%b shr=%b", x, shl, shr);
        x=4'b1010; #10;
        x=4'b0101; #10;
        #20 $finish;
    end
endmodule
