#! /bin/bash
# each bash shell has to start with defining dialect 

# comments start with # sign

# ECHO COMMAND
echo Hello World!

# VARIABLES
# Uppercase by convention
# Letters, numbers, underscores
# when you assign variable you CAN'T put spaces between
NAME="Brad"
# to reference variable you use $ or ${variable}
echo "My name is $NAME"

# USER INPUT
# read -p "Enter your name: " NAME
echo "Hello $NAME, nice to meet you!"

# SIMPLE IF STATEMENT
if [ "$NAME" == "Matt" ]
then
  echo "Your name is Matt"
fi

#IF-ELSE
if [ "$NAME" == "Matt" ]
then
  echo "Your name is Matt"
else 
  echo "Your name is not Matt"
fi

#ELSE-IF (elif)
# After if and elif you need to put then keyword after 
if [ "$NAME" == "Matt" ]
then
  echo "Your name is Matt"
elif [ "$NAME" == "Jack" ]
then
  echo "Your name is Jack"
else 
  echo "Your name is not Matt"
fi

# COMPARISON
########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########

NUM1=3
NUM2=5

if [ "$NUM1" -gt "$NUM2" ]
then
  echo "$NUM1 is greater than $NUM2"
else
  echo "$NUM1 is less than $NUM2"
fi

# FILE CONDITIONS
########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########

FILE="test.txt"
if [ -e "$FILE" ]
then
  echo "$FILE exists"
else
  echo "$FILE does not exist"
fi

# CASE STATEMENT (switch)
# read -p "Are you 18 or over? Y/N " ANSWER
# case "$ANSWER" in
# # below condition checks if input is y or yes disregarding case of the letter
#   [yY] | [yY][eE][sS])
#     echo "You can have a beer :)"
#     ;;
#   [nN] | [nN][oO])
#     echo "Sorry, no drinking"
#     ;;
#   *)
#     echo "Please enter y/yes or n/no"
#     ;;
# esac
# Notes:
# - after case you need to put ) - equivalent of : in java
# - each case has to end with ;; - equivalent of break in java
# - default case is *
# - case statement ends with esac 

# SIMPLE FOR LOOP
NAMES="Brad Kevin Alice Mark"
for NAME in $NAMES
  do 
    echo "Hello $NAME"
done

echo "================"

# FOR LOOP TO RENAME FILES
# FILES=$(ls *.txt)
# NEW="new"
# for FILE in $FILES
#   do 
#     echo "Renaming $FILE to new-$FILE"
#     mv $FILE $NEW-$FILE
# done

# WHILE LOOP - READ THROUGH FILE LINE BY LINE
# LINE=1
# while read -r CURRENT_LINE
#   do 
#     echo "$LINE: $CURRENT_LINE"
#     ((LINE++))
# done < "./lorem-ipsum.txt"

# FUNCTION
function sayHello() {
  echo "Hello World"
}

sayHello

# FUNCTION WITH PARAMS
# functions use positional parameters 
# The function refers to passed arguments by their position (not by name), that is $1, $2, and so forth. 
# $0 is the name of the script itself.
function greet() {
    echo "Hello, I am $1 and I am $2"
}

greet "Brad" "36"

# CREATE FOLDER AND WRITE TO A FILE
DIR=./hello
if ! [[ -d "$DIR" ]]
then
mkdir hello
else 
echo "Directory hello already exist"
fi
touch "hello/world.txt"
echo "Hello World" >> "hello/world.txt"
echo "Created hello/world.txt with content of: $(cat hello/world.txt)"

# if you want to process output of command (eg store to variable) you have to do $(command)
# We can negate the if condition using the ! (not) operator:
# if ! [[ expr ]]; then
