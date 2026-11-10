#!/usr/bin/env bash

# Force kill the currently focused window in Hyprland
PID=$(hyprctl activewindow -j | jq -r '.pid // empty')

if [[ -n "$PID" && "$PID" =~ ^[0-9]+$ && "$PID" -gt 1 ]]; then
    kill -9 "$PID"
fi
