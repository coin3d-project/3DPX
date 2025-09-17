set data_path "./data"
set scripts_path "./tcl_scripts"
set outputs_path "./outputs"

set_thread_count 12

source $data_path/Nangate45_3D_PDK_cores_creation_macros.vars
source $data_path/ScratchpadBank.design.vars

initialize_floorplan -die_area {0.0 0.0 699.38 699.38} -core_area {20.14 21.00 679.25 679.00} -site $site
source $tracks_file
remove_buffers

################################################################
# IO Placement (random)
place_pins -random -hor_layers $io_placer_hor_layer -ver_layers $io_placer_ver_layer


################################################################
# Macro Placement
if { [have_macros] } {
  lassign $macro_place_halo halo_x halo_y
  set report_dir [make_result_file ${design}_${platform}_rtlmp]
  rtl_macro_placer 
}


write_def $outputs_path/ScratchpadBank_macro_placement.def

exit
