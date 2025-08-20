## Hardware Specs

MacBook: Late 2020, Macbook Pro
RAM: 8G
DISK: Apple SSD 256GB

## Linux Kernel
- 6.x
`untested on 5.x.x`
## CPU Governor
- conservative

## Swap
8G Swapfile x 2 = 16G

**High dependency on Swaps**

## Disk Scheduling Policy

- none

For SATA SSD/HDD, use `mq-deadline` instead.

## Network Policy

- Optimized for Client use

It can make troubles for production server as it has smaller Packet Buffer/Memory-saving network configs.
