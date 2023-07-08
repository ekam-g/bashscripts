#!/bin/bash

n=$((RANDOM % 100))
if [[ n -eq 42 ]]; then 
    echo "Somthing went wrong"
    >&2 echo "The error was using magic numbers"
    exit 1
fi

echo "coolo"