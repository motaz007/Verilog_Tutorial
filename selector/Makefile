SHELL := /bin/bash
IP_NAME_LC := uart
comp:
	iverilog -o select.vpp select.v select_tb.v


run:
	vvp select.vpp


wave:
	gtkwave select.vcd &



clean:
	rm *.vpp *.vcd

