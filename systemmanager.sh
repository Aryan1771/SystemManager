#!/bin/bash

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd) || exit 1
if ! command -v kitty >/dev/null 2>&1; then
    printf 'System Manager requires Kitty. Install it or run a widget with Bash.\n' >&2
    exit 1
fi

kitty --class widget-clock \
      --title "Clock" \
      --override background_opacity=0.50 \
      --override font_size=26 \
      bash "$script_dir/clock.sh" &

kitty --class widget-cpu \
      --title "CPU Monitor" \
      --override background_opacity=0.50 \
      --override font_size=22 \
      bash "$script_dir/cpu.sh" &

kitty --class widget-gpu \
      --title "GPU Monitor" \
      --override background_opacity=0.50 \
      --override font_size=22 \
      bash "$script_dir/gpu.sh" &

kitty --class widget-ram \
      --title "RAM Monitor" \
      --override background_opacity=0.50 \
      --override font_size=22 \
      bash "$script_dir/ram.sh" &

kitty --class widget-tasks \
      --title "Tasks" \
      --override background_opacity=0.50 \
      --override font_size=20 \
      bash "$script_dir/tasks.sh" &

kitty --class widget-health \
      --title "PC Health" \
      --override background_opacity=0.50 \
      --override font_size=22 \
      bash "$script_dir/health.sh" &
