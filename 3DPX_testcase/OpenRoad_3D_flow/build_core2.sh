
echo "Core 2 Placement start"
openroad $scripts_path/place_core2_macros.tcl  | tee core2_macro_placement.log

sed "s/GROUND/SIGNAL/g" $outputs_path/Core2_macro_placement.def > $outputs_path/Core2_macro_placement_temp.def
mv $outputs_path/Core2_macro_placement_temp.def $outputs_path/Core2_macro_placement.def
sed "s/POWER/SIGNAL/g" $outputs_path/Core2_macro_placement.def > $outputs_path/Core2_macro_placement_temp.def
mv $outputs_path/Core2_macro_placement_temp.def $outputs_path/Core2_macro_placement.def

python3.12 $python_scripts/format_def_fix_cores_macros.py $outputs_path/Core2_macro_placement.def $outputs_path/Core2_macro_placement_fixed.def

openroad $scripts_path/build_core2_bottom_tier.tcl | tee core2_stdcell_placement.log
echo "Core 2 Placement end"