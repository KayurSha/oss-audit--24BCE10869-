#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer the following questions:"
echo ""

read -p "1. Tool: " TOOL
read -p "2. Freedom means: " FREEDOM
read -p "3. Build: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I use $TOOL." > $OUTPUT
echo "Freedom means $FREEDOM to me." >> $OUTPUT
echo "I will build $BUILD and share it openly." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
