#!/bin/bash

# Display system information
echo "CPU: $(grep 'model name' /proc/cpuinfo | head -n 1 | cut -d ':' -f 2 | xargs)"
echo "Memory: $(free -h | awk '/^Mem/ {print $2}')"
echo "Disk space: $(df -h | awk '$NF=="/" {print $2}')"
echo "Network connections: $(netstat -an | grep ESTABLISHED | wc -l)"
