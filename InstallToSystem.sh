#!/usr/bin/env bash

# setup

mkdir -p ~/.local/bin

# The colons around PATH is to get compatibility with paths on the start or end of the path var.
if [[ ":$PATH:" == *":$HOME/.local/bin:"* ]]; then
  echo "[+] Your path contains ~/.local/bin."
else
  echo "[!] Your path is missing ~/.local/bin, you might want to add it."
fi

# sysup

ln -sf $PWD/sysup $HOME/.local/bin/sysup

if [ $? -eq 0 ]; then
  echo "[+] sysup successfully linked."
else
  echo "[!] sysup failed to be linked!"
fi

# mae

ln -sf $PWD/mae $HOME/.local/bin/mae

if [ $? -eq 0 ]; then
  echo "[+] mae successfully linked."
else
  echo "[!] mae failed to be linked!"
fi

# End
exit

