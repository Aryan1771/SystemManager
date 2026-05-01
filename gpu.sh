#!/bin/bash

detect_gpu() {
    if command -v nvidia-smi &> /dev/null; then
        echo "Nvidia"
    elif lspci | grep -i 'vga.*amd' &> /dev/null; then
        echo "AMD"
    elif lspci | grep -i 'vga.*intel' &> /dev/null; then
        echo "Intel"
    else
        echo "Unknown"
    fi
}

GPU=$(detect_gpu)

while true; do
    clear
    echo "=== GPU Info ($GPU) ==="

    case $GPU in
        Nvidia)
            nvidia-smi --query-gpu=name,utilization.gpu,memory.used,memory.total --format=csv,noheader
            ;;
        AMD)
            echo "AMD GPU:"
            sudo cat /sys/class/drm/card0/device/gpu_busy_percent 2>/dev/null || echo "No AMD data"
            ;;
        Intel)
            echo "Intel GPU:"
            top -bn1 | grep -i "i915" || echo "No Intel metrics"
            ;;
        *)
            echo "No supported GPU found"
            ;;
    esac
    sleep 2
done

