`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 15:34:51
// Design Name: 
// Module Name: part_selection
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


module part_selection();
reg [7:0] bus;
reg [3:0] lower_nibble;
initial begin
   bus=8'b11010101;
   lower_nibble=bus[3:0];
   $display ("bus=%b",bus);
   $display ("lower_nibble=%b",lower_nibble);
   end
   endmodule
