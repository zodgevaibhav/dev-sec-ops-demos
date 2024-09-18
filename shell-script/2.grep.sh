#!/bin/bash

# Example 1: Match lines containing the word 'hello'
grep 'hello' filename.txt

# Example 2: Case-insensitive search for 'hello'
grep -i 'hello' filename.txt

# Example 3: Match lines with at least one digit (using \d)
grep -E '\d' filename.txt

# Example 4: Match lines starting with the word 'hello'
grep '^hello' filename.txt

# Example 5: Match lines ending with the word 'world'
grep 'world$' filename.txt

# Example 6: Find lines containing either 'cat' or 'dog' (alternation)
grep -E 'cat|dog' filename.txt

# Example 7: Match lines with exactly three characters
grep -E '^.{3}$' filename.txt

# Example 8: Find lines with repeated words (using backreferences)
grep -E '\b(\w+)\s+\1\b' filename.txt

# Example 9: Exclude lines containing the word 'pattern'
grep -v 'pattern' filename.txt

# Example 10: Show only the part of the line that matches the date pattern (YYYY-MM-DD)
grep -o -E '\d{4}-\d{2}-\d{2}' filename.txt

# Example 11: Recursive search through a directory for 'pattern'
grep -r 'pattern' /path/to/directory
