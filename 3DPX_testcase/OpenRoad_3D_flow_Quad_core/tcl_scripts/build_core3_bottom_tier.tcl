set data_path "./data"
set scripts_path "./tcl_scripts"
set outputs_path "./outputs"

set_thread_count 12

source $data_path/Nangate45_3D_PDK_cores_creation_bottom_tier.vars

set design "RocketTile_2"
set top_module "RocketTile_2"
set sdc_file "../do_synth/results/RocketTile.sdc"
read_def $outputs_path/Core3_macro_placement_fixed.def
read_sdc $sdc_file


foreach layer_adjustment $global_routing_layer_adjustments {
  lassign $layer_adjustment layer adjustment
  set_global_routing_layer_adjustment $layer $adjustment
}
set_routing_layers -signal $global_routing_layers -clock $global_routing_clock_layers
set_macro_extension 2

source $layer_rc_file
set_wire_rc -signal -layer $wire_rc_layer
set_wire_rc -clock  -layer $wire_rc_layer_clk
set_dont_use $dont_use

global_placement -density 0.7 -pad_left $global_place_pad -pad_right $global_place_pad -timing_driven -disable_revert_if_diverge

# IO Placement
set_io_pin_constraint -region right:* -region bottom:* -pin_names *
place_pins -hor_layers $io_placer_hor_layer -ver_layers $io_placer_ver_layer

detailed_placement

# ################################################################
# # Repair max slew/cap/fanout violations and normalize slews

# estimate_parasitics -placement

# repair_design -slew_margin $slew_margin -cap_margin $cap_margin

# repair_tie_fanout -separation $tie_separation $tielo_port
# repair_tie_fanout -separation $tie_separation $tiehi_port

# utl::metric "RSZ::repair_design_buffer_count" [rsz::repair_design_buffer_count]
# utl::metric "RSZ::max_slew_slack" [expr [sta::max_slew_check_slack_limit] * 100]
# utl::metric "RSZ::max_fanout_slack" [expr [sta::max_fanout_check_slack_limit] * 100]
# utl::metric "RSZ::max_capacitance_slack" [expr [sta::max_capacitance_check_slack_limit] * 100]


# ################################################################
# # Clock Tree Synthesis

# # Clone clock tree inverters next to register loads
# # so cts does not try to buffer the inverted clocks.
# repair_clock_inverters

# clock_tree_synthesis -root_buf $cts_buffer -buf_list $cts_buffer \
#   -sink_clustering_enable \
#   -sink_clustering_max_diameter $cts_cluster_diameter

# # CTS leaves a long wire from the pad to the clock tree root.
# repair_clock_nets

# ################################################################
# # Setup/hold timing repair

# set_propagated_clock [all_clocks]

# # Global routing is fast enough for the flow regressions.
# # It is NOT FAST ENOUGH FOR PRODUCTION USE.
# set repair_timing_use_grt_parasitics 0
# if { $repair_timing_use_grt_parasitics } {
#   # Global route for parasitics - no guide file requied
#   global_route -congestion_iterations 100
#   estimate_parasitics -global_routing
# } else {
#   estimate_parasitics -placement
# }

# repair_timing -skip_gate_cloning

# utl::metric "RSZ::worst_slack_min" [sta::worst_slack -min]
# utl::metric "RSZ::worst_slack_max" [sta::worst_slack -max]
# utl::metric "RSZ::tns_max" [sta::total_negative_slack -max]
# utl::metric "RSZ::hold_buffer_count" [rsz::hold_buffer_count]

# detailed_placement

write_def $outputs_path/Core3_post_place.def
write_verilog -remove_cells $filler_cells $outputs_path/Core3_post_place.v

exit