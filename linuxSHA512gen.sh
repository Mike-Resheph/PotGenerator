#!/bin/bash
# usage: ./linuxSHA512gen.sh <wordlist> > <new file>

while IFS='' read -r line || [[ -n "$line" ]]; do
    mkpasswd --method=sha-512 $line
done < "$1"
