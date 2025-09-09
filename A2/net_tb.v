`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 12:26:07
// Design Name: 
// Module Name: net_tb
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


module tb_implicit_net;
    reg a, b;
    wire out;
    implicit_net uut(a, b);
    assign out = uut.out; 
    initial begin
            $monitor("a=%b b=%b out=%b", a, b, out);
        a=0; b=0; #5;
        a=1; b=0; #5;
        a=0; b=1; #5;
        a=1; b=1; #5;
        #10 $finish;
    end
endmodule

