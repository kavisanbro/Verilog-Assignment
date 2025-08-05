`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 09:40:55
// Design Name: 
// Module Name: wier_module
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

module wire_demo;    
wire[2:0] net1,net2;
assign net1=3'b100;
assign net2=net1;
initial begin
$display ("net1=%b,net2=%b",net1,net2); 
end
endmodule

