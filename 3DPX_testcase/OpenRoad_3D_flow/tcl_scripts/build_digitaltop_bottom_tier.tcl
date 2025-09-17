set data_path "./data"
set scripts_path "./tcl_scripts"
set outputs_path "./outputs"

set_thread_count 24

source $data_path/Nangate45_3D_PDK_digitaltop_bottom_tier.vars

set design "DigitalTop"
set top_module "DigitalTop"
set sdc_file "../do_synth/results/DualRocket.sdc"

read_def $outputs_path/DigitalTop_macro_placement_unfixed.def
read_sdc $sdc_file

source $tracks_file

set status [catch {global_placement -routability_driven -incremental -density 0.7 -disable_revert_if_diverge } err]
detailed_placement -max_displacement 1000
write_def $outputs_path/DigitalTop_bottom_tier_routability_checked.def

exit