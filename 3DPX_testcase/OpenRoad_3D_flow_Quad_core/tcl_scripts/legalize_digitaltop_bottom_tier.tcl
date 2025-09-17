set data_path "./data"
set scripts_path "./tcl_scripts"
set outputs_path "./outputs"

set_thread_count 12

source $data_path/Nangate45_3D_PDK_bottom_tier.vars

read_def $outputs_path/DigitalTop_post_cts_bottom_unfixed.def

# set_placement_padding -global -left $detail_place_pad -right $detail_place_pad
detailed_placement -max_displacement 1000

write_def $outputs_path/DigitalTop_post_cts_all_legal.def
write_verilog -remove_cells $filler_cells $outputs_path/DigitalTop_post_place.v

exit