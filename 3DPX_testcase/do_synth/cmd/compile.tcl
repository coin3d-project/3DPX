# Synthesis
syn_generic
syn_map 


# Reports
report_area
report_timing
report_gates

#report clock_gating > reports/compile.clock_gating_$c.rpt

write_hdl > results/netlist.v
write_sdc > results/netlist.sdc
#write_db mac -all_root_attributes -to_file mac.tcl
