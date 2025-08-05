`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2025 10:35:11
// Design Name: 
// Module Name: clock_generator_tb
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

module clock_generator_tb;
  reg clk;

  initial clk = 0;

  always #5 clk = ~clk;

  initial begin
    $monitor("Time = %0t | clk = %b", $time, clk);
    #100;
    $finish;
  end
endmodule
