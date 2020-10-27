//defines the time scale of simulation, it will run in steps
//of 1ns and has a precesion value of 1ps
`timescale 1ns / 1ps
module testbench;
    //inputs
    reg x;
    reg y;
    //output
    wire z;
    //instantiae the DUT
    comparator_2 uut(
        .x(x),
        .y(y),
        .z(z)
    );

    initial begin
        //initialize inputs
    x = 0;
    y = 0;

    #10 x = 1;
    #10 y = 1;
    #20 x = 0;
    #20 y = 1;
    #40 ;
    end

        initial begin
            $monitor("x=%d,y=%d,z=%d \n",x,y,z);
        end

endmodule