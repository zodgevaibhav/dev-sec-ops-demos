#!/bin/bash

# Example 1: Use xargs to count the number of lines in files listed by find
find . -name "*.txt" | xargs wc -l

# Example 2: Use xargs to remove files found by find
find . -name "*.tmp" | xargs rm

# Example 3: Use xargs to list the details (ls -l) of files found by find
find . -name "*.log" | xargs ls -l

# Example 4: Use xargs to compress files (gzip) found by find
find . -name "*.log" | xargs gzip

# Example 5: Use xargs to move all .txt files to the /tmp directory
find . -name "*.txt" | xargs -I {} mv {} /tmp

# Example 6: Use xargs with echo to print each found file in a sentence
find . -name "*.conf" | xargs -I {} echo "Config file: {}"

# Example 7: Use xargs to search for a string in multiple files using grep
find . -name "*.txt" | xargs grep "search_term"

# Example 8: Use xargs to run a custom script on each found file
find . -name "*.csv" | xargs -I {} ./process_file.sh {}

# Example 9: Use xargs with a limited number of arguments per command (batch processing)
find . -name "*.txt" | xargs -n 2 ls -l

# Example 10: Use xargs to open found files in an editor (like vim)
find . -name "*.txt" | xargs vim
