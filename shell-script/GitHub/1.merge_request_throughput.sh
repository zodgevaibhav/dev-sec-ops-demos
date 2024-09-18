#!/bin/bash

# List all directories and loop through them
for dir in $(ls -l1 | grep ^d); do
  # Check if it's a git repository
  if [ -d "$dir/.git" ]; then
    echo "Entering directory: $dir"
    cd "$dir"
    
    # Run git log command
    echo "Merge commits for last 30 days in $dir:"
    git log --merges --since="30 days ago" --pretty=format:"%h - %an, %ar : %s"
    
    # Return to the parent directory
    cd ..
  else
    echo "$dir is not a git repository"
  fi
done
