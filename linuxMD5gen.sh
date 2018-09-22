#!/bin/bash
# usage: ./linuxMD5gen.sh <wordlist> > <newfile>

while IFS='' read -r line || [[ -n "$line" ]]; do
    openssl passwd -1 $line
done < "$1"
