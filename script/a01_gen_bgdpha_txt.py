#!/usr/bin/env python

import os 

channel = 4096
f = open('out/bgd_pha.txt','w')
for i in range(channel):
	f.write('%d 1\n' % i)
f.close()