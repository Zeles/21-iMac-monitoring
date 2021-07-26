#!/bin/bash

CPUTEMP=$(sudo powermetrics -n 1 -i 1 --samplers smc | grep 'CPU die temperature' | awk '{print $4}')
GPUTEMP=$(sudo powermetrics -n 1 -i 1 --samplers smc | grep 'GPU die temperature' | awk '{print $4}')
FANS=$(sudo powermetrics -n 1 -i 1 --samplers smc | grep 'Fan' | awk '{print $2}')

#Output
echo iMacTemp cpuTemp=$CPUTEMP,gpuTemp=$GPUTEMP,fan=$FANS
