`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 12:56:28
// Design Name: 
// Module Name: replication_demo_tb
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

module tb_replication_demo;
    reg a;
    reg [1:0] b, c;
    wire [6:0] y;

    replication_demo uut(a, b, c, y);

    initial begin
        $monitor("a=%b b=%b c=%b => y=%b", a, b, c, y);
        a=1; b=2'b01; c=2'b11; #10;
        a=0; b=2'b10; c=2'b00; #10;
        #20 $finish;
    end
endmodule

