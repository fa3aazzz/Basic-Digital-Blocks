`timescale 1ns / 1ps

module tb_dff;
    reg d;
    reg clk;
    reg rst;
    reg set;
    wire q;

    dff uut (
        .d(d), .clk(clk), .rst(rst), .set(set),
        .q(q)
    );

    initial clk = 1'b0;
    always #5 clk = ~clk;

    initial begin
        rst = 1'b0;
        set = 1'b1;
        d = 1'b0;
        #10;
        rst = 1'b1;
        d = 1'b1;
        #12;
        rst = 1'b0;
        #8;
        set = 1'b0;
        d = 1'b0;
        #12;
        set = 1'b1;
        #8;
        d = 1'b1; #10;
        d = 1'b0; #10;
        d = 1'b1; #10;
        d = 1'b1; #10;

        $finish;
    end

endmodule