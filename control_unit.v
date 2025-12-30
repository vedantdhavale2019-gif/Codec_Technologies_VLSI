//verilog code for control unit
module control_unit(
    input [3:0] opcode,
    output reg loadA, loadB, memWrite,
    output reg [2:0] aluSel
);
always @(*) begin
    loadA = 0; loadB = 0; memWrite = 0;
    aluSel = 3'b000;

    case(opcode)
        4'b0001: loadA = 1;          // LOAD
        4'b0011: begin aluSel=000; loadA=1; end // ADD
        4'b0100: begin aluSel=001; loadA=1; end // SUB
        4'b0101: begin aluSel=010; loadA=1; end // AND
        4'b0110: begin aluSel=011; loadA=1; end // OR
        4'b0111: begin aluSel=100; loadA=1; end // NOT
        4'b0010: memWrite = 1;       // STORE
    endcase
end
endmodule
