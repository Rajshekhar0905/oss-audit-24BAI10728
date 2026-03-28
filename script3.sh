#!/bin/bash

# List of directories to audit
directories=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for dir in "${directories[@]}"; do
    if [ -d "$dir" ]; then
        perms=$(ls -ld "$dir" | awk '{print $1, $3, $4}')
        size=$(du -sh "$dir" 2>/dev/null | cut -f1)
        echo "$dir => Permissions: $perms | Size: $size"
    else
        echo "$dir does not exist on this system"
    fi
done

echo ""
echo "Checking Git configuration directory..."
git_config="/etc/git"

if [ -d "$git_config" ]; then
    perms=$(ls -ld "$git_config" | awk '{print $1, $3, $4}')
    echo "Git config directory exists."
    echo "Permissions: $perms"
else
    echo "Git config directory not found."
fi