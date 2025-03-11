#!/bin/bash

# Check if a directory argument is provided
if [ -z "$1" ]; then
    echo "Usage: ./log-archive.sh <log-directory>"
    exit 1
fi

LOG_DIR="$1"

# Check if the directory exists
if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Directory '$LOG_DIR' does not exist."
    exit 1
fi

# Create an archive directory if it doesn't exist
ARCHIVE_DIR="./archives"
mkdir -p "$ARCHIVE_DIR"

# Generate timestamp and archive filename
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"

# Compress the logs
tar -czf "$ARCHIVE_DIR/$ARCHIVE_NAME" "$LOG_DIR"

# Log the archive creation time
echo "$TIMESTAMP - Archived logs from $LOG_DIR to $ARCHIVE_DIR/$ARCHIVE_NAME" >> archive_log.txt

# Display success message
echo "Logs successfully archived: $ARCHIVE_DIR/$ARCHIVE_NAME"

