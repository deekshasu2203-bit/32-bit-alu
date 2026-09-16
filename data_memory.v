`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2026 21:54:49
// Design Name: 
// Module Name: data_memory
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




module data_memory(
    input clk,
    input we,
    input [3:0] address,
    input [3:0] write_data,
    output [3:0] read_data
);

reg [3:0] memory [0:15];

always @(posedge clk)
begin
    if (we)
        memory[address] <= write_data;
end

assign read_data = memory[address];

endmodule

