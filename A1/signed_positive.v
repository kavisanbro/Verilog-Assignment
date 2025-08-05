`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 11:31:44
// Design Name: 
// Module Name: signed_positive
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


module signed_positive();
  integer i;

initial begin
i=25;
$display("positive i=%d",i);
i=-15;
$display("negative i=%d",i);
end
endmodule
