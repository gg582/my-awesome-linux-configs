#!/bin/bash
# Force LapUtil governor on AC power connect/disconnect

for cpu in /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor; do
    echo laputil > $cpu
done

# Enable CPU boost
echo 1 > /sys/devices/system/cpu/cpufreq/boost

