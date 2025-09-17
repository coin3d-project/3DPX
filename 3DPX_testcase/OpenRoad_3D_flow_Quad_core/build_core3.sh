
echo "Core 3 Placement start"
openroad $scripts_path/place_core3_macros.tcl | tee core3_macro_placement.log

# Run sed command
sed "s/GROUND/SIGNAL/g" $outputs_path/Core3_macro_placement.def > $outputs_path/Core3_macro_placement_temp.def
mv $outputs_path/Core3_macro_placement_temp.def $outputs_path/Core3_macro_placement.def
sed "s/POWER/SIGNAL/g" $outputs_path/Core3_macro_placement.def > $outputs_path/Core3_macro_placement_temp.def
mv $outputs_path/Core3_macro_placement_temp.def $outputs_path/Core3_macro_placement.def

python3.12 $python_scripts/format_def_fix_cores_macros.py $outputs_path/Core3_macro_placement.def $outputs_path/Core3_macro_placement_fixed.def

openroad $scripts_path/build_core3_bottom_tier.tcl | tee core3_stdcell_placement.log
echo "Core 3 Placement end"
