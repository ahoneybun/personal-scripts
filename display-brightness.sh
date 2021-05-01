#!/bin/bash

echo "---------------------------------------"
echo "How do you want to change your display?"
echo "---------------------------------------"
echo "[1] Lower brightness (Xorg)"
echo "[2] Raise brightness (Xorg)"
echo "[3] Lower brightness (Wayland Display1)"
echo "[4] Raise brightness (Wayland Display1)"
echo "[5] Lower brightness (Wayland Display2)"
echo "[6] Raise brightness (Wayland Display2)"

echo "---------------"
echo -n "Enter choice: "; read choice
case "$choice" in

1) xrandr --output DisplayPort-0 --brightness 0.5
   ;;
2) xrandr --output DisplayPort-0 --brightness 1
   ;;
3) xrandr --output XWAYLAND0 --brightness 0.5
   ;;
4) xrandr --output XWAYLAND0 --brightness 0.5
   ;;
5) xrandr --output XWAYLAND1 --brightness 0.5
   ;;
6) xrandr --output XWAYLAND1 --brightness 0.5
   ;;
esac