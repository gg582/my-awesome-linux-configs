## 07-sysctl-for-screen-mirroring

This is optimized for screen mirroring to remote PC.

## Key Points for Client
- Reduced buffer size to prevent extraneous frame buffering
- Reduced Backlog
- Use Reno to save battery
## Key Points for Server
- Enlarged buffer size to ensure high performance
- Enlarged Backlog
- Use BBR for higher performance
## Common Tweaks
- Enabled TCP Low Latency Option
- TCP Buffer Auto Moderator
