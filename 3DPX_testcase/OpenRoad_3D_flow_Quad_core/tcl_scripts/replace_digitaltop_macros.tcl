set data_path "./data"
set scripts_path "./tcl_scripts"
set outputs_path "./outputs"

set_thread_count 12

source $data_path/Nangate45_3D_PDK_cores_creation_macros.vars

set design "TilePRCIDomain_core1"
set top_module "TilePRCIDomain_core1"
set sdc_file "../do_synth/results/TilePRCIDomain.sdc"
read_def $outputs_path/Design_top_placed_cores.def
read_sdc $sdc_file


################################################################
# Macro Placement

source $outputs_path/Core1_Macros_locations.tcl
source $outputs_path/Core2_Macros_locations.tcl
source $outputs_path/Core3_Macros_locations.tcl
source $outputs_path/Core4_Macros_locations.tcl

place_macro -macro coh_wrapper_l2_inclusive_cache_bank_sched/bankedStore_cc_banks_0_cc_banks_0_ext_mem_0_0 -location {21 21} -orientation R0 -allow_overlap
place_macro -macro coh_wrapper_l2_inclusive_cache_bank_sched/bankedStore_cc_banks_2_cc_banks_0_ext_mem_0_0 -location {230 21} -orientation R0 -allow_overlap
place_macro -macro coh_wrapper_l2_inclusive_cache_bank_sched/bankedStore_cc_banks_1_cc_banks_0_ext_mem_0_0 -location {1227 21} -orientation R0 -allow_overlap
place_macro -macro coh_wrapper_l2_inclusive_cache_bank_sched/bankedStore_cc_banks_3_cc_banks_0_ext_mem_0_0 -location {1018 21} -orientation R0 -allow_overlap

place_macro -macro coh_wrapper_l2_inclusive_cache_bank_sched/directory_cc_dir_cc_dir_ext_mem_0_0 -location {951.5 1080.0} -allow_overlap
place_macro -macro coh_wrapper_l2_inclusive_cache_bank_sched/directory_cc_dir_cc_dir_ext_mem_0_1 -location {1002.75 1080.0} -allow_overlap
place_macro -macro coh_wrapper_l2_inclusive_cache_bank_sched/directory_cc_dir_cc_dir_ext_mem_0_2 -location {1054.0 1080.0} -allow_overlap
place_macro -macro coh_wrapper_l2_inclusive_cache_bank_sched/directory_cc_dir_cc_dir_ext_mem_0_3 -location {1105.25 1080.0} -allow_overlap
place_macro -macro coh_wrapper_l2_inclusive_cache_bank_sched/directory_cc_dir_cc_dir_ext_mem_0_4 -location {1156.5 1080.0} -allow_overlap

place_macro -macro bank/ram_mem_mem_ext_mem_0_0 -location { 490.25 920.0 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_1_0 -location { 541.5 920.0 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_2_0 -location { 592.75 920.0 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_3_0 -location { 644 920.0 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_4_0 -location { 695.25 920.0 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_5_0 -location { 746.5 920.0 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_6_0 -location { 797.75 920.0 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_7_0 -location { 849 920.0 } -orientation N -allow_overlap

place_macro -macro bank/ram_mem_mem_ext_mem_0_1 -location { 490.25 1230 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_1_1 -location { 541.5 1230 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_2_1 -location { 592.75 1230 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_3_1 -location { 644 1230 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_4_1 -location { 695.25 1230 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_5_1 -location { 746.5 1230 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_6_1 -location { 797.75 1230 } -orientation N -allow_overlap
place_macro -macro bank/ram_mem_mem_ext_mem_7_1 -location { 849 1230 } -orientation N -allow_overlap

write_def $outputs_path/Design_top_placed_cores_with_macros.def

exit