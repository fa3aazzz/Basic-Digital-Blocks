`timescale 1ns / 1ps

module tb_shift_reg;

    reg  si, clk, rst;
    wire so;

    shift_reg uut (
        .so(so),
        .si(si), .clk(clk), .rst(rst)
    );

    initial clk = 1'b0;
    always #5 clk = ~clk;

    initial begin
        rst = 1'b0;
        si = 1'b0;
        #12;
        
        rst = 1'b1;
        si = 1'b1; #10;
        si = 1'b0; #10;
        si = 1'b1; #10;
        si = 1'b1; #10;
        si = 1'b0; #10;
        si = 1'b0;
        #50;
        $finish;
    end

endmodule