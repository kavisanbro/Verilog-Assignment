`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 14:35:56
// Design Name: 
// Module Name: real_time
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


module real_time();
realtime current_time;
initial begin
#0
current_time=$realtime;
$display("time=%0f",current_time);
#5.5;
current_time=$realtime;
$display("time=%0f",current_time);
#2.25;
current_time=$realtime;
$display("time=%0f",current_time);
end
endmodule
