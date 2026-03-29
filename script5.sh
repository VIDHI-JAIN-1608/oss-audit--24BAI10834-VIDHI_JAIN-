#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Vidhi

echo "Answer three questions to generate your manifesto."
echo "------------------------------------------------"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Composing the paragraph and writing to file
echo "--- OPEN SOURCE MANIFESTO ---" > $OUTPUT
echo "Created on: $DATE" >> $OUTPUT
echo "I believe in the power of $TOOL because it represents $FREEDOM." >> $OUTPUT
echo "In the spirit of FOSS, I commit to building $BUILD and sharing it with the world." >> $OUTPUT
echo "-----------------------------" >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo "Reading back your saved file:"
echo "-----------------------------"
cat $OUTPUT

# Alias demonstration (Concept requirement)
# alias show_manifesto='cat manifesto_vidhi.txt'
