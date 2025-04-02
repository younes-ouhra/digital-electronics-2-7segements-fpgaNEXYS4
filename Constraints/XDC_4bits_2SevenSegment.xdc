set_property IOSTANDARD LVCMOS33 [get_ports {ANODES[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ANODES[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ANODES[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ANODES[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ANODES[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ANODES[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ANODES[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ANODES[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CATHODES[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CATHODES[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CATHODES[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CATHODES[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CATHODES[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CATHODES[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CATHODES[0]}]
set_property PACKAGE_PIN L3 [get_ports {CATHODES[6]}]
set_property PACKAGE_PIN N1 [get_ports {CATHODES[5]}]
set_property PACKAGE_PIN L5 [get_ports {CATHODES[4]}]
set_property PACKAGE_PIN L4 [get_ports {CATHODES[3]}]
set_property PACKAGE_PIN K3 [get_ports {CATHODES[2]}]
set_property PACKAGE_PIN M2 [get_ports {CATHODES[1]}]
set_property PACKAGE_PIN L6 [get_ports {CATHODES[0]}]
set_property PACKAGE_PIN M1 [get_ports {ANODES[7]}]
set_property PACKAGE_PIN L1 [get_ports {ANODES[6]}]
set_property PACKAGE_PIN N4 [get_ports {ANODES[5]}]
set_property PACKAGE_PIN N2 [get_ports {ANODES[4]}]
set_property PACKAGE_PIN N5 [get_ports {ANODES[3]}]
set_property PACKAGE_PIN M3 [get_ports {ANODES[2]}]
set_property PACKAGE_PIN M6 [get_ports {ANODES[1]}]
set_property PACKAGE_PIN N6 [get_ports {ANODES[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property PACKAGE_PIN E3 [get_ports clk]

set_property IOSTANDARD LVCMOS33 [get_ports {SWs[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SWs[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SWs[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SWs[3]}]
set_property PACKAGE_PIN U9 [get_ports {SWs[0]}]
set_property PACKAGE_PIN U8 [get_ports {SWs[1]}]
set_property PACKAGE_PIN R7 [get_ports {SWs[2]}]
set_property PACKAGE_PIN R6 [get_ports {SWs[3]}]
create_interface interface_1
set_property INTERFACE interface_1 [get_ports { SWs[3] SWs[2] SWs[1] SWs[0] }]
