#!/bin/bash

counter=0

while true; do
  counter=$((counter + 1))
  data=$(bash "$1" 2>&1)
  exit_code=$?
  if [ $exit_code -ne 0 ]; then
    echo "Error encountered after $counter iterations"
    echo "Standard Output:"
    echo "$data"
    echo "Standard Error:"
    echo "$data" >&2
    exit 0
  fi
done
