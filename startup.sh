
#!/bin/bash

xset r rate 200 
source .bashrc
xrdb -merge ~/.Xresources
echo 852 > /sys/class/backlight/intel_backlight/brightness
nitrogen --restore &
