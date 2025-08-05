`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2025 14:38:55
// Design Name: 
// Module Name: d_flipflop
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


module d_flipflop(
input c, din,
output reg y3,
reg y1,y2
);
always@ ( posedge c) begin
y1 = din;
y2 = y1;
y3 = y2;
end
endmodule



   //////  the one flip flop is present here 1
   
  module d_flipflop_1( 
   input c,din,
output reg y3,
reg y1,y2
);
always@(posedge c)
begin
y1 <= din;
y2 <= y1;
y3 <= y2;
end
endmodule





//this code contain the 3 flip flopes


