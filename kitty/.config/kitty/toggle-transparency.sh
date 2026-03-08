#!/bin/bash
if grep -q 'background_opacity 0.8' ~/.config/kitty/kitty.conf; then
  sed -i '' 's/background_opacity 0.8/background_opacity 1/g' ~/.config/kitty/kitty.conf
  echo "Done! Reload conifg CMD + Ctrl + ,"
elif grep -q 'background_opacity 1' ~/.config/kitty/kitty.conf; then
  sed -i '' 's/background_opacity 1/background_opacity 0.8/g' ~/.config/kitty/kitty.conf
  echo "Done! Reload conifg CMD + Ctrl + ,"
else
  echo "No background_opacity in kitty theme"
fi
