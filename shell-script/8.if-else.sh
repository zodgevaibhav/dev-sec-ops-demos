#!/bin/bash

# Example 1: Basic If-Else
if [ "$1" -gt 10 ]; then
  echo "Number is greater than 10"
else
  echo "Number is less than or equal to 10"
fi

# Example 2: If-Else with String Comparison
if [ "$2" = "hello" ]; then
  echo "You said hello!"
else
  echo "You didn't say hello."
fi

# Example 3: If-Else with File Check
if [ -f "$3" ]; then
  echo "File exists"
else
  echo "File does not exist"
fi

# Example 4: If-Else with Directory Check
if [ -d "$4" ]; then
  echo "It's a directory"
else
  echo "Not a directory"
fi

# Example 5: If-Else with Logical AND
if [ "$5" -gt 10 ] && [ "$5" -lt 20 ]; then
  echo "Number is between 10 and 20"
else
  echo "Number is not between 10 and 20"
fi

# Example 6: If-Else with Logical OR
if [ "$6" -lt 10 ] || [ "$6" -gt 20 ]; then
  echo "Number is outside the range of 10 to 20"
else
  echo "Number is within the range of 10 and 20"
fi

# Example 7: Nested If-Else
if [ "$7" -gt 0 ]; then
  if [ "$7" -lt 10 ]; then
    echo "Number is positive and less than 10"
  else
    echo "Number is positive and greater than or equal to 10"
  fi
else
  echo "Number is non-positive"
fi

# Example 8: If-Else with Command Exit Status
if ls "$8"; then
  echo "Directory listing successful"
else
  echo "Directory listing failed"
fi

# Example 9: If-Else with Case Insensitive String Comparison
if [ "${9,,}" = "yes" ]; then
  echo "You said YES"
else
  echo "You didn't say YES"
fi

# Example 10: If-Else with Arithmetic Expression
if (( ${10} % 2 == 0 )); then
  echo "Number is even"
else
  echo "Number is odd"
fi
