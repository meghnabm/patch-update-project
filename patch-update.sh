#!/bin/bash
LOGFILE="/var/log/patching.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

echo "[$DATE] Starting patching process..." >> $LOGFILE

# Update repositories and apply patches (Ubuntu/Debian)
sudo apt update && sudo apt upgrade -y >> $LOGFILE 2>&1

echo "[$DATE] Patching completed." >> $LOGFILE

# Send notification email with log contents
mail -s "Patch Report - $DATE" ubuntu< $LOGFILE

