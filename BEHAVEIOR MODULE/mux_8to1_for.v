`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 18:14:16
// Design Name: 
// Module Name: mux_8to1_for
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

module mux_8_to_1_for (
  input  [7:0] in,      
  input  [2:0] sel,     
  output reg out        
);

  integer i;

  always @(*) begin
    out = 0;            
    for (i = 0; i < 8; i = i + 1) begin
      if (sel == i)
        out = in[i];   
    end
  end

endmodule
