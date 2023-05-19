#!/usr/bin/env bash

# Define the brightness level you want to set (between 0 and 100)
brightness_level=50

# Get the ID of the Wayland session
session_id=$(loginctl list-sessions | awk '/wayland/ {print $1}' | head -n 1)

if [ -n "$session_id" ]; then
  # Get the D-Bus address of the Wayland session
  dbus_address=$(loginctl show-session "$session_id" -p Address | cut -d '=' -f 2)

  if [ -n "$dbus_address" ]; then
    # Set the brightness using the D-Bus interface
    gdbus call --session --dest org.gnome.SettingsDaemon.Power \
               --object-path /org/gnome/SettingsDaemon/Power \
               --method org.freedesktop.DBus.Properties.Set \
               org.gnome.SettingsDaemon.Power.Screen Brightness "uint32:$brightness_level"
    echo "Screen brightness adjusted to $brightness_level%"
  else
    echo "Failed to get D-Bus address for Wayland session."
    exit 1
  fi
else
  echo "No Wayland session found."
  exit 1
fi
