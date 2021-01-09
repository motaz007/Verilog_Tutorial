`timescale 1ns / 1ps


module select_tb;
   reg in1, in2, cntrl;
   wire out;
      

   /*AUTOREG*/
   /*AUTOWIRE*/

   select uut(
	      .in1(in1),
	      .in2(in2),
	      .cntrl(cntrl),
	      .sel(out)	      
	      );
   
   

   initial
     begin

	cntrl = 0;
	in1 = 0;
	in2 = 0;

	#1;
	in1=1;
	in2=0;
	
	#1;
	in1 =1;
	in2 =1;

	#1;
	in1 =0;
	in2 =1;

	#2;
	cntrl =1;
	in1 =1;
	in2 =0;

	#2;
	in2 = 1;
	
	#3 $finish;
     end // initial begin


   
endmodule // select_tb
/*
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */
