#!/bin/bash

# Function to create a timestamp
get_timestamp() {
  date +"%Y-%m-%d_%H-%M-%S"
}

# Set the source and target directories
source_dir="/Users/nabilelbajdi/backup_script"
target_dir="/Users/nabilelbajdi/backups"

# Set the name of the backup directory to a timestamp
backup_dir="$target_dir/$(get_timestamp)"

# Create the backup directory
mkdir -p "$backup_dir"

# Perform an incremental backup using rsync
rsync -a --delete --link-dest="$target_dir/latest" "$source_dir" "$backup_dir"

# Update the symbolic link for latest backup
ln -nsf "$backup_dir" "$target_dir/latest"
