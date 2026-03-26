#!/bin/bash
# ---------------------------------------------------
# Script 4: Log File Analyzer
# Description: Counts how many times a keyword appears
# in a log file
# Usage: ./script4.sh <logfile> <keyword>
# ---------------------------------------------------

LOGFILE=$1                     # First argument (log file path)
KEYWORD=${2:-"error"}          # Second argument or default 'error'
COUNT=0                        # Initialize counter

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found!"
    exit 1
fi

# Read file line by line
while IFS= read -r LINE; do

    # Check if keyword exists in line (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi

done < "$LOGFILE"

# Display result
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Show last 5 matching lines
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
