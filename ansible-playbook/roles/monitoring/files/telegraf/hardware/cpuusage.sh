#!/bin/bash
echo cpu_usage procent=$(ps -A -o %cpu | awk '{s+=$1} END {print s}')