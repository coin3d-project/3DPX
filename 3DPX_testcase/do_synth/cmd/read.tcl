#read_hdl -sv -f /home/agids/usr/agarcia/WORK/chipyard/do_mysystems_netlist/generated-src/chipyard.harness.TestHarness.chipyard.GemminiRocketConfig/chipyard.harness.TestHarness.chipyard.GemminiRocketConfig.top.f   /home/agids/usr/agarcia/WORK/chipyard/do_mysystems_netlist/generated-src/chipyard.harness.TestHarness.chipyard.GemminiRocketConfig/gen-collateral/chipyard.harness.TestHarness.chipyard.GemminiRocketConfig.top.mems.v

read_hdl -sv -f /home/agids/usr/agarcia/WORK/chipyard/do_mysystems_netlist/generated-src/chipyard.harness.TestHarness.chipyard.RocketConfig/chipyard.harness.TestHarness.chipyard.RocketConfig.top.f   /home/agids/usr/agarcia/WORK/chipyard/do_mysystems_netlist/generated-src/chipyard.harness.TestHarness.chipyard.RocketConfig/gen-collateral/chipyard.harness.TestHarness.chipyard.RocketConfig.top.mems.v

elaborate

read_sdc def.sdc



report_hiearchy
check_design

#set all_inputs [get_ports -filter {direction == in}]
#set data_inputs [filter_collection $all_inputs { !(name =~ "clock") && !(name =~ "reset") }]
