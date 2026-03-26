#!/bin/bash
# ---------------------------------------------------
# Script 5: Open Source Manifesto Generator
# Description: Takes user input and creates a
# personalized manifesto file
# ---------------------------------------------------

echo "Answer the following questions:"
echo ""

# Take user input
read -p "1. Name a tool: " TOOL
read -p "2. Freedom means: " FREEDOM
read -p "3. What will you build: " BUILD

# Get current date
DATE=$(date '+%d %B %Y')

# Output file name
OUTPUT="manifesto_$(whoami).txt"

# Create manifesto file
echo "On $DATE, I use $TOOL." > $OUTPUT
echo "Freedom means $FREEDOM to me." >> $OUTPUT
echo "I will build $BUILD and share it openly." >> $OUTPUT

# Display result
echo ""
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
