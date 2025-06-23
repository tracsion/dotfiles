#!/bin/bash

direction="$1"

if [[ "$direction" == "up" ]]; then
    wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+
elif [[ "$direction" == "down" ]]; then
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
fi

vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ printf("%d%%", $2 * 100) }')
notify-send -t 800 "🔊 Volume: $vol"
