`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 17:46:39
// Design Name: 
// Module Name: siso_3bit_rigth_shift_register_tb
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


module siso_3bit_rigth_shift_register_tb();
  reg clk;
  reg rst;
  reg a;
  wire bout;
  siso_3bit_right_shift_register uut (
    .clk(clk),
    .rst(rst),
    .a(a),
    .bout(bout)
  );
    initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  initial begin
    $monitor("Time=%0t | clk=%b rst=%b a=%b => bout=%b", $time, clk, rst, a, bout);
    rst = 1; a = 0;
    #10;
    rst = 0;
    a = 1; #10;   
    a = 0; #10;   
    a = 1; #10;   
    a = 1; #10;   
    a = 0; #10;   
    #20;
    $finish;
  end
endmodule
