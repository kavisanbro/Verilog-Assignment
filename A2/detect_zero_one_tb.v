`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 13:12:04
// Design Name: 
// Module Name: detect_zero_one_tb
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


module tb_detect_zero_one;
    reg [7:0] x;
    wire zero, one;

    detect_zero_one uut(x, zero, one);

    initial begin
        $monitor("x=%b zero=%b one=%b", x, zero, one);
        x=8'b00000000; #10;
        x=8'b11111111; #10;
        x=8'b10101010; #10;
        #20 $finish;
    end
endmodule
