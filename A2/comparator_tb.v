`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 13:15:23
// Design Name: 
// Module Name: comparator_tb
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


module tb_comparator;
    reg [3:0] a, b;
    wire ceq, clt, cgt;

    comparator uut(a, b, ceq, clt, cgt);

    initial begin
        $monitor("a=%d b=%d => ceq=%b clt=%b cgt=%b", a, b, ceq, clt, cgt);
        a=4; b=4; #10;
        a=2; b=5; #10;
        a=7; b=3; #10;
        #20 $finish;
    end
endmodule
