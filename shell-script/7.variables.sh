#!/bin/bash

# Example 1: Hardcoded value
hardcoded_value="Hello, World!"
echo "Hardcoded value: $hardcoded_value"

# Example 2: Variable with command output value
current_date=$(date)
echo "Command output value (current date): $current_date"

# Example 3: Variable value from an external file (assume file.txt contains a line of text)
file_content=$(cat file.txt)
echo "Value from external file: $file_content"

# Example 4: Combination of two variables
greeting="Good morning"
name="Alice"
combined_message="$greeting, $name!"
echo "Combined variables: $combined_message"


# Example 5: Positional parameters (script arguments)
# Run the script like: ./script.sh arg1 arg2
first_argument=$1
second_argument=$2
echo "First argument: $first_argument"
echo "Second argument: $second_argument"

# Example 6: Environment variable
# Set the environment variable before running the script, e.g., export MY_ENV_VAR="EnvValue"
env_variable=$MY_ENV_VAR
echo "Environment variable: $env_variable"

# Example 7: Default value for a variable (using parameter expansion)
default_value=${UNSET_VAR:-"Default value if UNSET_VAR is not set"}
echo "Variable with default value: $default_value"

# Example 8: Incrementing a numeric variable
counter=0
counter=$((counter + 1))
echo "Incremented counter: $counter"

# Example 9: Reading user input
echo "Enter your name:"
read user_name
echo "User input value: $user_name"

# Example 10: Array variable
fruits=("Apple" "Banana" "Cherry")
echo "First fruit in the array: ${fruits[0]}"
echo "All fruits: ${fruits[@]}"

# Example 11: Exported variable for child processes
export PARENT_VAR="Parent process variable"
echo "Exported variable: $PARENT_VAR"
# In a child process (a subshell) this variable would still be accessible
