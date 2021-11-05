#!/bin/bash
# You must employ sudo for running this script

## This script configures cpu 0-1 and 2-5 for performance
cpufreq-set -c 0 1 -g performance -d 1608000 -u 1800000
cpufreq-set -c 2 3 4 5 -g performance -d 1608000 -u 2208000

