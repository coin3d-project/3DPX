
echo "Core 4 Placement start"
openroad $scripts_path/place_core4_macros.tcl | tee core4_macro_placement.log

# Run sed command
sed "s/GROUND/SIGNAL/g" $outputs_path/Core4_macro_placement.def > $outputs_path/Core4_macro_placement_temp.def
mv $outputs_path/Core4_macro_placement_temp.def $outputs_path/Core4_macro_placement.def
sed "s/POWER/SIGNAL/g" $outputs_path/Core4_macro_placement.def > $outputs_path/Core4_macro_placement_temp.def
mv $outputs_path/Core4_macro_placement_temp.def $outputs_path/Core4_macro_placement.def

python3.12 $python_scripts/format_def_fix_cores_macros.py $outputs_path/Core4_macro_placement.def $outputs_path/Core4_macro_placement_fixed.def

openroad $scripts_path/build_core4_bottom_tier.tcl | tee core4_stdcell_placement.log
echo "Core 4 Placement end"
