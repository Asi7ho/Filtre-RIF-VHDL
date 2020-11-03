###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name PART -value "3s200ft256-5" -type string /work/FILTER/A -design gatelevel 

##################
# Clocks
##################
create_clock { CLK } -domain ClockDomain0 -name CLK -period 20.000000 -waveform { 0.000000 10.000000 } -design gatelevel 
