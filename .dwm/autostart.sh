/bin/sh

# add your autostart stuffs here

picom &
~/.screenlayout/default.sh &
autocutsel &
feh --bg-fill /home/sean/Pictures/Wallpapers/darker_unicat.png &
xinput set-prop 10 "Coordinate Transformation Matrix" 0.3 0 0 0 0.3 0 0 0 1 &

# run bar script and dwm ( do not remove this )
~/.dwm/bar/./bar.sh &
dwm
