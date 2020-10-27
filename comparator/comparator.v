module comparator(
    input x,
    input y,
    output z
);

assign z = (~x & ~y) | (x & y);

endmodule

module comparator_2(
    input x,
    input y,
    output z
);

assign z = x >= y;

endmodule

module comparator_3(
    input x,
    input y,
    input s,
    output z
);

assign z = (x*4+y*2+s) > 5 ;

endmodule