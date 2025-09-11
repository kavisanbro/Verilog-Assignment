`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 10:44:14
// Design Name: 
// Module Name: blocking_tb
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

`timescale 1ns/1ps
module tb_blocking;
  reg clk;
  wire a, b;
  blocking uut (
    .clk(clk),
    .a(a),
    .b(b)
  );
  initial begin
    clk = 0;
    forever #5 clk = ~clk;   
  end
    initial begin
    $dumpfile("blocking_tb.vcd");   
    $dumpvars(0, tb_blocking);
    #50 $finish;
  end
  initial begin
    $monitor("Time=%0t | clk=%b | a=%b | b=%b", $time, clk, a, b);
  end

endmodule
