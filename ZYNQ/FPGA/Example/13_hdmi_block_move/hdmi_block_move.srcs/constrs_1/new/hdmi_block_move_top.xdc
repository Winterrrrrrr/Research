#ϵͳʱ�Ӻ͸�λ
set_property -dict {PACKAGE_PIN U18  IOSTANDARD LVCMOS33} [get_ports sys_clk]
set_property -dict {PACKAGE_PIN N16  IOSTANDARD LVCMOS33} [get_ports sys_rst_n]

#HDMI
set_property -dict {PACKAGE_PIN J20  IOSTANDARD TMDS_33 } [get_ports {tmds_data_p[2]}]
set_property -dict {PACKAGE_PIN K19  IOSTANDARD TMDS_33 } [get_ports {tmds_data_p[1]}]
set_property -dict {PACKAGE_PIN G19  IOSTANDARD TMDS_33 } [get_ports {tmds_data_p[0]}]
set_property -dict {PACKAGE_PIN J18  IOSTANDARD TMDS_33 } [get_ports tmds_clk_p]
