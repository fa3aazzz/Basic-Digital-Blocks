`timescale 1ns / 1ps

module tb_uni_reg;
    reg si, clk, rst;
    reg [1:0] sel;
    reg [4:0] pi;
    wire so;
    wire [4:0] so, po;

    uni_reg uut (
        .po(po), .so(so),
        .pi(pi), .si(si), 
        .clk(clk), .rst(rst), .sel(sel)
    );

    initial clk = 1'b0;
    always #5 clk = ~clk;

    initial begin
        rst = 1'b1;
        sel = 2'b00;
        pi  = 5'b00000;
        si  = 1'b0;
        #10;
        // parallel load
        rst = 1'b0;
        sel = 2'b11;
        pi  = 5'b10110;
        #10;
        // Hold 
        sel = 2'b00;
        #10;
        // Shift left
        sel = 2'b01;
        si  = 1'b1; #10;
        si  = 1'b0; #10;
        // Shift right
        sel = 2'b10;
        si  = 1'b1; #10;
        si  = 1'b0; #10;
        $finish;
    end

endmodule