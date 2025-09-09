`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 13:00:16
// Design Name: 
// Module Name: parity_gen_tb
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


module tb_parity_gen;
    reg  [8:0] x;
    wire ep, op;

    parity_gen uut(x, ep, op);

    initial begin
        $monitor("x=%b => even_parity=%b odd_parity=%b", x, ep, op);
        x = 9'b000000000; #10;
        x = 9'b111111111; #10;
        x = 9'b101010101; #10;
        #20 $finish;
    end
endmodule

