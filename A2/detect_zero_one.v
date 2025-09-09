`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 13:10:13
// Design Name: 
// Module Name: detect_zero_one
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

module detect_zero_one (
    input  [7:0] x,
    output zero,
    output one
);
    assign zero = ~(|x); // 1 if all bits are 0
    assign one  = &x;    // 1 if all bits are 1
endmodule

