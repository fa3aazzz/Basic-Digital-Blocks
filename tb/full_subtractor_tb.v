`timescale 1ns / 1ps

module tb_full_subtractor;
    reg a, b, bin;
    wire fs_diff, fs_bout;

    full_subtractor fs (a, b, bin, fs_diff, fs_bout);

    initial begin
        a = 0; b = 0; bin = 0; #10;
        a = 0; b = 0; bin = 1; #10;
        a = 0; b = 1; bin = 0; #10;
        a = 0; b = 1; bin = 1; #10;
        a = 1; b = 0; bin = 0; #10;
        a = 1; b = 0; bin = 1; #10;
        a = 1; b = 1; bin = 0; #10;
        a = 1; b = 1; bin = 1; #10;
        $finish;
    end
    
endmodule
