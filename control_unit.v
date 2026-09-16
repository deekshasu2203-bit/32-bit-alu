`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2026 21:43:27
// Design Name: 
// Module Name: control_unit
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



module control_unit(
    input [7:0] instruction,
    output reg [2:0] alu_sel
);

always @(*)
begin
    case(instruction[7:6])

        2'b00: begin
            alu_sel = 3'b000;  
        end

        2'b01: begin
            alu_sel = 3'b001;   
        end

        2'b10: begin
            alu_sel = 3'b110;   
        end

        2'b11: begin
            alu_sel = 3'b100;   
        end

        default: begin
            alu_sel = 3'b000;
        end

    endcase
end

endmodule

