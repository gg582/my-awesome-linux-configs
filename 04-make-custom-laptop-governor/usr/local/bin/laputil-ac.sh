#!/bin/bash
# Apply laputil governor to all CPUs
for cpu in /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor; do
    echo laputil > "$cpu"
done
# Enable CPU boost
echo 1 | tee /sys/devices/system/cpu/cpufreq/boost

