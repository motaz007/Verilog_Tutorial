//defines the time scale of simulation, it will run in steps
//of 1ns and has a precesion value of 1ps
`timescale 1ns / 1ps
module testbench;
    //inputs
    reg clock;
    reg reset;
    reg en;
    //output
    wire [3:0] out;
    //instantiae the DUT
    counter_4bit uut(
        .clock(clock),
        .reset(reset),
        .enable(en),
        .counter_out(out)
    );

    initial begin
        //initialize inputs
      $display ("time\t clk reset enable counter");	
    $monitor ("%g\t %b   %b     %b      %b", $time, clock, reset, en, out);	
    clock = 1;       // initial value of clock
    reset = 0;       // initial value of reset
    en = 0;      // initial value of enable
     #5  reset = 1;    // Assert the reset
     #10  reset = 0;   // De-assert the reset
     #10  en = 1;  // Assert enable
     #100  en = 0; // De-assert enable
     #5  $finish;      // Terminate simulation
  end
       
       always begin
            #5 clock = ~clock;
        end

          // Dump all nets to a vcd file called tb.vcd
  initial begin
     $display("-I- VCD dump started...");
     $dumpfile("tb.vcd");
     $dumpvars(0,testbench);
  end

endmodule