set data_path "./data"
set scripts_path "./tcl_scripts"
set outputs_path "./outputs"

set_thread_count 24

source $data_path/Nangate45_3D_PDK_cores_creation_macros.vars
source $data_path/DigitalTop.design.vars

initialize_floorplan -die_area {0 0 1486 2510} -core_area {20 20 1466 2490} -site $site

write_def $outputs_path/Design_top_preplace.def

exit
