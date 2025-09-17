
# rm -rf outputs/*
# rm -rf *.log

######################### TestCase params ########################
python_scripts="./python_scripts"
data_path="./data"
scripts_path="./tcl_scripts"
outputs_path="./outputs"

# openroad_exec=/home/Storage/PhD/PhD_CodeBase/ToDelete/OpenROAD/build/src/
# export PATH=$PATH:$openroad_exec
##################################################################


######################### Build 1st Core #########################
source build_core1.sh &
##################################################################

######################### Build 2nd Core #########################
source build_core2.sh &
##################################################################

######################### Build 1st Core #########################
source build_core3.sh &
##################################################################

######################### Build 2nd Core #########################
source build_core4.sh &
##################################################################

wait

cat ../do_synth/results/QuadRocket.v $outputs_path/Core1_post_place.v > $outputs_path/DualRocket_one_core_included.v
cat $outputs_path/DualRocket_one_core_included.v $outputs_path/Core2_post_place.v > $outputs_path/DualRocket_two_core_included.v
cat $outputs_path/DualRocket_two_core_included.v $outputs_path/Core3_post_place.v > $outputs_path/DualRocket_three_core_included.v
cat $outputs_path/DualRocket_three_core_included.v $outputs_path/Core4_post_place.v > $outputs_path/QuadRocket_full.v

openroad $scripts_path/Extract_chip_full_def.tcl

python3.12 $python_scripts/place_core.py $outputs_path/Design_top_preplace.def $outputs_path/Core1_post_place.def RocketTile_0 21 21 $outputs_path/Design_top_placed_Core_1.def $outputs_path/Core1_Macros_locations.tcl
python3.12 $python_scripts/place_core.py $outputs_path/Design_top_placed_Core_1.def $outputs_path/Core2_post_place.def RocketTile_1 21 1252 $outputs_path/Design_top_placed_Core_2.def $outputs_path/Core2_Macros_locations.tcl
python3.12 $python_scripts/place_core.py $outputs_path/Design_top_placed_Core_2.def $outputs_path/Core3_post_place.def RocketTile_2 740 21 $outputs_path/Design_top_placed_Core_3.def $outputs_path/Core3_Macros_locations.tcl
python3.12 $python_scripts/place_core.py $outputs_path/Design_top_placed_Core_3.def $outputs_path/Core4_post_place.def RocketTile_3 740 1252 $outputs_path/Design_top_placed_cores.def $outputs_path/Core4_Macros_locations.tcl

######################### Build full chip ########################
echo "Full chip Placement start"

### Place Digital Top macros ###
openroad $scripts_path/place_digitaltop_macros.tcl | tee place_digitaltop_macros.log

### Place Digital Top Top Tier ###
python3.12 $python_scripts/add_covers.py $outputs_path/DigitalTop_macro_placement.def $outputs_path/DigitalTop_macro_placement_with_covers.def
openroad $scripts_path/build_digitaltop_top_tier.tcl | tee build_digitaltop_top_tier.log
python3.12 $python_scripts/remove_covers.py $outputs_path/DigitalTop_post_place.def $outputs_path/DigitalTop_post_place_without_covers.def

### Incremental Place Bottom Tier for routability ###
python3.12 $python_scripts/format_def_unfix_all_bottom_tier_second.py $outputs_path/DigitalTop_post_place_without_covers.def $outputs_path/DigitalTop_macro_placement_unfixed.def
openroad $scripts_path/build_digitaltop_bottom_tier.tcl | tee build_digitaltop_bottom_tier.log
python3.12 $python_scripts/format_def_fix_bottom_tier.py $outputs_path/DigitalTop_bottom_tier_routability_checked.def $outputs_path/Design_top_placed_cores.def
openroad $scripts_path/replace_digitaltop_macros.tcl | tee place_digitaltop_macros.log

### CTS/PDN creation ###
openroad $scripts_path/create_pdn.tcl | tee create_pdn.log
python3.12 $python_scripts/format_def_fix_all_tiers.py $outputs_path/DigitalTop_post_pdn.def $outputs_path/DigitalTop_post_pdn_fixed.def
openroad $scripts_path/create_cts.tcl | tee create_cts.log

### Legalize tiers ###
python3.12 $python_scripts/format_def_unfix_all_top_tier.py $outputs_path/DigitalTop_post_cts.def $outputs_path/DigitalTop_post_cts_unfixed_top_tier.def
openroad $scripts_path/legalize_digitaltop_top_tier.tcl | tee legalize_digitaltop_top_tier.log
python3.12 $python_scripts/format_def_unfix_all_bottom_tier.py $outputs_path/DigitalTop_post_cts_top_legal.def $outputs_path/DigitalTop_post_cts_bottom_unfixed.def
openroad $scripts_path/legalize_digitaltop_bottom_tier.tcl | tee legalize_digitaltop_bottom_tier.log
python3.12 $python_scripts/remove_covers.py $outputs_path/DigitalTop_post_cts_all_legal.def $outputs_path/DigitalTop_post_cts_all_legal_without_covers.def

### Route Design ###
openroad $scripts_path/check_routing.tcl | tee check_routing.log
echo | tee check_routing.log "Full Chip Placement end"

##################################################################

