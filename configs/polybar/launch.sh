
#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar -rq -c ~/.config/polybar/config.ini music &
polybar -rq -c ~/.config/polybar/config.ini tray &
polybar -rq -c ~/.config/polybar/config.ini info &
polybar -rq -c ~/.config/polybar/config.ini i3 &