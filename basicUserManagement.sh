#!/bin/bash

# This script allows you to add, remove, or modify user accounts on the system.

# Check if the script is being run as root.
if [ $(id -u) -ne 0 ]; then
  echo "This script must be run as root."
  exit 1
fi

# Function to add a user
add_user() {
  read -p "Enter the username: " username
  read -s -p "Enter the password: " password
  echo
  read -p "Enter the full name of the user: " fullname
  read -p "Enter the user's home directory: " homedir
  useradd -c "$fullname" -d "$homedir" -m "$username"
  echo "$username:$password" | chpasswd
  echo "User $username has been created."
}

# Function to remove a user
remove_user() {
  read -p "Enter the username to remove: " username
  userdel -r "$username"
  echo "User $username has been removed."
}

# Function to modify a user
modify_user() {
  read -p "Enter the username to modify: " username
  read -p "Enter the new full name for the user: " fullname
  read -p "Enter the new home directory for the user: " homedir
  usermod -c "$fullname" -d "$homedir" "$username"
  echo "User $username has been modified."
}

# Main menu
while true; do
  echo "Please choose an option:"
  echo "1. Add a user"
  echo "2. Remove a user"
  echo "3. Modify a user"
  echo "4. Quit"
  read -p "> " choice
  case $choice in
    1) add_user ;;
    2) remove_user ;;
    3) modify_user ;;
    4) exit 0 ;;
    *) echo "Invalid option." ;;
  esac
done
