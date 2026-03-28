#!/bin/bash

pkg_name="git"

if dpkg -l | grep -q "^ii  $pkg_name"; then
    echo "$pkg_name is already installed."

    # Show installed package info
    dpkg -l "$pkg_name" | grep '^ii'

    # Show extra details
    apt show "$pkg_name" 2>/dev/null | grep -E "Version|Maintainer|Description"
else
    echo "$pkg_name is NOT installed."
fi

# Description based on package
case "$pkg_name" in
    git)
        echo "Git: a distributed version control system powering open source collaboration"
        ;;
    vlc)
        echo "VLC: a powerful open source multimedia player supporting almost all formats"
        ;;
    firefox)
        echo "Firefox: a privacy focused open source web browser from Mozilla"
        ;;
    mysql)
        echo "MySQL: an open source relational database used in millions of applications"
        ;;
    *)
        echo "No philosophy note available for this package."
        ;;
esac