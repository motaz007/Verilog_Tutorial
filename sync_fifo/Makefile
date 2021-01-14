comp:
	iverilog -o tb_sram.vpp ram_dp_sr_sw.v syn_fifo_syn_RAM.v syn_fifo_syn_RAM_tb.v


run:
	vvp tb_sram.vpp



wave:
	gtkwave tbs.vcd &


clean:
	rm *.vpp *.vcd