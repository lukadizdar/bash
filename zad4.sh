#!/bin/bash
name=$(basename "$0")
reversed_name=$(echo "$name" | rev)
tac "$0" > "$reversed_name"
echo "Reversed name is $reversed_name"



