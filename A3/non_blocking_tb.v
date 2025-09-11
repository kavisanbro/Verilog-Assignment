`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 10:54:41
// Design Name: 
// Module Name: non_blocking_tb
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


module tb_nonblocking;
  reg clk;
  wire a, b;
  non_blocking uut (
    .clk(clk),
    .a(a),
    .b(b)
  );
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  initial begin
    $dumpfile("nonblocking_tb.vcd");  
    $dumpvars(0, tb_nonblocking);
    #50 $finish;
  end
  initial begin
    $monitor("Time=%0t | clk=%b | a=%b | b=%b", $time, clk, a, b);
  end
endmodule

