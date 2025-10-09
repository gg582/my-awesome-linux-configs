## Project Tree
```tree
.
├── 01-awesome-tcp-network-tuning
│   └── etc
│       └── sysctl.conf
├── 01-grub-k8s-cgroup-v2
│   └── etc
│       └── default
│           └── grub
├── 01-howdy-3-face-unlock-pam
│   ├── README.md
│   └── etc
│       └── pam.d
│           ├── login
│           ├── password-auth
│           ├── sddm-autologin
│           └── system-auth
├── 02-controversial-tcp-network-tuning
│   └── etc
│       └── sysctl.conf
├── 03-m1-macbook-arm-linux-tcp-network-tuning-for-daily-use
│   ├── BOOST.md
│   ├── README.md
│   └── etc
│       ├── kernel
│       │   └── cmdline
│       ├── sysctl.conf
│       ├── systemd
│       │   └── system
│       │       └── cpugovernor.service
│       └── udev
│           └── rules.d
│               └── 60-schedulers.rules
├── 04-make-custom-laptop-governor
│   ├── README.md
│   ├── etc
│   │   ├── acpi
│   │   │   └── laputil-ac.sh
│   │   ├── sudoers.d
│   │   │   └── laputil
│   │   ├── systemd
│   │   │   └── system
│   │   │       ├── cpugovernor.service
│   │   │       └── laputil-ac.service
│   │   └── udev
│   │       └── rules.d
│   │           └── 99-laputil.rules
│   ├── laputil
│   │   ├── Makefile
│   │   ├── README.md
│   │   ├── cpufreq_laputil.c
│   │   ├── dkms.conf
│   │   ├── install.sh
│   │   ├── lp-e.patch
│   │   ├── scripts
│   │   │   └── generate_ac_headers.sh
│   │   └── update.sh
│   └── usr
│       └── local
│           └── bin
│               └── laputil-ac.sh
├── 05-criu-based-application-recovery
│   ├── etc
│   │   └── systemd
│   │       └── system
│   │           └── criu-hibernate.service
│   └── usr
│       └── local
│           └── bin
│               ├── criu-restore.sh
│               └── criu-suspend.sh
├── 06-storage-optimization
│   ├── README.md
│   └── etc
│       └── systemd
│           └── system
│               ├── fstrim-ssd-storage.service
│               └── fstrim-ssd-storage.timer
├── 07-sysctl-for-screen-mirroring
│   ├── 01-client-side
│   │   └── etc
│   │       └── sysctl.conf
│   ├── 02-server-side
│   │   └── etc
│   │       └── sysctl.conf
│   └── README.md
└── README.md

47 directories, 39 files
```
**WARNING: Performance and battery life may vary depending on system and usage.**
### 01-howdy-3-face-unlock-pam
Enable PAM authentication via face recognition after installing Howdy v3 beta.

### 01-grub-k8s-cgroup-v2
Custom GRUB configuration for Kubernetes cgroup v2.
### 01-awesome-tcp-network-tuning
Normal TCP/network tuning for Linux servers.
## 02-controversial-tcp-network-tuning
Contains controversial and potentially dangerous TCP/network settings.
**Do NOT apply directly to your system.**

## 03-m1-macbook-arm-linux-tcp-network-tuning-for-daily-use
TCP tuning and power-saving configuration for M1 MacBooks running Linux.
- May slightly reduce performance but prioritizes battery life
- Expected runtime: **10–13 hours**
- On my MacBook (battery health 95%, conservative usage), achieved **10–11 hours**

Includes:
TCP tuning
Powersave options
Kernel cmdline tweaks
CPU governor configuration
Scheduler rules
## 04-make-custom-laptop-governor
Custom laptop CPU governor developed for better energy efficiency.
- Conservative-style policies with smarter frequency scaling
- Achieves **1–2 hours longer runtime** than project `03-m1-macbook-arm-linux-tcp-network-tuning-for-daily-use`

Includes:
- Systemd service for CPU governor
- Laputil C tool for CPU frequency management
- Scripts for AC headers and DKMS integration
## 05-criu-based-application-recovery
Recover application states using **CRIU (Checkpoint/Restore in Userspace)**
- Useful after system hibernation or crashes
- Includes scripts to suspend and restore processes
## 06-storage-optimization
SSD optimization via filesystem trimming
- Improves write performance and storage health
- Extends SSD lifespan compared to untrimmed setups

Includes:
- Systemd timer and service for automated fstrim

## 07-sysctl-for-screen-mirroring
Sysctl for screen mirroring clients(e.g. XRDP, Sunshine)
- Improves Buffering on client
- Has two different configuration for server and client
