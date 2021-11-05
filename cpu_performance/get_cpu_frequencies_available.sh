#!/bin/bash

for cpufile in /sys/devices/system/cpu/cpu[0-9]*; do 
  echo -n "$cpufile (governor - curfreq): ";
  cpu_freq_aval=` cat $cpufile/cpufreq/scaling_available_frequencies`; 
  echo "$cpu_freq_aval"; 
done
