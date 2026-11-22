`timescale 1ns / 1ps

module tb_frequency_div;
    reg clk;
    reg rst;
    wire clk_out;

    frequency_div uut (
        .clk_out(clk_out),
        .clk(clk), .rst(rst)
    );

    initial clk = 1'b0;
    always #5 clk = ~clk;

    initial begin
        rst = 1'b1;
        #12;
        rst = 1'b0;
        #120;
        $finish;
    end

endmodule