#!/bin/bash

# Simple Function that moves and exports .kubeconfig files between
# Windows and WSL directory
function gok8s(){
  # Location where you copy from 
WINDOWN=/mnt/c/Users/I536597/Downloads
HOMEKUBE=/home/matthew/kube

echo "Moving .kubeconfig files from $WINDOWN to $HOMEKUBE. Ignoring duplicates."

FILES=$(find $WINDOWN -regex ".*\([0-9]\).kubeconfig")

list=( $FILES )

NUM_OF_FILES="${#list[@]}"
echo "$NUM_OF_FILES"

# ZERO=0
# if [ "$NUM_OF_FILES" -eq "$ZERO" ]; then
#   echo "Nothing to copy"
# else

ONE=1

if [ "$NUM_OF_FILES" -gt "$ONE" ]; then
  echo "More than one file"
else
# export KUBECONFIG
# https://stackoverflow.com/questions/16618071/can-i-export-a-variable-to-the-environment-from-a-bash-script-without-sourcing-i
  FILE="$(basename "${list[0]}")"
  echo "$WINDOWN/$FILE"
  echo "$HOMEKUBE/$FILE"
  # mv "$WINDOWN/$FILE" "$HOMEKUBE"
  # echo export KUBECONFIG="$HOMEKUBE/$FILE"
fi
}
