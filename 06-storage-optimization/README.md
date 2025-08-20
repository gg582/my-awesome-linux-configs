## 06-storage-optimization

Systemd service and timer for weekly SSD trim.
This configuration helps maintaining SSD write performance and lifetime.

## Installation

```bash
sudo cp -rf ./etc /
```
## Activation
```bash
sudo systemctl enable --now fstrim-ssd-storage.timer
sudo systemctl enable --now fstrim-ssd-storage.service
```
