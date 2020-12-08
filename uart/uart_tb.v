//defines the time scale of simulation, it will run in steps
//of 1ns and has a precesion value of 1ps
`timescale 1ns / 1ps
module testbench;


    //inputs
    reg reset;
    reg txclk;   
    reg ld_tx_data;   
    reg [7:0] tx_data; 
    reg tx_enable;    
    //reg tx_out ; 
    //reg tx_empty;    
    //reg wr_en;

    //output
    wire tx_out;
    wire tx_empty;
    //wire [DATA_WIDTH-1:0] data_out;
    //instantiae the DUT
    uart uut(
.reset(reset)           ,
.txclk(txclk)           ,
.ld_tx_data(ld_tx_data) ,
.tx_data(tx_data)       ,
.tx_enable (tx_enable)  ,
.tx_out (tx_out)        ,
.tx_empty(tx_empty)     ,
.rxclk       ()         ,
.uld_rx_data ()         ,
.rx_data     ()         ,
.rx_enable   ()         ,
.rx_in       ()         ,
.rx_empty    ()
);




    task tx;
      begin
      @(posedge txclk) 
        ld_tx_data = 1;
      @(posedge txclk) 
        tx_enable = 1;
      end
    endtask
/*
    task do_write;
      // input clock;
      input [7:0] data;
      begin
      @(posedge clk) 
        data_in = data;
        wr_cs = 1;
        wr_en = 1;
      @(posedge clk) 
        wr_cs = 0;
        wr_en = 0;

      end
    endtask
*/
      initial begin
        //initialize inputs
    
    txclk = 1;       // initial value of clock
    reset = 0;       // initial value of reset
    #1 reset = 1;    // Assert the reset
    #1;  
     reset = 0;   // De-assert the reset
     tx_data = 7;
     tx();

   
     #200  $finish;      // Terminate simulation
  end
       





       always begin
            #10 txclk = ~txclk;
        end

          // Dump all nets to a vcd file called tb.vcd
  initial begin
     $display("-I- VCD dump started...");
     $dumpfile("uart_tb.vcd");
     $dumpvars(0,testbench);
  end

endmodule