#!/bin/bash

# Directory to store checkpoints
CHECKPOINT_DIR="/var/tmp/criu_s2idle_checkpoint"
mkdir -p "$CHECKPOINT_DIR"

# Freeze target processes (example: all user processes)
PIDS=$(pgrep -u $(whoami))
echo "Checkpointing PIDs: $PIDS"

# Dump processes to checkpoint
for pid in $PIDS; do
    echo "Dumping PID $pid..."
    criu dump -t $pid -D "$CHECKPOINT_DIR/$pid" --shell-job --tcp-established --leave-running
done

# . Optionally, trigger minimal system power save
#    Could include device sleep or CPU idle hints
echo "System can now enter minimal power state..."

