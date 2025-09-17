
echo "Bank Placement start"
openroad $scripts_path/place_ScratchpadBank_macros.tcl | tee bank_macro_placement.log

sed "s/GROUND/SIGNAL/g" $outputs_path/ScratchpadBank_macro_placement.def > $outputs_path/ScratchpadBank_macro_placement_temp.def
mv $outputs_path/ScratchpadBank_macro_placement_temp.def $outputs_path/ScratchpadBank_macro_placement.def
sed "s/POWER/SIGNAL/g" $outputs_path/ScratchpadBank_macro_placement.def > $outputs_path/ScratchpadBank_macro_placement_temp.def
mv $outputs_path/ScratchpadBank_macro_placement_temp.def $outputs_path/ScratchpadBank_macro_placement.def

python3.12 $python_scripts/format_def_fix_cores_macros.py $outputs_path/ScratchpadBank_macro_placement.def $outputs_path/ScratchpadBank_macro_placement_fixed.def

openroad $scripts_path/build_ScratchpadBank_top_tier.tcl | tee bank_stdcell_placement.log
echo "Bank Placement end"