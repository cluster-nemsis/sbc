#!/bin/bash
# You must employ sudo for running this script

## This script configures cpu 0-3 for performance
cpufreq-set -c 0 1 2 3 -g performance -d 1200000 -u 1500000

