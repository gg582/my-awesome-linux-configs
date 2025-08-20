# System Configuration

## Hardware Specs
- MacBook: Late 2020, MacBook Pro
- RAM: 8 GB
- Disk: Apple SSD 256 GB

## Linux Kernel
- Version: 6.x
- Note: Untested on 5.x.x

## CPU Governor
- Setting: conservative

## Swap
- Configuration: 8 GB Swapfile x 2 = 16 GB
- Note: System relies heavily on swap due to limited 8 GB RAM.

## Disk Scheduling Policy
- Current: No scheduler applied
- Recommendation: mq-deadline for SATA SSD/HDD
- Explanation: NVMe SSDs have high-speed read/write, making disk schedulers a potential bottleneck. SATA drives benefit from scheduling to optimize I/O performance.

## Network Policy
- Profile: Laptop client with moderate TCP buffers and memory-saving settings
- Note: Unsuitable for production servers due to smaller packet buffers and memory-saving network settings.

### TCP Window & Buffers
- Moderate TCP buffer sizes for balanced throughput and memory usage.

### TCP Timing / Connection Management
- Shorter FIN timeout and keepalive for faster connection cleanup.
- `TIME_WAIT` reuse to reduce stale connections.
- Slow-start after idle enabled to save energy.
- MTU probing to avoid fragmentation issues.
- Reno congestion control for stability over aggressive bandwidth use.

### Network Device & ICMP
- Moderate backlog to prevent packet drops on busy interfaces.
- Limited ICMP to save CPU resources.

### Memory Management
- Swappiness tuned for 8 GB RAM.
- Dirty page limits reduced to prevent burst writes.
- Longer expiration to save energy and reduce disk activity (`vm.dirty_expire_centisecs=4000`).
