set_db init_hdl_search_path  ./rtl/
set_db script_search_path  ./cmd/
set_db source_verbose true
set_db information_level 9
# set_db invs_temp_dir genus_invs
# set_db lp_insert_clock_gating true


# Set Lib
set_db lib_search_path   {/usr/prog/optech/freepdk/fpdk45_v20/NANGATE/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Liberty/CCS/   /home/agids/usr/agarcia/FORGEJO/wk_systems/do_genram/results/fakeram45_1024x32/  /home/agids/usr/agarcia/FORGEJO/wk_systems/do_genram/results/fakeram45_64x32/}
set_db library {NangateOpenCellLibrary_typical_ccs.lib fakeram45_1024x32.lib   fakeram45_64x32.lib}

# Set LEF
# read_physical -lef /usr/prog/optech/freepdk/fpdk45_v20/NANGATE/NangateOpenCellLibrary_PDKv1_3_v2010_12/Back_End/lef/NangateOpenCellLibrary.lef
# read_physical -lef /home/agids/usr/agarcia/FORGEJO/wk_systems/do_genram/results/fakeram45_1024x32/fakeram45_1024x32.lef
# read_physical -lef /home/agids/usr/agarcia/FORGEJO/wk_systems/do_genram/results/fakeram45_64x32/fakeram45_64x32.lef

# read parasitic information from QRC tech file
# set_db cap_table_file file
# set_db qrc_tech_file techfile.qrc
