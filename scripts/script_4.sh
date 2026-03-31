#!/bin/bash
# Script 4: Log File Analyzer
# Author: Aarat Sahajpal | Course: Open Source Software

# --- Input arguments ---
LOGFILE=$1
KEYWORD=${2:-"error"}   # default keyword = error
COUNT=0

# --- Check if file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# --- Check if file is empty ---
if [ ! -s "$LOGFILE" ]; then
    echo "File is empty. Please provide a valid log file."
    exit 1
fi

# --- Read file line by line ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Output result ---
echo "=========================================="
echo "Log File Analysis Report"
echo "=========================================="
echo "File     : $LOGFILE"
echo "Keyword  : $KEYWORD"
echo "Matches  : $COUNT"
echo "------------------------------------------"

# --- Show last 5 matching lines ---
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

echo "=========================================="
