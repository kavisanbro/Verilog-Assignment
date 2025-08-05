`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 17:22:11
// Design Name: 
// Module Name: siso_3bit_rightshiftregister
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


module siso_3bit_right_shift_register(
  input clk,
  input rst,
  input a,
  output reg bout       
);
 reg [2:0] shift_reg;   
  always@(posedge clk or posedge rst) begin
    if(rst) begin
      shift_reg <= 3'b000;
    end else begin
      shift_reg[2] <= a;
      shift_reg[1] <= shift_reg[2];
      shift_reg[0] <= shift_reg[1];
    end
  end
 always@(posedge clk) begin
    bout <= shift_reg[0];
  end
endmodule

