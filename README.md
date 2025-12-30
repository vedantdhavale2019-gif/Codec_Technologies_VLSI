# Codec_Technologies_VLSI            

### Design and Simulation of 4-bit processor

This project focuses on the design and simulation of a simple 4-bit custom processor using Verilog HDL. The processor is designed for educational purposes to understand the internal working of a CPU, including instruction execution, data processing, and control flow.

The processor operates on 4-bit data, supports a small custom instruction set, and follows a basic fetch–decode–execute cycle. Major components such as the Arithmetic Logic Unit (ALU), Register File, Control Unit, and Memory are implemented and integrated to form a complete processor.

Simulation is performed using free EDA tools(https://www.altera.com/downloads/simulation-tools/modelsim-fpgas-standard-edition-software-version-20-1-1) , and waveform analysis is used to verify correct operation of instructions. This project demonstrates fundamental concepts of processor architecture, digital design, and hardware description languages.

### Instruction format (8-bit)

| Opcode | Instruction | Operation               |   
| ------ | ----------- | ----------------------- | 
| 0000   | NOP         | No operation            |   
| 0001   | LOAD        | Load memory → register  |   
| 0010   | STORE       | Store register → memory |   
| 0011   | ADD         | A ← A + B               |   
| 0100   | SUB         | A ← A − B               |   
| 0101   | AND         | A ← A & B               |  
| 0110   | OR          | A ← A OR B              |    
| 0111   | NOT         | A ← ~A                  |   
| 1000   | JMP         | Jump to address         |   
| 1001   | HALT        | Stop execution          |   

#### Registers used:

- Register A

- Register B

### Implementation of :
#### ALU

- Performs arithmetic and logic operations
- Takes two 4-bit inputs (A, B)
- Controlled by ALU control signals
- Outputs 4-bit result

#### Register File

- Contains two 4-bit registers (A and B)
- Supports load and read operations
- Stores intermediate data

#### Control Unit

- Decodes opcode
- Generates control signals for:
  - ALU operation
  - Memory access
  - Register load
  - Program flow

#### Memory

- Simple 16×4 memory

- Used for instruction/data storage

- Addressed using 4-bit address
