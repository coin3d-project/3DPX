set data_path "./data"
set scripts_path "./tcl_scripts"
set outputs_path "./outputs"

set_thread_count 12

source $data_path/Nangate45_3D_PDK_top_tier.vars

set design "DigitalTop"
set top_module "DigitalTop"
set sdc_file "../do_synth/results/DualRocket.sdc"

read_def $outputs_path/DigitalTop_macro_placement_with_covers.def
read_sdc $sdc_file

foreach layer_adjustment $global_routing_layer_adjustments {
  lassign $layer_adjustment layer adjustment
  set_global_routing_layer_adjustment $layer $adjustment
}
set_routing_layers -signal $global_routing_layers \
  -clock $global_routing_clock_layers
set_macro_extension 2

source $layer_rc_file
set_wire_rc -signal -layer $wire_rc_layer
set_wire_rc -clock  -layer $wire_rc_layer_clk
set_dont_use $dont_use

# gpl::set_overflow_cmd 0.188
set status [catch {global_placement -routability_driven -density 0.5 -pad_left $global_place_pad -pad_right $global_place_pad -disable_revert_if_diverge } err]

# IO Placement
set status [catch {place_pins -hor_layers $io_placer_hor_layer -ver_layers $io_placer_ver_layer} err]

detailed_placement -max_displacement 1000

write_def $outputs_path/DigitalTop_post_place.def
write_verilog -remove_cells $filler_cells $outputs_path/DigitalTop_post_place.v

exit