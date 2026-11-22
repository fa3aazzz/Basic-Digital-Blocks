`timescale 1ns / 1ps

module tb_logicgates();
    reg a,b;
    wire y1, y2, y3, y4, y5, y6, y7;
    logicgates uut (a,b,y1,y2,y3,y4,y5,y6,y7);
    initial
        begin
        #10 a=0; b=0;
        #10 a=0; b=1;
        #10 a=1; b=0;
        #10 a=1; b=1;
        #10 $finish;
        end
endmodule
