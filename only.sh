#!/bin/bash
# Script to remove short and very long passwords from a wordlist
# usage: ./only.sh <min> <max> <wordlist> > <new file>
# ex. ./only.sh 6 8 wordlist.txt > newfile.txt

while IFS='' read -r line || [[ -n "$line" ]]; do
	if [ ${#line} -ge $1 ] && [ ${#line} -le $2 ]
	then echo $line; fi
done < "$3"
