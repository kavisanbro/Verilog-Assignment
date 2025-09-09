`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 12:36:00
// Design Name: 
// Module Name: full_adder_tb
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


module tb_adder4;
    reg [3:0] a, b;
    reg c_in;
    wire [3:0] sum;
    wire c_out;
   adder4 uut(a, b, c_in, sum, c_out);
    initial begin
        $monitor("a=%d b=%d c_in=%b => sum=%d c_out=%b", a, b, c_in, sum, c_out);
        a=4'd3; b=4'd5; c_in=0; #10;
        a=4'd7; b=4'd9; c_in=1; #10;
        a=4'd15; b=4'd1; c_in=0; #10;
        #20 $finish;
    end
endmodule

