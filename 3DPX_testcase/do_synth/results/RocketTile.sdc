# ####################################################################

#  Created by Genus(TM) Synthesis Solution 23.11-s100_1 on Fri Apr 04 19:44:53 CEST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1fF
set_units -time 1000ps

# Set the current design
current_design TilePRCIDomain

create_clock -name "clk" -period 4.0 -waveform {0.0 2.0} [get_ports clock]
set_clock_gating_check -setup 0.0 
set_output_delay -clock [get_clocks clk] -add_delay -max 0.025 [get_ports clock]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.025 [get_ports reset]
set_wire_load_mode "enclosed"
