create_clock [get_ports auto_tap_clock_in_clock]  -period  8   -waveform {0 4} -name clk


#set_clock_uncertainty 0.025  -setup [get_clocks clk]
#set_clock_uncertainty 0.025  -hold [get_clocks clk]
#set_clock_transition -fall 0.04 [get_clocks clk]
#set_clock_transition -rise 0.04 [get_clocks clk]

#set_dont_touch clock
#set_dont_touch reset

#set_clock_latency -max -source 0.1 [get_clocks clk] 

set_input_delay -max -clock clk  0.25 [filter_collection [all_inputs] { !(is_clock) } ]
set_output_delay -max -clock clk  0.25 [all_outputs]
