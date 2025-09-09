`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 13:26:25
// Design Name: 
// Module Name: logical_shifts
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


module logical_shifts (
    input  [3:0] x,
    output [3:0] shl, // shift left
    output [3:0] shr  // shift right
);
    assign shl = x << 1;
    assign shr = x >> 1;
endmodule
