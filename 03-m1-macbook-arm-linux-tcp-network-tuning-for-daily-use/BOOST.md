## Tweak: Enabling CPUFreq Boost for Apple M Series

- Change `ExecStart=...` to `ExecStart=/bin/bash -c 'for cpu in /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor; do echo laputil > $cpu; done;echo 1 | sudo tee /sys/devices/system/cpu/cpufreq/boost'`

