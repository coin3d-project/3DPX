set data_path "./data"
set scripts_path "./tcl_scripts"
set outputs_path "./outputs"

set_thread_count 12

source $data_path/Nangate45_3D_PDK_cores_creation_macros.vars
source $data_path/RocketTile3.design.vars

initialize_floorplan -die_area {0 0 2410 2500} -core_area {20 20 2390 2480} -site $site
source $tracks_file
remove_buffers

################################################################
# IO Placement (random)
initialize_floorplan -die_area {0 0 718 1230} -core_area {0 0 718 1230} -site $site


################################################################
# Macro Placement
if { [have_macros] } {
  lassign $macro_place_halo halo_x halo_y
  set report_dir [make_result_file ${design}_${platform}_rtlmp]
  rtl_macro_placer 
}


write_def $outputs_path/Core3_macro_placement.def

exit
