#!/bin/bash
# usage: ./rawMD5gen.sh <wordlist> < <new file>

while IFS='' read -r line || [[ -n "$line" ]]; do
    echo $line | md5sum | cut -d" " -f1
done < "$1"
