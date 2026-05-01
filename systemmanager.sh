#!/bin/bash

kitty --class widget-clock \
      --title "Clock" \
      --override background_opacity=0.50 \
      --override font_size=26 \
      bash -c "./clock.sh" &

kitty --class widget-cpu \
      --title "CPU Monitor" \
      --override background_opacity=0.50 \
      --override font_size=22 \
      bash -c "./cpu.sh" &

kitty --class widget-gpu \
      --title "GPU Monitor" \
      --override background_opacity=0.50 \
      --override font_size=22 \
      bash -c "./gpu.sh" &

kitty --class widget-ram \
      --title "RAM Monitor" \
      --override background_opacity=0.50 \
      --override font_size=22 \
      bash -c "./ram.sh" &

kitty --class widget-tasks \
      --title "Tasks" \
      --override background_opacity=0.50 \
      --override font_size=20 \
      bash -c "./tasks.sh" &

kitty --class widget-health \
      --title "PC Health" \
      --override background_opacity=0.50 \
      --override font_size=22 \
      bash -c "./health.sh" &

