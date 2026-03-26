#!/bin/bash
# ---------------------------------------------------
# Script 2: FOSS Package Inspector
# Description: Checks if a package is installed and
# displays its details
# ---------------------------------------------------

PACKAGE="python3"   # Change package if needed

# --- Check installation ---
# Using dpkg (Debian/Ubuntu package manager)
if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."

    # Display package details
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

# --- Case statement for description ---
case $PACKAGE in
    python3)
        echo "Python: A simple and powerful programming language"
        ;;
    git)
        echo "Git: Version control system"
        ;;
    vlc)
        echo "VLC: Multimedia player"
        ;;
    firefox)
        echo "Firefox: Open-source browser"
        ;;
    *)
        echo "No description available"
        ;;
esac
