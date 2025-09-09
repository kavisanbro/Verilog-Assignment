`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 12:55:40
// Design Name: 
// Module Name: replication_demo
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


module replication_demo (
    input  a,
    input  [1:0] b,
    input  [1:0] c,
    output [6:0] y
);
    assign y = {a, {4{b[0]}}, c[1]};
endmodule
