# Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { sys_clk }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { sys_clk }];


##Buttons

set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { reset }]; #IO_L16P_T2_35 Sch=ck_rst


##USB-RS232 Interface

set_property -dict { PACKAGE_PIN D10   IOSTANDARD LVCMOS33 } \
		[get_ports { usb_uart_rxd }]; #IO_L19N_T3_VREF_16 Sch=uart_rxd_out
set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } \
		[get_ports { usb_uart_txd }]; #IO_L14N_T2_SRCC_16 Sch=uart_txd_in
