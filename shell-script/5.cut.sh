#!/bin/bash

# Example 1: Extract the first column from a CSV file (assuming comma delimiter)
cut -d ',' -f 1 file.csv

# Example 2: Extract the second and third fields from a tab-delimited file
cut -d $'\t' -f 2,3 file.tsv

# Example 3: Extract the first 10 characters from each line of a file
cut -c 1-10 file.txt

# Example 4: Extract the last 5 characters from each line
cut -c -5 file.txt

# Example 5: Extract fields 2 to 5 from a colon-delimited file (e.g., `/etc/passwd`)
cut -d ':' -f 2-5 /etc/passwd

# Example 6: Extract only specific bytes (e.g., bytes 5 to 10)
cut -b 5-10 file.txt

# Example 7: Combine with sort: extract the third field and sort the result
cut -d ',' -f 3 file.csv | sort

# Example 8: Extract fields using space as a delimiter
cut -d ' ' -f 2,4 file.txt

# Example 9: Combine with head: extract first field and show the first 5 results
cut -d ':' -f 1 /etc/passwd | head -5

# Example 10: Extract multiple non-continuous fields (e.g., first and fourth field)
cut -d ',' -f 1,4 file.csv
