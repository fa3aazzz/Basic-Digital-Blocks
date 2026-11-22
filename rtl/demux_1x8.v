module demux_1x8(
    input i,
    input [2:0] s,
    output reg [7:0] out
    );
    always @(*) begin
        out = 8'd0;
        case (s)
            3'd0: out[0] = i;
            3'd1: out[1] = i;
            3'd2: out[2] = i;
            3'd3: out[3] = i;
            3'd4: out[4] = i;
            3'd5: out[5] = i;
            3'd6: out[6] = i;
            3'd7: out[7] = i;
            default: out = 8'd0;
        endcase
    end
endmodule
