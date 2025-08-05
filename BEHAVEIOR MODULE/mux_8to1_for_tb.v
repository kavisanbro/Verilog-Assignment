`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 18:18:40
// Design Name: 
// Module Name: mux_8to1_for_tb
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

module mux_8_to_1_for_tb;
  reg [7:0] in;
  reg [2:0] sel;
  wire out;
   integer i; 
 mux_8_to_1_for uut (
    .in(in),
    .sel(sel),
    .out(out)
  );
 initial begin
     $display("Time | in = %b | sel = %b | out = %b", in, sel, out);
    $monitor("Time = %0t | in = %b | sel = %d | out = %b", $time, in, sel, out);
  in = 8'b11010101;
    for (i = 0; i < 8; i = i + 1) begin
      sel = i;
      #10; 
    end
    #10;
    $finish;
  end
endmodule

