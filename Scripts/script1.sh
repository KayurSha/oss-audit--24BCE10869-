#!/bin/bash
# ---------------------------------------------------
# Script 1: System Identity Report
# Author: Your Name
# Description: Displays basic system information
# ---------------------------------------------------

# --- Variables ---
STUDENT_NAME="Kayur Sharma"        # Replace with your name
SOFTWARE_CHOICE="Python"        # Chosen software

# --- System Information ---
KERNEL=$(uname -r)             # Get kernel version
USER_NAME=$(whoami)            # Get current user
UPTIME=$(uptime -p)            # Get system uptime
DATE=$(date)                   # Get current date/time

# Get Linux distribution name from os-release file
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

# --- Output ---
echo "======================================"
echo "   Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Software  : $SOFTWARE_CHOICE"
echo "Kernel    : $KERNEL"
echo "User      : $USER_NAME"
echo "Uptime    : $UPTIME"
echo "Date/Time : $DATE"
echo "Distro    : $DISTRO"

# License message
echo "License   : GNU General Public License (GPL)"
