#!/bin/bash
while true; do
    clear
    echo "=== Running Tasks ==="
    ps aux --sort=-%cpu | head -n 15
    sleep 2
done

