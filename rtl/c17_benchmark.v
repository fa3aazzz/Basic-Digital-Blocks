module c17_benchmark (
    input a,b,c,d,e,
    output j,k
    );
    wire f,g,h,i;

    assign f = ~(a & c);
    assign g = ~(b & h);
    assign h = ~(d & c);
    assign i = ~(h & e);
    assign j = ~(f & g);
    assign k = ~(g & i);

endmodule
