module seq_001(det,inp,clk,rst);
    input inp,clk,rst;
    output reg det;
    
    parameter s0=2'b00, s1=2'b01,s2=2'b10,s3=2'b11;
    reg [1:0] pr_state,next_state;
    
    always@(posedge clk)
        if(rst)
            pr_state<=s0;
        else
            pr_state<=next_state;
            
    always@(inp,pr_state)
        case(pr_state)
            s0: if(inp)
                    next_state=s0;
                else
                    next_state=s1;
            s1: if(inp)
                    next_state=s0;
                else
                    next_state=s2;    
            s2: if(inp)
                    next_state=s3;
                else
                    next_state=s2;
            s3: if(inp)
                    next_state=s0;
                else
                     next_state=s1;
            default: next_state=s0;
        endcase
            
    always@(pr_state)
        case(pr_state)
            s0: det=0;
            s1: det=0;
            s2: det=0;
            s3: det=1;
            default: det=0;
        endcase
endmodule
