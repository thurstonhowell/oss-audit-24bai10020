#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Aarat Sahajpal

PACKAGE="vlc"

# Check if package is installed
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

echo "--------------------------------------"

# Case statement for description
case $PACKAGE in
    vlc) echo "VLC: a free and open-source media player that plays almost all formats." ;;
    firefox) echo "Firefox: a browser focused on privacy and open web." ;;
    git) echo "Git: a distributed version control system." ;;
    python3) echo "Python: a powerful open-source programming language." ;;
    *) echo "Unknown package." ;;
esac
