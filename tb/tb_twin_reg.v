`timescale 1ns / 1ps

module tb_twin_reg;
    reg clk, rst;
    reg [7:0] d1, d2;
    wire [7:0] q1, q2;

    twin_reg uut (
        .q1(q1),
        .q2(q2),
        .rst(rst), .clk(clk), .d1(d1), .d2(d2)
    );

    initial clk = 1'b0;
    always #5 clk = ~clk;

    initial begin
        rst = 1'b1;
        d1  = 8'hAA; d2  = 8'h55;
        #10;
        
        rst = 1'b0;
        d1  = 8'h12; d2  = 8'h34;
        #10;
        d1  = 8'hAB; d2  = 8'hCD;
        #10;

        rst = 1'b1;
        #10;
        $finish;
    end

endmodule