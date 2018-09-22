#!/usr/bin/env python
# usage: ./NTLMv1gen.py <wordlist> > <new file>

import hashlib,binascii,sys

file = open(sys.argv[1])
for line in file:
	hash = hashlib.new('md4', line.encode('utf-16le')).digest();
	print binascii.hexlify(hash)
