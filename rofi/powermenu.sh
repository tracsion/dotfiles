#!/bin/bash

chosen=$(echo -e "󰍃 Lock\n⏻ Power Off\n Reboot\n Suspend\n Logout" | rofi -dmenu -i -p "Power Menu")

case "$chosen" in
  "⏻ Power Off") poweroff ;;
  " Reboot") reboot ;;
  " Suspend") systemctl suspend ;;
  "󰍃 Lock") hyprlock ;;
  " Logout") hyprctl dispatch exit ;;
esac
