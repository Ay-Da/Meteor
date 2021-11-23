import requests
import sys 
import socket

if len(sys.argv) == 2:
	ip = socket.gethostbyname(sys.argv[1]) 
	
else:
	print("Invalid Syntax")
	print("Give an arguments Syntax-- pyhton3 IPGeolocation.py <ip>")
	sys.exit()
	
response = requests.post("http://ip-api.com/batch", json=[
  {"query": ip}
]).json()

for ip_info in response:
    for k,v in ip_info.items():
        print(k,v)
    print("\n")