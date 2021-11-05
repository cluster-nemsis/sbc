#!/bin/bash
# You must employ sudo for running this script

## This script configures cpu 0-1 and 2-5 for performance
cpufreq-set -c 0 1 2 3 -g performance -d 1560000 -u 1840000
cpufreq-set -c 4 5 6 7 -g performance -d 1860000 -u 2360000

