`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 14:14:44
// Design Name: 
// Module Name: floating_point
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


module floating_point();
real delta;
integer int_val;
initial begin
delta=4e10;
$display("delta(4e10)=%0f",delta);
delta=2.18;
$display("delta(2.18)=%0f",delta);
int_val=delta;
$display("int_val after assigning delta=%0d",int_val);
end
endmodule
