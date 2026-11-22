`timescale 1ns / 1ps

module tb_bounded_counter;
    reg clk;
    reg rst;
    reg load;
    reg u_d;
    reg [5:0] data;
    wire [5:0] count;

    bounded_counter uut (
        .count(count), .u_d(u_d), .clk(clk), .rst(rst), .data(data),
        .load(load)
    );
    
    initial clk = 1'b0;
    always #5 clk = ~clk;

    initial begin
        rst = 1'b1;
        load = 1'b0;
        u_d = 1'b1;
        data = 6'd25;
        #20;

        rst = 1'b0;
        u_d = 1'b1;
        #50;

        load = 1'b1;
        #10;
        load = 1'b0;
        #30;

        u_d = 1'b0;
        #50;
        $finish;
    end

endmodule