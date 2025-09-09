`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 12:59:13
// Design Name: 
// Module Name: parity_gen
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


module parity_gen (
    input  [8:0] x,
    output       ep,                // even parity
    output       op                 // odd parity
);
    assign ep = ^x;                  // XOR all bits (1 if odd no. of 1s)
    assign op = ~ep;                    // complement for odd parity
endmodule
