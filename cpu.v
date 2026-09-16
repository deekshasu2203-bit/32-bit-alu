`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2026 22:06:12
// Design Name: 
// Module Name: cpu
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


module cpu(
    input clk,
    input rst
);

    // -------------------------
    // Internal wires
    // -------------------------

    wire [3:0] pc;
    wire [7:0] instruction;

    wire [2:0] alu_sel;

    wire [1:0] rd;
    wire [1:0] rs1;
    wire [1:0] rs2;

    wire [3:0] data1;
    wire [3:0] data2;
    wire [3:0] alu_result;


    // -------------------------
    // Instruction fields
    // -------------------------

    assign rd  = instruction[5:4];
    assign rs1 = instruction[3:2];
    assign rs2 = instruction[1:0];


    // -------------------------
    // Program Counter
    // -------------------------

    pc PC1(
        .clk(clk),
        .rst(rst),
        .pc(pc)
    );


    // -------------------------
    // Instruction Memory
    // -------------------------

    instr_mem IM1(
        .address(pc),
        .instruction(instruction)
    );


    // -------------------------
    // Control Unit
    // -------------------------

    control_unit CU1(
        .instruction(instruction),
        .alu_sel(alu_sel)
    );


    // -------------------------
    // Register File
    // -------------------------

    register_file RF1(
        .clk(clk),
        .rst(rst),
        .we(1'b1),
        .write_addr(rd),
        .write_data(alu_result),
        .read_addr1(rs1),
        .read_addr2(rs2),
        .read_data1(data1),
        .read_data2(data2)
    );


    // -------------------------
    // ALU
    // -------------------------

    alu ALU1(
        .y(alu_result),
        .a(data1),
        .b(data2),
        .sel(alu_sel)
    );

endmodule


