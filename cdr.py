#!/usr/bin/python

# set up random time for transaction
# to do:  add local vs longdistance flag, toll free flag
import random
for x in range(1,50000):
	# restrict the source to 5000 numbers
	sourcenm=random.randint(8885550000, 8885553000)
	destnm=random.randint(8885550000, 8885558000)
	# random distribution of call length
	#duration=random.randint(0,350) 
	duration=abs(int(random.gauss(5,3)*60 )) 
	if (duration%5==3):
	   duration=abs(int(random.gauss(60,15)*60 ))
	# one day of calls so from second 1 to 24 hrs
	timestamp=random.randint(1,86400)
	if (timestamp%11==5):
	  timestamp=28900
	if (timestamp%11==3):
	  timestamp=61500
	#terminationcode=random.randint(1,10)
	terminationcode=abs(int(random.gauss(3,3) ))
	if (duration> 4000):
		terminationcode=7
	#print str(sourcenm)+'|'+str(destnm)+'|'+str( duration)+'|'+str(timestamp)+'|'+str( terminationcode) +'|xxxxxxThis Is Padding To Make The Line Bigger xxxxx'
	print str(x) +'|'+ str(sourcenm)+'|'+str(destnm)+'|'+str( duration)+'|'+str(timestamp)+'|'+str( terminationcode) 
