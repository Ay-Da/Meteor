#!/bin/python

import sys 
import socket
from datetime import datetime as dt

if len(sys.argv) == 4:
	target = socket.gethostbyname(sys.argv[1]) 
        startPort = int ((sys.argv[2]))
        endPort = int((sys.argv[3]))
	
else:
	print("Invalid Syntax")
	print("Give an arguments Syntax-- pyhton3 scanner.py <ip>")
	sys.exit()	


print("-" * 50)
print("Scanning target: " + target)
t1 = dt.now()
print("Time Started : " + str(t1))
print("-" * 50)

# Port Scanner
bol = False

try:
	for port in range(startPort,endPort):
		s = socket.socket(socket.AF_INET,socket.SOCK_STREAM)	
		socket.setdefaulttimeout(0.9) 
		print("            [+] Scanning the port {} ".format(port))
		result = s.connect_ex((target,port)) 
		if result == 0:
			bol = True
			print("            [+] The Scanned/Opened port is {} ".format(port))
		s.close()
		
except KeyboardInterrupt:
	print("Exiting the scan")
	sys.exit()

except socket.gaierror:
	print("Host could not be resolved")
	sys.exit()

except socket.error:
	print("Could not connect to the server")
	sys.exit()					
if bol == False:
	print("No ports open.")	

t2 = dt.now()
print("-"* 50)
print("Time Latency : " + str(t2 -t1) + " secs")