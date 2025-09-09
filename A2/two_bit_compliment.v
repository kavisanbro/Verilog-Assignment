`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 12:44:29
// Design Name: 
// Module Name: two_bit_compliment
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

module twos_complement_adder (
    input  [3:0] x, y,
    input        c_in,
    output [3:0] sum,
    output       c_out
);
    wire [3:0] t;
    assign t = y ^ {4{c_in}};          
    assign {c_out, sum} = x + t + c_in; 
endmodule
