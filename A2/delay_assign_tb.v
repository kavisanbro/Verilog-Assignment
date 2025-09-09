`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 12:30:02
// Design Name: 
// Module Name: delay_assign_tb
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


module tb_delay_assign;
    reg [3:0] a, b;
    wire [4:0] sum;

    delay_assign uut(a, b, sum);

    initial begin
        $monitor("Time=%0t a=%d b=%d sum=%d", $time, a, b, sum);
        a=3; b=4; #10;
        a=7; b=8; #10;
        a=15; b=1; #10;
        #20 $finish;
    end
endmodule

