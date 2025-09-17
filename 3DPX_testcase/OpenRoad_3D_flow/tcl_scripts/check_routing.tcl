set data_path "./data"
set scripts_path "./tcl_scripts"
set outputs_path "./outputs"

set_thread_count 56

source $data_path/Nangate45_3D_PDK.vars

set design "DigitalTop"
set top_module "DigitalTop"
set sdc_file "../do_synth/results/DualRocket.sdc"

read_def $outputs_path/DigitalTop_post_cts_all_legal_without_covers.def
read_sdc $sdc_file

source $tracks_file

################################################################
# Repair max slew/cap/fanout violations and normalize slews
source $layer_rc_file
set_wire_rc -signal -layer $wire_rc_layer
set_wire_rc -clock  -layer $wire_rc_layer_clk
set_dont_use $dont_use

estimate_parasitics -placement

# post resize timing report (ideal clocks)
report_worst_slack -min -digits 3
report_worst_slack -max -digits 3
report_tns -digits 3
report_check_types -max_slew -max_capacitance -max_fanout -violators

utl::metric "RSZ::repair_design_buffer_count" [rsz::repair_design_buffer_count]
utl::metric "RSZ::max_slew_slack" [expr [sta::max_slew_check_slack_limit] * 100]
utl::metric "RSZ::max_fanout_slack" [expr [sta::max_fanout_check_slack_limit] * 100]
utl::metric "RSZ::max_capacitance_slack" [expr [sta::max_capacitance_check_slack_limit] * 100]

set_propagated_clock [all_clocks]

# Post timing repair.
report_worst_slack -min -digits 3
report_worst_slack -max -digits 3
report_tns -digits 3
report_check_types -max_slew -max_capacitance -max_fanout -violators -digits 3

utl::metric "RSZ::worst_slack_min" [sta::worst_slack -min]
utl::metric "RSZ::worst_slack_max" [sta::worst_slack -max]
utl::metric "RSZ::tns_max" [sta::total_negative_slack -max]
utl::metric "RSZ::hold_buffer_count" [rsz::hold_buffer_count]

# Capture utilization before fillers make it 100%
utl::metric "DPL::utilization" [format %.1f [expr [rsz::utilization] * 100]]
utl::metric "DPL::design_area" [sta::format_area [rsz::design_area] 0]

################################################################
# Global routing


set status [catch {pin_access -bottom_routing_layer $min_routing_layer -top_routing_layer $max_routing_layer } err]

set route_guide [make_result_file ${design}_${platform}.route_guide]
global_route -guide_file $route_guide -congestion_iterations 100 -verbose
  
# detailed_route -no_pin_access -bottom_routing_layer $min_routing_layer -top_routing_layer $max_routing_layer -verbose 1

write_def $outputs_path/DigitalTop_post_routing.def
