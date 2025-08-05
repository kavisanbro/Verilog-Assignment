`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 11:53:27
// Design Name: 
// Module Name: time_simulatation
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


module time_simulatation();
time t;
initial begin
#0
t=$time;
$display("time0:t=%0t",t);
#5
t=$time;
$display("time5:t=%0t",t);
#10
t=$time;
$display("time10:t=%0t",t);
end
endmodule































