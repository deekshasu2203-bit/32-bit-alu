# 32-bit-alu
Designed and implemented a 32-bit Arithmetic Logic Unit (ALU) using Verilog HDL, covering the complete digital design flow from RTL design and functional simulation to synthesis and physical design (PD).
# 32-Bit ALU Design – RTL to Physical Design

## 📌 Overview

This project presents the **design and implementation of a 32-bit Arithmetic Logic Unit (ALU)** using **Verilog HDL**. The design is taken through the complete VLSI flow, from **RTL design and functional simulation to synthesis and Physical Design (PD)**.

The project focuses on functional verification and analysis of **area, power, and timing (PPA)**.

---

## 🎯 Objectives

* Design a 32-bit ALU using Verilog HDL.
* Develop a testbench for functional verification.
* Perform RTL simulation and analyze waveforms.
* Perform logic synthesis using **Cadence Genus**.
* Perform Physical Design using **Cadence Innovus**.
* Analyze area, power, and timing.
* Understand the complete **RTL-to-GDSII flow**.

---

## ⚙️ ALU Operations

The ALU supports the following operations:

| Operation | Description        |
| --------- | ------------------ |
| ADD       | 32-bit Addition    |
| SUB       | 32-bit Subtraction |
| AND       | Bitwise AND        |
| OR        | Bitwise OR         |
| XOR       | Bitwise XOR        |

---

## 🔄 Design Flow

```text
Verilog RTL
     ↓
RTL Simulation
     ↓
Functional Verification
     ↓
Logic Synthesis
(Cadence Genus)
     ↓
Gate-Level Netlist
     ↓
Physical Design
(Cadence Innovus)
     ↓
Floorplanning
     ↓
Placement
     ↓
Clock Tree Synthesis
     ↓
Routing
     ↓
Timing / Power / Area Analysis
     ↓
GDSII
```

---

## 🧪 RTL Simulation

The ALU is functionally verified using a Verilog testbench by applying different input operands and control signals.

Simulation waveforms are analyzed to verify that the ALU produces the expected output for each supported operation.

---

## 🔨 Synthesis

The RTL design is synthesized using **Cadence Genus**.

The synthesis flow includes:

* RTL file reading
* Design elaboration
* Design checks
* SDC constraint application
* Logic synthesis
* Gate-level netlist generation
* Area analysis
* Timing analysis
* Power estimation

---

## 🏗️ Physical Design

The synthesized netlist is taken through the Physical Design flow using **Cadence Innovus**.

### Major PD Steps

1. Floorplanning
2. Power planning
3. Standard-cell placement
4. Clock Tree Synthesis (CTS)
5. Signal routing
6. Post-route optimization
7. Timing analysis
8. Power and area analysis
9. GDSII generation

---

## 📊 PPA Analysis

The design is evaluated based on:

* **Area**
* **Power**
* **Timing**
* **Utilization**
* **WNS (Worst Negative Slack)**
* **TNS (Total Negative Slack)**

---

## 🛠️ Tools & Technologies

* Verilog HDL
* AMD Vivado – RTL Simulation
* Cadence Genus – Logic Synthesis
* Cadence Innovus – Physical Design
* Linux
* SDC Constraints
* 180 nm Technology Library

---

## 📁 Project Structure

```text
32-bit-ALU/
│
├── rtl/
│   └── alu_32bit.v
│
├── tb/
│   └── alu_32bit_tb.v
│
├── constraints/
│   └── constraints.sdc
│
├── simulation/
│   └── waveforms/
│
├── synthesis/
│   ├── scripts/
│   ├── reports/
│   └── netlist/
│
├── physical_design/
│   ├── scripts/
│   ├── reports/
│   └── results/
│
└── README.md
```

---

## 📚 Key Concepts

* RTL Design
* Verilog HDL
* Functional Verification
* Testbench Development
* Logic Synthesis
* Timing Constraints
* Static Timing Analysis
* Floorplanning
* Placement
* Clock Tree Synthesis
* Routing
* Power Analysis
* Area Analysis
* RTL-to-GDSII Flow

---

## 🚀 Future Scope

* Optimize the ALU for lower power.
* Improve timing performance.
* Reduce area through RTL optimization.
* Explore different technology nodes.
* Perform further physical-design optimization.

---

## 👩‍💻 Author

**Deeksha S U**

ECE | VLSI Enthusiast

---

### ⭐ Project Flow

**32-bit ALU → RTL Design → Simulation → Synthesis → Physical Design → PPA Analysis → GDSII**
