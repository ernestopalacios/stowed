#!/bin/bash
TOGGLE_FILE="/tmp/niri.toggle.floating"

if [ -f "$TOGGLE_FILE" ]; then
    niri msg action move-floating-window -x 960 -y 340  # bring back
    rm "$TOGGLE_FILE"
else
    niri msg action move-floating-window -x 9999 -y 9999  # push off-screen
    touch "$TOGGLE_FILE"
fi
