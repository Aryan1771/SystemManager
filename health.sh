#!/bin/bash
while true; do
    clear
    echo "=== System Health ==="
    echo
    echo "--- Disk ---"
    df -h | grep "/$"
    echo
    echo "--- Uptime ---"
    uptime -p
    echo
    echo "--- Temperatures ---"
    sensors 2>/dev/null || echo "Install: sudo apt install lm-sensors"
    sleep 3
done

