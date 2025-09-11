`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 10:31:31
// Design Name: 
// Module Name: blocking
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


module blocking(
input clk,
output reg a,
output reg b);
always @ (posedge clk)
a=1;
always @ (posedge clk)
b=a;
endmodule
