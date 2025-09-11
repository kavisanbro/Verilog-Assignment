`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 21:04:04
// Design Name: 
// Module Name: parallel_always_tb
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

module parallel_always;
    reg a, b;

    initial begin
        a = 0; b = 0;
        $monitor("Time=%0t a=%b b=%b", $time, a, b);
    end

    always #5  a = ~a;   // toggles every 5
    always #10 b = ~b;   // toggles every 10
endmodule
