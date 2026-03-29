#!/bin/bash
# Script 2: FOSS Package Inspector
PACKAGE="vlc"

# Check if package is installed
if dpkg -s $PACKAGE &>/dev/null; then
     echo "[SUCCESS] $PACKAGE is installed."
     # Pipe with grep as requested in manual
     dpkg -s $PACKAGE | grep -E 'Package|Version|Description'
else
     echo "[ERROR] $PACKAGE is NOT installed."
fi

# Case statement for philosophy (Mandatory Task)
case $PACKAGE in
     httpd)   echo "Apache: the web server that built the open internet" ;;
     mysql)   echo "MySQL: open source at the heart of millions of apps" ;;
     vlc)     echo "VLC: freedom to play any media, anywhere, for free" ;;
     firefox) echo "Firefox: putting people before profits since 2004" ;;
     *)       echo "FOSS: Software that respects your freedom" ;;
esac
