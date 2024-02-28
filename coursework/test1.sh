#!/bin/bash

gcc code.c -o maze

#loading

// file has loaded in correctly

echo -n "Testing for a single character - "
# function for one character
if grep -q "Error: More than one character inputted" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// input registered

echo -n "Testing for a single character - "
# function for one character
if grep -q "Error: More than one character inputted" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

# valid maze
// height of maze too big

echo -n "Testing for a single character - "
# function for one character
if grep -q "Error: More than one character inputted" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// height of maze too small

echo -n "Testing for a single character - "
# function for one character
if grep -q "Error: More than one character inputted" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// width of maze too big

echo -n "Testing for a single character - "
# function for one character
if grep -q "Error: More than one character inputted" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// width of maze too small

echo -n "Testing for a single character - "
# function for one character
if grep -q "Error: More than one character inputted" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// width of every line in maze not the same

echo -n "Testing for a single character - "
# function for one character
if grep -q "Error: More than one character inputted" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// height of every line in maze not the same

echo -n "Testing for a single character - "
# function for one character
if grep -q "Error: More than one character inputted" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// characters in maze only # '' S E 

echo -n "Testing for a single character - "
# function for one character
if grep -q "Error: More than one character inputted" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// only one E

echo -n "Testing for a single character - "
# function for one character
if grep -q "Error: More than one character inputted" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// only one S

echo -n "Testing for a single character - "
# function for one character
if grep -q "Error: More than one character inputted" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

#valid input
// only W A S D M Q

echo -n "Testing for a single character - "
# function for one character
if grep -q "Error: More than one character inputted" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// anything else error

echo -n "Testing for a single character - "
# function for one character
if grep -q "Error: More than one character inputted" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// input a letter

echo -n "Testing for a single character - "
# function for one character
if grep -q "Error: More than one character inputted" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// input single character

echo -n "Testing for a single character - "
# function for one character
if grep -q "Error: More than one character inputted" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

# no empty space

echo -n "Testing empty space - "
echo "" | ./maze > out
if grep -q "Error: No letter inputted" out;
then
    echo "PASS"
else
    echo "FAIL"
fi
