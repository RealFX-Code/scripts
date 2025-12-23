#!/usr/bin/env bash

set -e

# setup

mkdir -p ~/.local/bin

# The colons around PATH is to get compatibility with paths on the start or end of the path var.
if [[ ":$PATH:" == *":$HOME/.local/bin:"* ]]; then
  echo "[+] Your path contains ~/.local/bin."
else
  echo "[!] Your path is missing ~/.local/bin, you might want to add it."
fi

# Install
function install() {
  if ln -sf "$PWD/$1" "$HOME/.local/bin/$1"; then
    echo "[+] $1 successfully linked."
  else
    echo "[!] $1 failed to be linked!"
  fi
}

# Install scripts
install sysup
install srvup
install cleanup
install mae
install flac2mp3
install pdf2img
install dedupe-vendor-blobs
