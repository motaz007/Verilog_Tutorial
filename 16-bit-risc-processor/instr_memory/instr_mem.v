


module instr_mem (/*AUTOARG*/
   // Outputs
   instruction,
   // Inputs
   PC
   );

   input [15:0] PC;
  
   
   output [15:0] instruction;


   /*AUTOINPUT*/
   /*AUTOOUTPUT*/

   /*AUTOREG*/
   // Beginning of automatic regs (for this module's undeclared outputs)
   reg [15:0]		instruction;
   // End of automatics
   /*AUTOWIRE*/

   always @ (PC) 
     begin

	// case(PC)

	// endcas
	  
      
     end

   
   // Dump all nets to a vcd file called tb.vcd
   initial begin
      $display("-I- VCD dump started...");
      $dumpfile("instr_mem.vcd");
      $dumpvars(0,instr_mem);
   end

endmodule // select
/*
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */





