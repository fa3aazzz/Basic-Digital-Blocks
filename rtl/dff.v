module dff(
    input d,clk,rst,set,
    output reg q
    );
    
    always@(posedge clk, posedge rst, negedge set)
        begin
            if(rst)
                q <= 1'b0;
            else if(!set)
                q <= 1'b1;
            else
                q <= d;
        end
endmodule
