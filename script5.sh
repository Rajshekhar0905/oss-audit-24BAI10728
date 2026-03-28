#!/bin/bash

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "Open Source Manifesto - $DATE" > $OUTPUT
echo "" >> $OUTPUT
echo "I believe in the power of open source software." >> $OUTPUT
echo "Using tools like $TOOL every day reminds me that technology grows stronger when it is shared." >> $OUTPUT
echo "For me, freedom in technology means $FREEDOM." >> $OUTPUT
echo "In the future, I would like to build and freely share $BUILD so that others can learn, improve, and innovate together." >> $OUTPUT
echo "Open source encourages collaboration, transparency, and community-driven development." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
