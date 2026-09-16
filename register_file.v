`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2026 20:12:15
// Design Name: 
// Module Name: register_file
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


module register_file(input clk,input rst,input we,input [1:0]write_addr,
input [3:0]write_data,input [1:0]read_addr1,input [1:0]read_addr2,
output [3:0]read_data1, output [3:0]read_data2);
reg [3:0] registers[0:3];
always@(posedge clk)
begin
if(rst)
begin
registers[0]<=4'b0000;
registers[1]<=4'b0000;
registers[2]<=4'b0000;
registers[3]<=4'b0000;
end
else if(we)
begin
registers[write_addr]<=write_data;
end
end
assign read_data1 = registers[read_addr1];
assign read_data2 = registers[read_addr2];
endmodule
