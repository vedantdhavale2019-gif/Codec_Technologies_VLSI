// verilog code for register file
module register_file(
    input clk, loadA, loadB,
    input [3:0] data,
    output reg [3:0] A, B
);
always @(posedge clk) begin
    if(loadA) A <= data;
    if(loadB) B <= data;
end
endmodule
