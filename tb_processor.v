//testbench code
module tb;
reg clk;
processor uut(clk);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    #100 $stop;
end
endmodule
