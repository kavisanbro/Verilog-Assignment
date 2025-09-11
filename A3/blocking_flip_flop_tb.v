`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 11:28:29
// Design Name: 
// Module Name: blocking_flip_flop_tb
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


`timescale 1ns/1ps
module tb_dff_blocking;

  reg clk, d;
  wire q;

  // Instantiate DUT
  dff_blocking uut (
    .clk(clk),
    .d(d),
    .q(q)
  );

  // Clock generation (10ns period)
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Apply stimulus
  initial begin
    $dumpfile("dff_blocking_tb.vcd");
    $dumpvars(0, tb_dff_blocking);

    d = 0;
    #12 d = 1;   // Change before posedge
    #10 d = 0;   // Change before next posedge
    #10 d = 1;
    #10 d = 0;

    #20 $finish;
  end

  // Monitor outputs
  initial begin
    $display("Time | clk | d | q");
    $monitor("%4t |  %b  | %b | %b", $time, clk, d, q);
  end

endmodule
