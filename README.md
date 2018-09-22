# PotGenerator
A small collection of rudimentary scripts to generate password hashes with.
The purpose is to be able to properly test cracking tools such as Hashcat with fairly realistic password hashes.
The benchmark functions build in to password cracking tools does not give a picture of how long it would take to crack - say 1000 real passwords.
To get full benefit of this tool it is recommended to use real password dumps to generate hashes with.
A bonus on testing tools such as Hashcat with a lot of GPU power with real passwords is of course that you will build up a decent potfile.

Output from all the scripts should be redirected to a new file with a useful name because by default output is written to stdout.

## linuxMD5gen.sh
This small bash script will take a wordlist as an argument and output linux MD5 passwords.

## NTLMv1gen.py
This small python script will take a wordlist as an argument and output Windows NTLM passwords.

## linuxSHA512gen.sh
This small bash script will take a wordlist as an argument and output Linux SHA 512 passwords.

## rawMD5gen.sh
This small bash script will take a wordlist as an argument and output raw MD5 hashes.

## only.sh
This script will remove both very short and very long passwords from a wordlist and output only the most useful words.
The script takes 3 arguments. The first one is the minimum word length, the second is the masimum word length and the third is the wordfile you wish to clean up.
