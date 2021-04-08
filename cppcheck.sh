#!/bin/bash

export NEW_DIR=$(pwd)

shopt -s nullglob dotglob     # To CHECK IF THERE IS ANY FILE IN SRC FILE
files=($DIR *)
if [ ${#files[@]} -gt 0 ]
then 
  echo "files:"
  cppcheck --error-exitcode=1 *.c
else
  echo "THERE IS NO FILES IN THIS DIR" 
fi