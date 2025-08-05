`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2025 12:06:56
// Design Name: 
// Module Name: rtl_clock
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

module rtl_schematic (
  input wire clock,
  input wire x1, x2, x3,
  output reg f, g
);
  reg temp; 
  always @(posedge clock) begin
    f <= x1 & x2;
    g <= x3 | f;
  end

endmodule

