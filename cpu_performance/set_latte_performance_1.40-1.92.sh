#!/bin/bash
# You must employ sudo for running this script

## This script configures cpu 0-3 for performance
cpufreq-set -c 0 -g performance -d 1400000 -u 1920000
cpufreq-set -c 1 -g performance -d 1400000 -u 1920000
cpufreq-set -c 2 -g performance -d 1400000 -u 1920000
cpufreq-set -c 3 -g performance -d 1400000 -u 1920000

