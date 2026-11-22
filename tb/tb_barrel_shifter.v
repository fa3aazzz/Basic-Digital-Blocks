`timescale 1ns / 1ps

module tb_barrel_shifter;
    reg [7:0] in;
    reg [2:0] s;
    reg lr;
    wire [7:0] out;

    barrel_shifter uut (
        .in(in), .s(s), .lr(lr),
        .out(out)
    );

    initial begin
        in = 8'b1010_1100;
        lr = 1'b1; 
        s = 3'd0; #10;
        s = 3'd1; #10;
        s = 3'd2; #10;
        s = 3'd3; #10;

        lr = 1'b0; 
        s = 3'd0; #10;
        s = 3'd1; #10;
        s = 3'd2; #10;
        s = 3'd3; #10;
        $finish;
    end

endmodule