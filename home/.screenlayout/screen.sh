#!/bin/sh
xrandr --output HDMI-0 --off --output DP-4 --mode 5120x2160 --pos 0x0 --rotate normal --dpi 96
# xrandr --setmonitor VIRTUAL-ONE 1280/200x2160/330+0+0 DP-0
# xrandr --setmonitor VIRTUAL-TWO 3840/600x2160/330+1280+0 none
xrandr --setmonitor LEFT 1280/200x2160/330+0+0 DP-4
xrandr --setmonitor RIGHT 3840/600x2160/330+1280+0 DP-4
