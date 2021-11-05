#!/bin/bash
# You must employ sudo for running this script

if [ "x$1" == "x" ]; then
 echo "Correct usage: $0 governor";
 governors=`cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors`;
 echo " Governors available: $governors";
 exit 1;
fi;

for cpufile in /sys/devices/system/cpu/cpu[0-9]*; do 
  echo -n "$cpufile (governor - curfreq): ";
  echo $1 > $cpufile/cpufreq/scaling_governor; 
  cpu_governor=`cat $cpufile/cpufreq/scaling_governor`;
  cpu_cur_freq=` cat $cpufile/cpufreq/scaling_cur_freq`; 
  echo "$cpu_governor - $cpu_cur_freq"; 
done
