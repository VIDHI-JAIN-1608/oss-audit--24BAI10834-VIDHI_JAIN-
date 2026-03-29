#!/bin/bash
# Script 3: Disk and Permission Auditor
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Loop through list as required
for DIR in "${DIRS[@]}"; do
     if [ -d "$DIR" ]; then
          # Concepts: ls -ld, awk to extract fields
          PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
          SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
          echo "$DIR => Permissions: $PERMS | Size: $SIZE"
     else
          echo "$DIR does not exist on this system"
     fi
done

# Task: Check software config directory permissions
CONF_DIR="$HOME/.config/vlc"
echo "----------------------"
if [ -d "$CONF_DIR" ]; then
    echo "VLC Config Found! Permissions: $(ls -ld $CONF_DIR | awk '{print $1}')"
else
    echo "VLC Config directory not found (Run VLC once to create it)."
fi
