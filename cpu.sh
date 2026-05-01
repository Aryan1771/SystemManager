#!/bin/bash
while true; do
    clear
    echo "=== CPU Usage ==="
    top -bn1 | grep "Cpu(s)" 
    echo
    lscpu | grep "Model name"
    sleep 1
done

