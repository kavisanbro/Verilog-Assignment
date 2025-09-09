`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 12:31:51
// Design Name: 
// Module Name: bitwise_ops
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


module bitwise_ops;
    reg [3:0] x, y;

    initial begin
        x = 4'b1010;
        y = 4'b1100;
        $display("x     = %b", x);
        $display("y     = %b", y);
        $display("~x    = %b", ~x);
        $display("x & y = %b", x & y);
        $display("x | y = %b", x | y);
        $display("x ^ y = %b", x ^ y);
        $display("x ^~ y= %b", x ^~ y); // XNOR
    end
endmodule
