`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 13:18:43
// Design Name: 
// Module Name: equality_tb
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

module tb_equality_demo;

    // No external ports; design runs self-contained initial block

    // Instantiate the DUT (Device Under Test)
    equality_demo dut();

    initial begin
        // Wait for the DUT to complete its initial block
        #1; // Small delay for display outputs
        $finish;
    end

endmodule
