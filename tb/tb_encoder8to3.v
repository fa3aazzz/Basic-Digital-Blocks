`timescale 1ns / 1ps

module tb_encoder8to3;
    reg [7:0] i;
    wire [2:0] y;
    encoder_8x3 dut (.i(i), .y(y));
    initial begin
        i = 8'b0000_0001; #10;
        i = 8'b0000_0010; #10;
        i = 8'b0000_0100; #10;
        i = 8'b0000_1000; #10;
        i = 8'b0001_0000; #10;
        i = 8'b0010_0000; #10;
        i = 8'b0100_0000; #10;
        i = 8'b1000_0000; #10;
        $finish;
    end
endmodule