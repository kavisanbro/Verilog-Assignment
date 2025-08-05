`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2025 11:50:18
// Design Name: 
// Module Name: mux_2to1_dlatch_tb
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


module d_latch_using_mux_tb(
  input D,
  input En,
  output reg Q
  );
  always @(*) begin
    case (En)
      1'b0: Q = Q; 
      1'b1: Q = D;
    endcase
  end
endmodule

