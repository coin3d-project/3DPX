set data_path "./data"
set scripts_path "./tcl_scripts"
set outputs_path "./outputs"

set_thread_count 12

source $data_path/Nangate45_3D_PDK_top_tier.vars

read_def $outputs_path/DigitalTop_post_cts_unfixed_top_tier.def

# set_placement_padding -global -left $detail_place_pad -right $detail_place_pad
# global_placement -incremental -density 0.4
detailed_placement -max_displacement 1000

write_def $outputs_path/DigitalTop_post_cts_top_legal.def
write_verilog -remove_cells $filler_cells $outputs_path/DigitalTop_post_place.v

exit