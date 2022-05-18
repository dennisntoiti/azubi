#!bin/bash
#https://github.com/dennisntoiti/azubi
echo "$(cat $1)" | sort -t'|' -k2 -r -n