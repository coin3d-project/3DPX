create_clock [get_ports auto_chipyard_prcictrl_domain_reset_setter_clock_in_member_allClocks_uncore_clock]  -period  8   -waveform {0 4} -name clk

set_input_delay -max -clock clk  0.25 [filter_collection [all_inputs] { !(is_clock) } ]
set_output_delay -max -clock clk  0.25 [all_outputs]
