#!/bin/bash

echo "----- CLONE LINUX 2 SD CARD-----"

# Check for root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root."
  exit 1
fi

# Define source image and target SD card
image_file="/path/to/backup.img"
target_device="/dev/sdX"

# Unmount any auto-mounted partitions on the SD card
for partition in ${target_device}*; do
  umount "$partition" 2>/dev/null
done

# Write the image to the SD card
dd if="$image_file" of="$target_device" bs=4M

# Monitor progress
while true; do
  status=$(pgrep -l '^dd$' >/dev/null 2>&1 && echo "Running" || echo "Finished")
  if [ "$status" = "Running" ]; then
    pkill -USR1 -n -x dd
  else
    echo "Cloning process completed."
    break
  fi
  sleep 5
done

# Sync and eject the SD card
sync
eject "$target_device"

echo "Cloning process finished. You can safely remove the SD card."
