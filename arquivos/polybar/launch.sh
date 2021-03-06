#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
#killall -q polybar
pkill -x polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
DISPLAY1="$(xrandr -q | grep 'eDP1\|VGA-1' | cut -d ' ' -f1)"
[ ! -z "$DISPLAY1" ] && MONITOR="$DISPLAY1" polybar top1 &
[ ! -z "$DISPLAY1" ] && MONITOR="$DISPLAY1" polybar bottom1 &

DISPLAY2="$(xrandr -q | grep 'HDMI1\|DVI-I-1' | cut -d ' ' -f1)"
[ ! -z $DISPLAY2 ] && MONITOR=$DISPLAY2 polybar top2 &
#[ ! -z $DISPLAY2 ] && MONITOR=$DISPLAY2 polybar bottom2 &

# Launch bar1 and bar2
#polybar -c ~/.config/polybar/config main &
