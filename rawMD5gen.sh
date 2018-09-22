#!/bin/bash
# usage: ./rawMD5gen.sh <wordlist> < <new file>

while IFS='' read -r line || [[ -n "$line" ]]; do
    echo -n $line | md5sum | cut -d" " -f1 | tr a-z A-Z
done < "$1"
