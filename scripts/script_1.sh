#!/bin/bash
# Script 1: System Identity Report
# Author: Aarat Sahajpal

# Variables
STUDENT_NAME="Manan Jain"
SOFTWARE_CHOICE="VLC"

# System Info
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(lsb_release -d | cut -f2)

# Output
echo "======================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Software : $SOFTWARE_CHOICE"
echo "--------------------------------------"
echo "Distro   : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo "--------------------------------------"
echo "License  : GNU GPL"
echo "======================================"
