`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 10:31:25
// Design Name: 
// Module Name: net_type
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


module net_type();
wand wand_net;
wor wor_net;
tri tri_net;
triand triand_net;
reg a,b,c,d;
assign wand_net=a;
assign wand_net=b;
assign wor_net=c;
assign wor_net=b;
assign tri_net=c;
assign triand_net=c;
assign triand_net=d;
initial begin
    $monitor("Time=%0t | wand=%b, wor=%b, tri=%b, triand=%b", $time, wand_net, wor_net, tri_net, triand_net);
     a = 1; b = 0;  #5
     c = 0;         #5
     d = 0;         #5
     a = 1; b = 1; c = 1; d = 1;     
  end

endmodule