#!/bin/bash

# Student Details
name="Rajshekhar"
reg_no="24BAI10728"
tool="Git"

# System Information
os_info=$(awk -F= '/PRETTY_NAME/ {print $2}' /etc/os-release | tr -d '"')
kernel_version=$(uname -r)
current_user=$(whoami)
home_path=$HOME
uptime_info=$(uptime -p)
current_time=$(date "+%Y-%m-%d %H:%M:%S")

# Output Section
printf "\n===============================\n"
printf "     Open Source Report\n"
printf "===============================\n"

printf "Name             : %s\n" "$name"
printf "Registration No  : %s\n" "$reg_no"
printf "Preferred Tool   : %s\n" "$tool"

printf "\n--- System Details ---\n"
printf "OS                : %s\n" "$os_info"
printf "Kernel            : %s\n" "$kernel_version"
printf "User              : %s\n" "$current_user"
printf "Home Directory    : %s\n" "$home_path"
printf "Uptime            : %s\n" "$uptime_info"
printf "Date & Time       : %s\n" "$current_time"

printf "\n--- License Note ---\n"
echo "Ubuntu Linux follows the GNU GPL license."
echo "This ensures freedom to use, modify, and share the software."

printf "\n===============================\n"