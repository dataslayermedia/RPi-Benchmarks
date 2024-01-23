#!/bin/bash

# Define the output file
output_file="uptime_result.txt"

# Get the system boot time
boot_time=$(uptime -s)

# Convert boot time and current time to seconds since epoch
boot_time_sec=$(date -d "$boot_time" +%s)
current_time_sec=$(date +%s)

# Calculate uptime in seconds
uptime_sec=$((current_time_sec - boot_time_sec))

# Convert seconds to human-readable format
uptime=$(date -u -d @$uptime_sec +'%-d days %-H hours %-M minutes %-S seconds')

# Write uptime to the file without echoing
echo "System has been up for: $uptime" > "$output_file"

