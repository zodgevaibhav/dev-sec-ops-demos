#!/bin/bash

# Example 1: Count the number of lines in a file
wc -l file.txt

# Example 2: Count the number of words in a file
wc -w file.txt

# Example 3: Count the number of characters in a file
wc -m file.txt

# Example 4: Count the number of bytes in a file
wc -c file.txt

# Example 5: Count lines, words, and characters in a file (default output of wc)
wc file.txt

# Example 6: Count lines in multiple files
wc -l file1.txt file2.txt

# Example 7: Count words in multiple files and display a total
wc -w file1.txt file2.txt

# Example 8: Combine wc with find to count total lines in all .txt files in a directory
find . -name "*.txt" | xargs wc -l

# Example 9: Use wc with a specific range of files and show the total
wc -l file{1..3}.txt

# Example 10: Pipe the output of another command into wc (counting lines in the output of ls)
ls -l | wc -l
