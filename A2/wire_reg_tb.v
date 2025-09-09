`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 12:19:51
// Design Name: 
// Module Name: wire_reg_tb
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

module tb_and_gate;
    reg a, b;
    wire out;

    and_gate uut(a, b, out);

    initial begin
        $monitor("Time=%0t a=%b b=%b out=%b", $time, a, b, out);
        a=0; b=0; #5;
        a=0; b=1; #5;
        a=1; b=0; #5;
        a=1; b=1; #5;
        #10 $finish;
    end
endmodule

