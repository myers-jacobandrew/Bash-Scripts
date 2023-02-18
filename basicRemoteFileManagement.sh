#!/bin/bash

# Copy files to the server
rsync -avz /path/to/local/files username@hostname:/path/to/remote/files

# Run database migrations
ssh username@hostname 'cd /path/to/remote/files && ./manage.py migrate'

# Start the application
ssh username@hostname 'cd /path/to/remote/files && ./run.sh'
