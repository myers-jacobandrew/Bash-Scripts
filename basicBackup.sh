#!/bin/bash

# Set the source and destination directories
SRC_DIR=/path/to/source
DEST_DIR=/path/to/destination

# Create a backup archive
DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE=$DEST_DIR/backup_$DATE.tar.gz
tar -czf $BACKUP_FILE $SRC_DIR

# Remove old backup files (keep the last 7 days)
find $DEST_DIR -type f -mtime +7 -exec rm {} \;
