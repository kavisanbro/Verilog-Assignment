`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 19:17:31
// Design Name: 
// Module Name: reg_increment
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

module reg_increment;
    reg [15:0] data;

    initial begin
        data = 16'h0000; // initialize
        $monitor("Time=%0t data=%d", $time, data);
    end

    always #10 data = data + 1; // increment every 10 time units
endmodule

