#!/usr/bin/env bash

## Add this to your wm startup file.

# Terminate already running bar instances
pkill -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Get network Interface
export DEFAULT_NETWORK_INTERFACE=$(ip route | grep '^default' | awk '{print $5}' | head -n1)

## Load bar on primary monitor
polybar -c ~/.config/polybar/config.ini main &

# Load on second monitor if connected
external_monitor=$(xrandr --query | grep 'VGA-1')
if [[ $external_monitor = VGA-1\ connected* ]]; then
	polybar -c ~/.config/polybar/config.ini secondary &
fi
