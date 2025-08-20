#!/bin/bash

echo "Restoring processes..."
for pid in $PIDS; do
    echo "Restoring PID $pid..."
    criu restore -d -D "$CHECKPOINT_DIR/$pid"
done

echo "CRIU-based pseudo-suspend completed."

