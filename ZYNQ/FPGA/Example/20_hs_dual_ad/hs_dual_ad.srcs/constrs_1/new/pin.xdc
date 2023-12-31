#ʱ��Լ��
create_clock -period 20.000 -name sys_clk [get_ports sys_clk]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U18} [get_ports sys_clk]
#######################SPI Configurate Setting##################
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
#ad_data0
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W16} [get_ports {ad0_data[0]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T15} [get_ports {ad0_data[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y16} [get_ports {ad0_data[4]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U17} [get_ports {ad0_data[6]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V18} [get_ports {ad0_data[8]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN R18} [get_ports ad0_otr]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y19} [get_ports ad0_clk]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V16} [get_ports {ad0_data[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T14} [get_ports {ad0_data[3]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y17} [get_ports {ad0_data[5]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T16} [get_ports {ad0_data[7]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V17} [get_ports {ad0_data[9]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T17} [get_ports {ad0_oe}]
#ad_data1
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN P16} [get_ports {ad1_data[0]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W19} [get_ports {ad1_data[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN R17} [get_ports {ad1_data[4]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V20} [get_ports {ad1_data[6]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN N17} [get_ports {ad1_data[8]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN N18} [get_ports ad1_otr]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U20} [get_ports ad1_clk]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN P15} [get_ports {ad1_data[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W18} [get_ports {ad1_data[3]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN R16} [get_ports {ad1_data[5]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W20} [get_ports {ad1_data[7]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN P18} [get_ports {ad1_data[9]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN P19} [get_ports {ad1_oe}]

