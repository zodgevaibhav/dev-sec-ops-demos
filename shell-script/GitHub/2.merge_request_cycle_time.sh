#!/bin/bash

# Function to convert date to Unix timestamp
function date_to_timestamp() {
    date -d "$1" "+%s"
}

# Get all merge commits in the last 30 days
MERGE_LOG=$(git log --merges --since="30 days ago" --pretty=format:"%h,%ci")

# Initialize variables
total_time=0
merge_count=0

echo "Calculating MR Cycle Time for the last 30 days..."

# Loop through each merge commit
while IFS=',' read -r commit_hash merge_date; do
    # Find the first commit in the branch being merged
    first_commit_date=$(git log --reverse --first-parent --pretty=format:"%ci" -1 $commit_hash^2)

    if [ ! -z "$first_commit_date" ]; then
        # Convert both dates to Unix timestamps
        merge_timestamp=$(date_to_timestamp "$merge_date")
        first_commit_timestamp=$(date_to_timestamp "$first_commit_date")

        # Calculate cycle time in seconds
        time_diff=$((merge_timestamp - first_commit_timestamp))

        # Add to total time
        total_time=$((total_time + time_diff))
        merge_count=$((merge_count + 1))

        # Display MR cycle time for the current MR
        echo "MR Commit: $commit_hash - Cycle Time: $((time_diff / 86400)) days"
    fi
done <<< "$MERGE_LOG"

# Calculate average MR cycle time in days
if [ $merge_count -gt 0 ]; then
    average_time=$((total_time / merge_count))
    echo "------------------------------------"
    echo "Average MR Cycle Time: $((average_time / 86400)) days"
else
    echo "No merges found in the last 30 days."
fi
