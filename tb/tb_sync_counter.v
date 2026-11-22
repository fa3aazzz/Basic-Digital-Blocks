`timescale 1ns / 1ps

module tb_sync_counter;
    reg clk;
    reg reset;
    wire [3:0] q;

    sync_counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );


    always #5 clk = ~clk;

    initial begin
       
        clk = 0;
        reset = 1;
        #12;
        reset = 0;
        #160;
        $finish;
    end

endmodule
