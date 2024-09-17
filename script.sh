#!/bin/bash

# Get the current directory
current_dir=$(pwd)

# Change to the "piment-vid" directory
cd piment-vid

# Get a list of all files in the directory
files=$(ls)

# Rename the files sequentially
i=1
for file in $files; do
  new_name="$i.mp4"
  mv "$file" "$new_name"
  ((i++))
done

# Return to the original directory
cd "$current_dir"

echo "Renaming completed successfully."
