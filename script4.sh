#!/bin/bash

# Input log file and keyword (default = "error")
log_file="$1"
search_word="${2:-error}"
match_count=0

# Check if file exists
if [ ! -f "$log_file" ]; then
    echo "Error: File '$log_file' does not exist."
    exit 1
fi

# Read file line by line
while IFS= read -r line; do
    if echo "$line" | grep -iq "$search_word"; then
        match_count=$((match_count + 1))
    fi
done < "$log_file"

# Display results
echo "Keyword '$search_word' found $match_count times in $log_file"

echo ""
echo "Last 5 matching lines:"
grep -i "$search_word" "$log_file" | tail -n 5