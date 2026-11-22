`timescale 1ns / 1ps

module tb_mux_8x1;
    reg i0,i1,i2,i3,i4,i5,i6,i7;
    reg [2:0] s;
    wire y;
    mux_8x1 dut (i0,i1,i2,i3,i4,i5,i6,i7,s,y);
    initial
        begin
            {i0,i1,i2,i3,i4,i5,i6,i7} = 8'b10101010;
            s = 3'd0; #10;
            s = 3'd1; #10;
            s = 3'd2; #10;
            s = 3'd3; #10;
            s = 3'd4; #10;
            s = 3'd5; #10;
            s = 3'd6; #10;
            s = 3'd7; #10;
            $finish;
        end
endmodule
