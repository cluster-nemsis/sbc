#!/bin/bash

for cpufile in /sys/devices/system/cpu/cpu[0-9]*; do 
  echo -n "$cpufile (governor - curfreq): ";
  cpu_governor=`cat $cpufile/cpufreq/scaling_governor`;
  cpu_cur_freq=` cat $cpufile/cpufreq/scaling_cur_freq`; 
  echo "$cpu_governor - $cpu_cur_freq"; 
done
