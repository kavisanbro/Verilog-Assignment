`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 12:45:32
// Design Name: 
// Module Name: two_bit_compliment_tb
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

module tb_twos_complement_adder;
    reg  [3:0] x, y;
    reg        c_in;
    wire [3:0] sum;
    wire       c_out;

    twos_complement_adder uut(x, y, c_in, sum, c_out);

    initial begin
        $monitor("x=%d y=%d c_in=%b => sum=%d c_out=%b", x, y, c_in, sum, c_out);
        x=5; y=3; c_in=0; #10; 
        x=5; y=3; c_in=1; #10; 
        x=7; y=2; c_in=1; #10;
        #20 $finish;
    end
endmodule
