set data_path "./data"
set scripts_path "./tcl_scripts"
set outputs_path "./outputs"

set_thread_count 12

source $data_path/Nangate45_3D_PDK_shrinked_macros.vars

set design "DigitalTop"
set top_module "DigitalTop"
set sdc_file "../do_synth/results/DualRocket.sdc"

read_def $outputs_path/Design_top_placed_cores_with_macros.def
read_sdc $sdc_file


################################################################
# Tapcell insertion
eval tapcell $tapcell_args

################################################################
# Power distribution network insertion
source $pdn_cfg
pdngen

write_def $outputs_path/DigitalTop_post_pdn.def

exit