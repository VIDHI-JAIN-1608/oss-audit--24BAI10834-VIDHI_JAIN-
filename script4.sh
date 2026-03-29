#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh /var/log/syslog

LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword is 'error'
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
     echo "Error: File $LOGFILE not found."
     echo "Usage: ./script4.sh [path_to_log_file]"
     exit 1
fi

# Audit logic: while read loop
while IFS= read -r LINE; do
     if echo "$LINE" | grep -iq "$KEYWORD"; then
          COUNT=$((COUNT + 1))
     fi
done < "$LOGFILE"

echo "------------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "------------------------------------------"

# Display last 5 matches as requested in manual
echo "Last 5 matching entries:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
