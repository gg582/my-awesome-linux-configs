## Project Tree
```
.
├── 01-awesome-tcp-network-tuning
│   └── etc
│       └── sysctl.conf
├── 01-grub-k8s-cgroup-v2
│   └── etc
│       └── default
│           └── grub
├── 01-howdy-3-face-unlock-pam
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
│   ├── README.md
│   └── etc
│       ├── kernel
│       │   └── cmdline
│       ├── sysctl.conf
│       ├── system
│       │   └── cpugovernor.service
│       ├── systemd
│       └── udev
│           └── rules.d
│               └── 60-schedulers.rules
└── README.md

18 directories, 13 files

```
### 01-howdy-3-face-unlock-pam
You can use face recongition based PAM authorization after installing howdy v3 beta.

### 01-grub-k8s-cgroup-v2
### 01-awesome-tcp-network-tuning
This is a normal network tuning for linux servers.
### 02-controversial-tcp-network-tuning
Controversal and dangerous settings are here.
Don't use it directly on your machine.
### 03-m1-macbook-arm-linux-tcp-network-tuning-for-daily-use
This is mainly about TCP tuning, but it also includes powersave options.
This can cause performance degradation. However, I chose power-saving modes over performance.
This will run your machine 10-13 hours long.
In my case, my machine's battery life is 93% full. I achieved 10-11 hours from this.
