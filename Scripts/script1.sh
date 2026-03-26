#!/bin/bash
# Script 1: System Identity Report

STUDENT_NAME="Kayur Sharma"
SOFTWARE_CHOICE="Python"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

echo "======================================"
echo "Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Software  : $SOFTWARE_CHOICE"
echo "Kernel    : $KERNEL"
echo "User      : $USER_NAME"
echo "Uptime    : $UPTIME"
echo "Date/Time : $DATE"
echo "Distro    : $DISTRO"
echo "License   : GNU General Public License (GPL)"
