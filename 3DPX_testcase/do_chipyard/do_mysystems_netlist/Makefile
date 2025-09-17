base_dir=/home/agids/usr/agarcia/WORK/chipyard/
sim_dir=$(abspath .)

include $(base_dir)/variables.mk

tech_dir=$(base_dir)/vlsi/hammer-nangate45-plugin/nangate45/

SMEMS_COMP         ?= $(tech_dir)/sram-compiler.json
#Use a copy of sram-cache to add more
#SMEMS_CACHE        ?= $(tech_dir)/sram-cache.json
SMEMS_CACHE        ?= $(base_dir)/do_mysystems_netlist/sram-cache-nangate45.json
SMEMS_HAMMER       ?= $(build_dir)/$(long_name).mems.hammer.json

#ag: Remove strick for the moment.
ifdef USE_SRAM_COMPILER
	TOP_MACROCOMPILER_MODE ?= -l $(SMEMS_COMP) --use-compiler -hir $(SMEMS_HAMMER)
# --mode strict
else
	TOP_MACROCOMPILER_MODE ?= -l $(SMEMS_CACHE) -hir $(SMEMS_HAMMER)
#--mode strict
endif


sim = $(sim_dir)/$(sim_prefix)-$(MODEL_PACKAGE)-$(CONFIG)

#########################################################################################
# simulation requirements
#########################################################################################
SIM_FILE_REQS += \
	$(ROCKETCHIP_RSRCS_DIR)/vsrc/TestDriver.v

# copy files but ignore *.h files in *.f since xcelium has -Wcxx include
$(sim_files): $(SIM_FILE_REQS) $(ALL_MODS_FILELIST) | $(GEN_COLLATERAL_DIR)
	cp -f $(SIM_FILE_REQS) $(GEN_COLLATERAL_DIR)
	$(foreach file,\
		$(SIM_FILE_REQS),\
		$(if $(filter %.h,$(file)),\
			,\
			echo "$(addprefix $(GEN_COLLATERAL_DIR)/, $(notdir $(file)))" >> $@;))

include $(base_dir)/common.mk
