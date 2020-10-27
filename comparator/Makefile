comp1:
	iverilog -o tb.vpp comparator.v tb.v
comp2:
	iverilog -o tb.vpp comparator.v tb_2.v
comp3:
	iverilog -o tb.vpp comparator.v tb_3.v


run:
	vvp tb.vpp

clean:
	rm *.vpp