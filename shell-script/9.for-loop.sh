#!/bin/bash

# Example 1: Simple for loop with a list of values
for fruit in Apple Banana Cherry
do
    echo "Fruit: $fruit"
done

# Example 2: For loop over a range of numbers
for i in {1..5}
do
    echo "Number: $i"
done

# Example 3: For loop with a step value (increment by 2)
for i in {0..10..2}
do
    echo "Even number: $i"
done

# Example 4: For loop using C-style syntax
for (( i=1; i<=5; i++ ))
do
    echo "C-style loop number: $i"
done

# Example 5: For loop to iterate over files in a directory
for file in /path/to/directory/*
do
    echo "File: $file"
done

# Example 6: For loop to read lines from a file
while IFS= read -r line
do
    echo "Line from file: $line"
done < file.txt

# Example 7: For loop with an array
names=("Alice" "Bob" "Charlie")
for name in "${names[@]}"
do
    echo "Name: $name"
done

# Example 8: For loop with command substitution (iterate over output of a command)
for file in $(ls *.txt)
do
    echo "Text file: $file"
done

# Example 9: For loop with positional parameters (script arguments)
for arg in "$@"
do
    echo "Argument: $arg"
done

# Example 10: For loop with break and continue
for i in {1..5}
do
    if [[ $i -eq 3 ]]; then
        echo "Skipping number $i"
        continue
    fi
    if [[ $i -eq 5 ]]; then
        echo "Breaking at number $i"
        break
    fi
    echo "Number: $i"
done
