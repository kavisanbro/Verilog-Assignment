`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 11:26:02
// Design Name: 
// Module Name: blocking_flip_flop
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


module dff_blocking (
  input  clk,
  input  d,
  output reg q
);
  always @(posedge clk) begin
    q = d;   // Blocking assignment (not recommended for real designs!)
  end
endmodule

