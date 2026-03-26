#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="python3"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    python3) echo "Python: A powerful and beginner-friendly programming language" ;;
    git) echo "Git: Version control system" ;;
    vlc) echo "VLC: Multimedia player" ;;
    firefox) echo "Firefox: Open-source web browser" ;;
    *) echo "No description available" ;;
esac
