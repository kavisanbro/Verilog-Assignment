`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2025 12:09:52
// Design Name: 
// Module Name: rtl_clock_tb
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

module tb_rtl_schematic;
  reg clock;
  reg x1, x2, x3;
  wire f, g;
 rtl_schematic dut (
    .clock(clock),
    .x1(x1),
    .x2(x2),
    .x3(x3),
    .f(f),
    .g(g)
  );
  always #5 clock = ~clock;
    initial begin
      $monitor("Time=%0t | x1=%b x2=%b x3=%b | f=%b g=%b", $time, x1, x2, x3, f, g);
    clock = 0;
    x1 = 0; x2 = 0; x3 = 0;
    #10;
    x1 = 1; x2 = 0; x3 = 0; 
    #10;
    x1 = 1; x2 = 1; x3 = 0; 
    #10;
    x1 = 0; x2 = 1; x3 = 1; 
    #10;
    x1 = 1; x2 = 1; x3 = 1; 
    #10;
        $finish;
    end
endmodule

