#!/bin/bash

# Define the output file
output_file="shutdown_difference.txt"

# Get the last shutdown time
last_shutdown=$(last -x | grep shutdown | head -1 | awk '{print $5 " " $6 " " $7 " " $8 " " $9}')

# Convert last shutdown time to seconds since epoch
last_shutdown_sec=$(date -d "$last_shutdown" +%s)

# Get current time in seconds since epoch
current_time_sec=$(date +%s)

# Calculate the difference in seconds
difference_sec=$((current_time_sec - last_shutdown_sec))

# Write the result to the file
echo "Time since last shutdown: $difference_sec seconds" > "$output_file"

echo "Output written to $output_file"
