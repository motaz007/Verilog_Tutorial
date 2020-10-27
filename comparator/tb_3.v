//defines the time scale of simulation, it will run in steps
//of 1ns and has a precesion value of 1ps
`timescale 1ns / 1ps
module testbench;
    //inputs
    reg x;
    reg y;
    reg s;
    //output
    wire z;
    //instantiae the DUT
    comparator_3 uut(
        .x(x),
        .y(y),
        .s(s),
        .z(z)
    );

    initial begin
        //initialize inputs
    x = 0;
    y = 0;
    s = 0;

    #10 x = 1;
    #10 y = 1;
    #10 s = 1;
    #20 x = 0;
    #20 y = 0;
    #20 s = 0;
    #40 ;
    end

        initial begin
            $monitor("x=%d,y=%d,s=%d,z=%d \n",x,y,s,z);
        end

endmodule