#!/bin/bash

# Delete all files in a directory that are more than 30 days old
find /path/to/directory -type f -mtime +30 -delete
