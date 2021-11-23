#!/bin/bash
#Sysupdate
sudo apt-get update 

#Python
sudo apt-get install python
sudo apt install python3-pip
sudo apt-get install python3

#SubFinder
cd SubFinder
chmod +x SubFinder.py
cd ..

#Install requirements
pip install -r requirements.txt

#PortScanner
cd PortScanner
chmod +x PortScanner.py
cd ..

#IPGeolocation
cd IPGeolocation
chmod +x IPGeolocation.py
cd ..

#HashIdentifier
cd HashIdentifier
chmod +x Hash-Identifier.py
cd ..

#DDosAttack
cd DDosAttack
chmod +x DDos-Attack.py
cd ..

