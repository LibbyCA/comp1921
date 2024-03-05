#!/bin/bash

gcc mazegame.c -o maze

echo -e "Argument tests"

# tests adapted from Lab -Example Answer from Week 2 Amy Brereton

# testing no file argument entered

echo -n "Testing no arguments -"
./maze  > out
if grep -q 
then
    echo "PASS"
else
    echo "FAIL"
fi

# testing too many file arguments entered

echo -n "Testing two arguments -"t
./maze x x > out
if grep -q 
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -e "File tests"


# testing when the file doesn't not exist in repository 

echo -n "Testing the file exists -"
./maze hypothetical.txt > out
if grep -q "Error: File not found" out;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test different file type of maze

echo -n "Testing invalid file type - "
timeout 0.2s ./maze data/invalidfile.html > out
if grep -q "Error : Wrong file format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

echo -e "Maze tests"

# testing when height of maze too big

echo -n "Testing bad map (height too big) - "
timeout 0.2s ./maze map/mazetoobigh.txt > out
if grep -q "Error: Map does not have expected format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

# testing when height of maze is too small

echo -n "Testing bad map (height too small) - "
timeout 0.2s ./maze map/mazetoosmallh.txt > out
if grep -q "Error: Map does not have expected format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

# testing when width of maze is too big

echo -n "Testing bad map (width too big) - "
timeout 0.2s ./maze map/mazetoobigw.txt > out
if grep -q "Error: Map does not have expected format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

# testing when width of maze is too small

echo -n "Testing bad map (width too small) - "
timeout 0.2s ./maze map/mazetoosmallw.txt > out
if grep -q "Error: Map does not have expected format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

# testing when every row of the maze does not have the same length

echo -n "Testing bad map (rows not all the same size) - "
timeout 0.2s ./maze map/invalidmaze.txt > out
if grep -q "Error: Map does not have expected format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

# testing when every column in the maze is not the same length

echo -n "Testing bad map (columns not all the same size) - "
timeout 0.2s ./maze map/invalidmaze2.txt > out
if grep -q "Error: Map does not have expected format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

# testing whether characters in maze only # '' S E 

echo -n "Testing bad map (random characters) - "
timeout 0.2s ./maze map/invalidmaze3.txt > out
if grep -q "Error: Map does not have expected format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

# testing whether there is only one E in maze

echo -n "Testing bad map (more than one exit) - "
timeout 0.2s ./maze map/invalidEmaze.txt > out
if grep -q "Error: Map does not have expected format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

# testing whether this is only one S in map

echo -n "Testing bad map (more than one start) - "
timeout 0.2s ./maze map/invalidSmaze.txt > out
if grep -q "Error: Map does not have expected format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

echo -e "User input tests"

#testing whether user enters only W A S D M 

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

# input only a single character

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

echo -e "Success tests"

# test for valid input from user

echo -n "Test for valid character"
timeout 0.2s ./maze data/validuserinput.txt > out
if grep -q "Characters entered successful" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

# test for valid maze
echo -n "Testing valid maze format- "
./maze map/validmaze.txt > out
if grep -q "Correct maze format" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

# test for file loading
echo -n "Testing file loading - "
./maze map/validmaze.txt > out
if grep -q "File loaded successfully" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi

# test for valid maze inputs
echo -n "Testing valid maze characters - "
timeout 0.2s ./maze data/validmazeinputs.txt > out
if grep -q "Maze characters successful" out;
then
    echo "PASS"
else 
    echo "FAIL"
fi



