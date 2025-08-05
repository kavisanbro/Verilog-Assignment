`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 15:42:48
// Design Name: 
// Module Name: vector_manipulatation
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


module vector_manipulatation();
reg [7:0] bus;
reg[3:0]  busA;
integer i;
initial begin
bus=8'b10110011;
for(i=0;i<4;i=i+1)begin
busA[i]=bus[i];
end
$display("busA after bit by bit =%b",busA);
busA=bus[3:0];
$display("busA after part select=%b",busA);
end
endmodule
