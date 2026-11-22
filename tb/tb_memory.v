`timescale 1ns / 1ps

module tb_memory;

    reg we_a, we_b, clk;
    reg [7:0] data_a, data_b;
    reg [7:0] addr_a, addr_b;
    wire [7:0] q_a, q_b;

    memory uut (
        .we_a(we_a), .we_b(we_b), .clk(clk),
        .data_a(data_a), .data_b(data_b),
        .addr_a(addr_a), .addr_b(addr_b),
        .q_a(q_a), .q_b(q_b)
    );

    initial clk = 1'b0;
    always #5 clk = ~clk;

    initial begin
        we_a = 1'b0;
        we_b = 1'b0;
        data_a = 8'h00;
        data_b = 8'h00;
        addr_a = 8'd0;
        addr_b = 8'd1;
        #10;

        we_a = 1'b1;
        addr_a = 8'd2;
        data_a = 8'hAA;

        we_b = 1'b1;
        addr_b = 8'd5;
        data_b = 8'h55;
        #10;

        we_a = 1'b0;
        we_b = 1'b0;
        addr_a = 8'd2;
        addr_b = 8'd5;
        #20;

        addr_a = 8'd10;
        addr_b = 8'd2;
        #20;
        $finish;
    end

endmodule