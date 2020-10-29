comp:
	iverilog -o tb.vpp counter_4bit.v tb.v

run:
	vvp tb.vpp

wave:
	gtkwave tb.vcd &


clean:
	rm *.vpp *.vcd