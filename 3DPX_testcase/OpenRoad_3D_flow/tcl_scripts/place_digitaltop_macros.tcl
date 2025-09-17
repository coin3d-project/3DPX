set data_path "./data"
set scripts_path "./tcl_scripts"
set outputs_path "./outputs"

set_thread_count 12

source $data_path/Nangate45_3D_PDK_cores_creation_macros.vars
source $data_path/DigitalTop.design.vars

initialize_floorplan -die_area {0 0 1180 2510} -core_area {20 20 1160 2490} -site $site
source $tracks_file

read_def -incremental $outputs_path/Design_top_placed_cores.def

################################################################
# IO Placement (random)
place_pins -random -hor_layers $io_placer_hor_layer -ver_layers $io_placer_ver_layer


################################################################
# Macro Placement

source $outputs_path/Macros_locations.tcl

place_macro -macro coh_wrapper_l2_inclusive_cache_bank_sched/bankedStore_cc_banks_0_cc_banks_0_ext_mem_0_0 -location {21 21} -orientation R0 -allow_overlap
place_macro -macro coh_wrapper_l2_inclusive_cache_bank_sched/bankedStore_cc_banks_2_cc_banks_0_ext_mem_0_0 -location {950 21} -orientation R0 -allow_overlap
place_macro -macro coh_wrapper_l2_inclusive_cache_bank_sched/bankedStore_cc_banks_1_cc_banks_0_ext_mem_0_0 -location {21 21} -orientation R0 -allow_overlap
place_macro -macro coh_wrapper_l2_inclusive_cache_bank_sched/bankedStore_cc_banks_3_cc_banks_0_ext_mem_0_0 -location {950 21} -orientation R0 -allow_overlap

place_macro -macro coh_wrapper_l2_inclusive_cache_bank_sched/directory_cc_dir_cc_dir_ext_mem_0_0 -location {592.75 1076.0} -allow_overlap
place_macro -macro coh_wrapper_l2_inclusive_cache_bank_sched/directory_cc_dir_cc_dir_ext_mem_0_1 -location {644 1076.0} -allow_overlap
place_macro -macro coh_wrapper_l2_inclusive_cache_bank_sched/directory_cc_dir_cc_dir_ext_mem_0_2 -location {695.25 1076.0} -allow_overlap
place_macro -macro coh_wrapper_l2_inclusive_cache_bank_sched/directory_cc_dir_cc_dir_ext_mem_0_3 -location {746.5 1076.0} -allow_overlap
place_macro -macro coh_wrapper_l2_inclusive_cache_bank_sched/directory_cc_dir_cc_dir_ext_mem_0_4 -location {797.75 1076.0} -allow_overlap

place_macro -macro bank/ram_mem_mem_ext_mem_0_0 -location { 490.25 768 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_1_0 -location { 541.5 768 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_2_0 -location { 592.75 768 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_3_0 -location { 644 768 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_4_0 -location { 695.25 768 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_5_0 -location { 746.5 768 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_6_0 -location { 797.75 768 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_7_0 -location { 849 768 } -orientation N -allow_overlap

place_macro -macro bank/ram_mem_mem_ext_mem_0_1 -location { 490.25 1384 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_1_1 -location { 541.5 1384 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_2_1 -location { 592.75 1384 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_3_1 -location { 644 1384 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_4_1 -location { 695.25 1384 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_5_1 -location { 746.5 1384 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_6_1 -location { 797.75 1384 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_7_1 -location { 849 1384 } -orientation N -allow_overlap

write_def $outputs_path/DigitalTop_macro_placement.def

exit