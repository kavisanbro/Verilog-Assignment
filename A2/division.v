`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 12:49:34
// Design Name: 
// Module Name: division
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

module div_mod_demo;
    integer a, b;
    reg signed [7:0] sa, sb;

    initial begin
        a = 15; b = 4;
        sa = -15; sb = 4;
        
        $display("Unsigned Division: %0d / %0d = %0d", a, b, a/b);
        $display("Unsigned Modulus: %0d %% %0d = %0d", a, b, a%b);

        $display("Signed Division: %0d / %0d = %0d", sa, sb, sa/sb);
        $display("Signed Modulus: %0d %% %0d = %0d", sa, sb, sa%sb);
    end
endmodule

