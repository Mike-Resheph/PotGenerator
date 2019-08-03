#!/usr/bin/env python
# usage: ./NTLMv1gen.py <wordlist> > <new file>

import hashlib,sys

file = open(sys.argv[1])
for line in file:
	try:
		hash = hashlib.new('md4', line.encode('utf-16le')).hexdigest();
#		print binascii.hexlify(hash)
	except:
		print ""
