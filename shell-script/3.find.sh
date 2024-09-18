#!/bin/bash

# Example 1: Find all files in the current directory
find .

# Example 2: Find all files with the .txt extension in the current directory and subdirectories
find . -name "*.txt"

# Example 3: Find all files larger than 100MB
find . -size +100M

# Example 4: Find files that were modified in the last 7 days
find . -mtime -7

# Example 5: Find and delete all .log files
find . -name "*.log" -delete

# Example 6: Find files with a specific name in a given directory (e.g., /home/user)
find /home/user -name "myfile.txt"

# Example 7: Find all empty files and directories
find . -empty

# Example 8: Find all files owned by a specific user (e.g., 'username')
find . -user username

# Example 9: Find files with 755 permissions
find . -perm 755

# Example 10: Find and execute a command on each found file (e.g., `ls -l` on each file)
find . -type f -exec ls -l {} \;

# Example 11: Find all directories named "backup"
find . -type d -name "backup"
