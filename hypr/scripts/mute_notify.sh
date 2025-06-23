#!/bin/bash

wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle

# Wait briefly to allow toggle to apply
sleep 0.1

# Check mute status
if wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -q MUTED; then
    notify-send -t 800 "🔇 Muted"
else
    notify-send -t 800 "🔊 Unmuted"
fi
