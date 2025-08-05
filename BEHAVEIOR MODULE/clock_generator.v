`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2025 10:24:59
// Design Name: 
// Module Name: clock_generator
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


module clock_generator;
reg clk;
initial begin
clk=0;
forever begin
#5 clk=~clk;
end
    end
  initial begin 
  $monitor("Time=%0t|clk=%b",$time,clk);
  end
endmodule
