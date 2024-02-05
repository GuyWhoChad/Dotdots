picom -b &
nm-applet &
volumeicon &
nitrogen --restore &
 while true; do
   xsetroot -name "󰥔 $( date +"%F %R" )"
   sleep 1m    # Update time every minute
done &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
