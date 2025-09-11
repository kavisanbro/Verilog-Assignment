`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 19:12:33
// Design Name: 
// Module Name: toggle_signal
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


module toggle_signal;
    reg q;

    initial begin
        q = 0;                // start value
        $monitor("Time=%0t q=%b", $time, q);
    end

    always #5 q = ~q;         // toggle every 5 time units
endmodule
