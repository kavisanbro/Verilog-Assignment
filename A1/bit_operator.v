`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 15:20:26
// Design Name: 
// Module Name: bit_operator
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


module bit_operator();
  reg [7:0] data;  
  reg selected_bit;

  initial begin
    data = 8'b10101100;  

    selected_bit = data[3];  

    $display("data = %b", data);
    $display("Bit at position 3 = %b", selected_bit);  
  end

endmodule


