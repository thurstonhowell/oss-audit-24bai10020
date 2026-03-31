#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Aarat Sahajpal | Course: Open Source Software

# --- Directories to check ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo "        Directory Audit Report"
echo "=========================================="

# --- Loop through directories ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR"
        echo " Permissions: $PERMS"
        echo " Size       : $SIZE"
        echo "------------------------------------------"
    else
        echo "$DIR does not exist"
    fi
done

# --- Check Git config directory ---
echo "Checking Git configuration directory..."
GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
    PERMS=$(ls -l $GIT_CONFIG | awk '{print $1, $3, $4}')
    echo ".gitconfig found"
    echo " Permissions: $PERMS"
else
    echo ".gitconfig not found"
fi

echo "=========================================="
