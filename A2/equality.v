`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 13:18:18
// Design Name: 
// Module Name: equality
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

module equality_demo;
    reg [3:0] a, b;
    initial begin
        a = 4'b10x1;  
        b = 4'b1010;
        $display("a=%b b=%b", a, b);
        $display("Using ==  : %b", (a == b));  // Output may have x due to unknown
        $display("Using === : %b", (a === b)); // Compares including x
    end
endmodule
