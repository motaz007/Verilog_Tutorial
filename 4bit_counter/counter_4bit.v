module counter_4bit(
    input clock,
    input reset,
    input enable,
    output [3:0] counter_out
);
reg [3:0] counter_out;
//reg [3:0] count;

always @(posedge clock)
begin:COUNTER
    if(reset) begin
         counter_out <= 4'b0000;
    end
    else if (enable) begin
        counter_out <= counter_out + 1;
    end
    // counter_out <= count;
end

endmodule