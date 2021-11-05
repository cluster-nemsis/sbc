#!/bin/bash
# You must employ sudo for running this script

## This script configures cpu 0-1 and 2-5 for performance
cpufreq-set -c 0 1 -g interactive -d 1200000 -u 1896000
cpufreq-set -c 2 3 4 5 -g interactive -d 1200000 -u 1800000

