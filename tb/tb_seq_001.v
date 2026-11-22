`timescale 1ns / 1ps

module tb_seq_001;

    reg  inp, clk, rst;
    wire det;

    seq_001 uut (
        .inp(inp), .clk(clk), .rst(rst),
        .det(det)
    );

    initial clk = 1'b0;
    always #5 clk = ~clk;

    initial begin
        rst = 1'b1;
        inp = 1'b0;
        #12;

        rst = 1'b0;
        inp = 1'b0; #10;
        inp = 1'b0; #10;
        inp = 1'b1; #10;

        inp = 1'b1; #10;
        inp = 1'b0; #10;
        inp = 1'b0; #10;
        inp = 1'b1; #10;
        inp = 1'b0; #10;
        $finish;
    end

endmodule