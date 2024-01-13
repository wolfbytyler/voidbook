#!/bin/bash

# this is no longer required due to the new and improved ucm files
#echo "" >> etc/pulse/default.pa
#echo "# required for working pulseaudio on peach - audio input does not yet work well" >> etc/pulse/default.pa
#echo "load-module module-alsa-sink device=sysdefault" >> etc/pulse/default.pa
#echo "#load-module module-alsa-source device=sysdefault" >> etc/pulse/default.pa

# lets better use the dpms suspend free version here, as there were some drm unblank kernel errors
# bookworm
if [ -f etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml-enabled-no-dpms-suspend ]; then
  cp -v etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml-enabled-no-dpms-suspend etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml
# jammy and noble
elif [ -f etc/xdg/xdg-xubuntu/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml-enabled-no-dpms-suspend ]; then
  cp -v etc/xdg/xdg-xubuntu/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml-enabled-no-dpms-suspend etc/xdg/xdg-xubuntu/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml
fi
