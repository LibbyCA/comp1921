#!/bin/bash

gcc code.c -o maze

#loading


// user has only entered one file

echo -n "Testing no arguments -"
./maze  > out
if grep -q 
then
    echo "PASS"
else
    echo "FAIL"
fi

// user has only entered one file

echo -n "Testing two arguments -"t
./maze x x > out
if grep -q 
then
    echo "PASS"
else
    echo "FAIL"
fi


// file inputted - error when filename is not an option

echo -n "Testing the file exists -"
./maze hypothetical.txt > out
if grep -q "Error: File not found" out;
then
    echo "PASS"
else
    echo "FAIL"
fi


# valid maze
// height of maze too big

echo -n "Testing bad map (height too big) - "
timeout 0.2s ./maze map/name.txt > out
if grep -q "Error: Map does not have expected format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// height of maze too small

echo -n "Testing bad map (height too small) - "
timeout 0.2s ./maze map/name.txt > out
if grep -q "Error: Map does not have expected format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// width of maze too big

echo -n "Testing bad map (width too big) - "
timeout 0.2s ./maze map/name.txt > out
if grep -q "Error: Map does not have expected format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// width of maze too small

echo -n "Testing bad map (width too small) - "
timeout 0.2s ./maze map/name.txt > out
if grep -q "Error: Map does not have expected format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// width of every line in maze not the same

echo -n "Testing bad map (rows not all the same size) - "
timeout 0.2s ./maze map/invalidmaze.txt > out
if grep -q "Error: Map does not have expected format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// height of every line in maze not the same

echo -n "Testing bad map (columns not all the same size) - "
timeout 0.2s ./maze map/invalidmaze2.txt > out
if grep -q "Error: Map does not have expected format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// characters in maze only # '' S E 

echo -n "Testing bad map (random characters) - "
timeout 0.2s ./maze map/invalidmaze3.txt > out
if grep -q "Error: Map does not have expected format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// only one E

echo -n "Testing bad map (more than one exit) - "
timeout 0.2s ./maze map/invalidEmaze.txt > out
if grep -q "Error: Map does not have expected format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// only one S

echo -n "Testing bad map (more than one start) - "
timeout 0.2s ./maze map/invalidSmaze.txt > out
if grep -q "Error: Map does not have expected format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi


// only W A S D M 

echo -n "Testing bad input (random characters) - "
timeout 0.2s ./maze data/invalidinputs.txt > out
if grep -q "Error: Input not expected character" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

# must input a letter - from amy

echo -n "Testing not-a-letter - "
echo "8" | ./maze > out
if grep -q "Error: No letter entered" out;
then
    echo "PASS"
else 
    echo "FAIL"
    cat out
fi

// input single character

echo -n "Testing for multiple characters - "
echo "ab" |./maze > out
if grep -q "Error: More than one character entered" out;
then
    echo "PASS"
else 
    echo "FAIL"
    cat out
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

// test for valid input

echo -n "Test for valid character"



// test for valid maze


// test for file loading
echo -n "Testing file loading - "
./maze map/validmaze.txt > out
if grep -q "File loaded successfully" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// test for valid maze inputs
echo -n "Testing valid maze characters - "
timeout 0.2s ./maze data/validmazeinputs.txt > out
if grep -q "Maze characters successful" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

// test file type of maze
- only text

// test whether move hits wall

more maps showing wasd with a # in that direction


// test whether move goes to space
success

more maps showing wasd with a ' ' in that direction