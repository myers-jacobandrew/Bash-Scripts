#!/bin/bash

# Add a new user
sudo adduser newuser

# Delete a user
sudo userdel olduser

# Modify a user's group membership
sudo usermod -aG groupname username
