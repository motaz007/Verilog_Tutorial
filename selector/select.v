


module select (/*AUTOARG*/
   // Outputs
   sel,
   // Inputs
   in1, in2, cntrl
   );

   input in1;
   input in2;
   input cntrl;
   
   output sel;


   /*AUTOINPUT*/
   /*AUTOOUTPUT*/

   /*AUTOREG*/
   // Beginning of automatic regs (for this module's undeclared outputs)
   reg			sel;
   // End of automatics
   /*AUTOWIRE*/

   always @ * 
     begin

	case(cntrl)
	 1'b0 : begin
	    sel <= in1;
	 end
	  1'b1:begin
	     sel <= in2;
	  end 
	  
	  default: begin
	     sel <= 1'b0;
	  end

	endcase 
      
     end

   
   // Dump all nets to a vcd file called tb.vcd
   initial begin
      $display("-I- VCD dump started...");
      $dumpfile("select.vcd");
      $dumpvars(0,select);
   end

endmodule // select
/*
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */





