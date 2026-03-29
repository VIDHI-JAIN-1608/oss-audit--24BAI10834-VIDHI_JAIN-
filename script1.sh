#!/bin/bash
# Script 1: System Identity Report
# Author: Vidhi | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Vidhi"         
SOFTWARE_CHOICE="vlc"      

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(lsb_release -ds)
CURRENT_DATE=$(date '+%A, %d %B %Y')
HOME_DIR=$HOME

# --- Display ---
echo "================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Home    : $HOME_DIR"
echo "Uptime  : $UPTIME"
echo "Distro  : $DISTRO"
echo "Date    : $CURRENT_DATE"
echo "--------------------------------"
echo "Message: This system is powered by Ubuntu, which is covered by the GNU GPL license."
echo "================================"
