`timescale 1ns / 1ps

module tb_full_adder_4bit_st;
    reg  [3:0] a, b;
    reg cin;
    wire [3:0] s;
    wire cout;

    full_adder_4bit_st uut (
        .s(s), .cout(cout), .a(a), .b(b), .cin(cin)
        );

    initial begin
        a = 4'd0; b = 4'd0; cin = 1'b0; #10;
        a = 4'd3; b = 4'd4; cin = 1'b0; #10;
        a = 4'd7; b = 4'd8; cin = 1'b0; #10;
        a = 4'd7; b = 4'd8; cin = 1'b1; #10;
        a = 4'd15; b = 4'd15; cin = 1'b0; #10;
        a = 4'd15; b = 4'd15; cin = 1'b1; #10;
        $finish;
    end

endmodule
