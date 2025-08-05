`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 10:03:03
// Design Name: 
// Module Name: reg_demo
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


module reg_demo;
reg[2:0]net1,net2;
initial begin
net1=3'b101;
net2=net1;
$display("reg module:");
$display("net1=%b,net2=%b",net1,net2);
end
endmodule

