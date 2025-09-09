`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 13:29:09
// Design Name: 
// Module Name: mux
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


// mux 2 to 1


module mux2to1 (
    input  a, b, sel,
    output y
);
    assign y = sel ? b : a;
endmodule

// mux 4 to 1

module mux4to1 (
    input  [3:0] d,
    input  [1:0] sel,
    output y
);
    assign y = (sel==2'b00) ? d[0] :
               (sel==2'b01) ? d[1] :
               (sel==2'b10) ? d[2] : d[3];
endmodule
