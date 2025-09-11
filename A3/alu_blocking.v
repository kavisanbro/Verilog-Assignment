`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 11:36:41
// Design Name: 
// Module Name: alu_blocking
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


module alu_blocking (
  input  [3:0] a, b,        // 4-bit operands
  input  [2:0] sel,         // operation select
  output reg [4:0] y        // 5-bit result (extra bit for carry)
);
  always @(*) begin
    y = 0;  // default
    case (sel)
      3'b000: y = a + b;   // Addition
      3'b001: y = a - b;   // Subtraction
      3'b010: y = a & b;   // AND
      3'b011: y = a | b;   // OR
      3'b100: y = a ^ b;   // XOR
      3'b101: y = ~a;      // NOT (on a)
      3'b110: y = a << 1;  // Left shift
      3'b111: y = a >> 1;  // Right shift
      default: y = 0;
    endcase
  end
endmodule
