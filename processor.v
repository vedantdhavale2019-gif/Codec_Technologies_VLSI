//verilog code for top module (processor)
module processor(input clk);
wire [3:0] A, B, aluOut, memOut;
wire loadA, loadB, memWrite;
wire [2:0] aluSel;
reg [3:0] opcode = 4'b0011; // Example: ADD

alu ALU(A, B, aluSel, aluOut);
register_file RF(clk, loadA, loadB, aluOut, A, B);
control_unit CU(opcode, loadA, loadB, memWrite, aluSel);
memory MEM(clk, memWrite, 4'b0000, A, memOut);

endmodule
