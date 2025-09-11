`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 11:16:05
// Design Name: 
// Module Name: blocking_nonblocking
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

// BLOCKING assignment example
module blocking_example (
  input  clk,
  output reg a,
  output reg b
);
  always @(posedge clk) begin
    a = 1;   
    b = a;   
  end
endmodule

// NON-BLOCKING assignment example
module nonblocking_example (
  input  clk,
  output reg a,
  output reg b
);
  always @(posedge clk) begin
    a <= 1;  
    b <= a;  
  end
endmodule

