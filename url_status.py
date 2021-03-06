#!/usr/bin/python

import sys
import threading
import time
from commands import getstatusoutput as getoutput

data=[]

class myThread (threading.Thread):
   def __init__(self, url):
      threading.Thread.__init__(self)
      self.url=url
   def run(self):
       out=getoutput('curl -sL -D - '+ self.url  +' -o /dev/null | grep HTTP | tail -n 1  | awk \'{print $2}\' ')
       val='null' if out[1]=='' else out[1]
       data.append(val + ":" + self.url)


print "working..."
initial=threading.activeCount()

for url in sys.stdin:
    if url == '' or url == '\n':
        continue
    myThread(url.strip()).start()
    # do not increase the max number of threads more tha 99
    # while threading.activeCount() > 50: ; 50 is max number of threads
    while threading.activeCount() > 50:
        time.sleep(1)
while threading.activeCount() > initial:
    time.sleep(1)
print "\n".join(data)
