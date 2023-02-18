#!/bin/bash

# Check network connection every 10 seconds
while true
do
  ping -c 1 google.com >/dev/null
  if [ $? -ne 0 ]; then
    echo "Network connection down"
    # perform online task here
  fi
  sleep 10
done
