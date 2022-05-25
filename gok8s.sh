#!/bin/bash

# Simple script that moves and exports .kubeconfig files between
# Windows and WSL directory

# Location where you copy from 
WINDOWN=/mnt/c/Users/I536597/Downloads
HOMEKUBE=/home/matthew/kube

# echo "Removing duplicates of .kubeconfig files."
echo "Moving .kubeconfig files from $WINDOWN to $HOMEKUBE. Ignoring duplicates."
# ls "$WINDOWN/.*\([0-9]\).kubeconfig"
# ls "$WINDOWN/^[a-zA-Z0-9_.-]*$.kubeconfig"
# echo $WINDOWN
# find $WINDOWN -regex ".*\([0-9]\).kubeconfig"


# echo "Files moved: $(ls $WINDOWN/*.kubeconfig)"

FILES=$(find $WINDOWN -regex ".*\([0-9]\).kubeconfig")

# LOL
# https://stackoverflow.com/questions/15575976/bash-script-to-convert-a-string-with-space-delimited-tokens-to-an-array
list=( $FILES )
# echo "${list[0]}"
# echo "${list[1]}"

# DOES NOT WORK :( 
# split string into array
# https://stackoverflow.com/questions/10586153/how-to-split-a-string-into-an-array-in-bash
# IFS=' ' read -r -a array <<< "$FILES"

NUM_OF_FILES="${#list[@]}"
echo "$NUM_OF_FILES"
# COUNTER=0

# for element in "${array[@]}"
# do
#     echo "$element"
# done

# echo "${FILES[0]}"
# echo ${FILES[1]}

# ZERO=0
# if [ "$NUM_OF_FILES" -eq "$ZERO" ]; then
#   echo "Nothing to copy"
# else


ONE=1

# if [ "$NUM_OF_FILES" -gt "$ONE" ]; then
#   echo "More than one file"
# else
# export KUBECONFIG
# https://stackoverflow.com/questions/16618071/can-i-export-a-variable-to-the-environment-from-a-bash-script-without-sourcing-i
  echo "$list"
#   echo "$FILES"
  echo "${list[0]}"
  FILE="$(basename "${list[0]}")"
  echo "$FILE"
  echo "$WINDOWN/$FILE"
  echo "$HOMEKUBE/$FILE"
#   mv "$WINDOWN/$FILE" "$HOMEKUBE"
#   echo export KUBECONFIG="$HOMEKUBE/$FILE"
# fi
