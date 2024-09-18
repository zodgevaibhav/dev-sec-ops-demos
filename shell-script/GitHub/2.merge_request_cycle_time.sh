#!/bin/bash

# Get all merge commits in the last 30 days
MERGE_LOG=$(git log --merges --since="30 days ago" --pretty=format:"%h,%ci")

# Initialize variables
total_time=0
merge_count=0

# Loop through each merge commit
while IFS=',' read -r commit_hash merge_date; do
    # Find the first commit in the branch being merged
    first_commit_date=$(git log --reverse --first-parent --pretty=format:"%ci" -1 $commit_hash^2)

    if [ ! -z "$first_commit_date" ]; then
        # Convert both dates to Unix timestamps
        merge_timestamp=$(date -d "$merge_date" +%s)
        first_commit_timestamp=$(date -d "$first_commit_date" +%s)

        # Calculate time difference in seconds
        time_diff=$((merge_timestamp - first_commit_timestamp))

        # Add to total time
        total_time=$((total_time + time_diff))
        merge_count=$((merge_count + 1))
    fi
done <<< "$MERGE_LOG"

# Calculate average time to merge in seconds
if [ $merge_count -gt 0 ]; then
    average_time=$((total_time / merge_count))
    echo "Average time to merge: $((average_time / 86400)) days"
else
    echo "No merges found in the last 30 days."
fi
