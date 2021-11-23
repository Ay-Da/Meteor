#!/bin/bash

#Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"


#ROOT PRIVILEGIES
if [[ $EUID -ne 0 ]]; then
        echo -e "$red You don't have Root privilegies, run this script as a root.$nc"
        exit 1
fi

#Installation
sleep 1
echo -e "Checking Installation $nc"
bash Setup.sh
echo -e "Checking Completed [$green✓$nc] $nc "
sleep 1
clear

#Startup


echo -e "$green"     
echo "                  ███╗   ███╗███████╗████████╗███████╗ ██████╗ ██████╗  "
echo "                  ████╗ ████║██╔════╝╚══██╔══╝██╔════╝██╔═══██╗██╔══██╗ "
echo "                  ██╔████╔██║█████╗     ██║   █████╗  ██║   ██║██████╔╝ "
echo "                  ██║╚██╔╝██║██╔══╝     ██║   ██╔══╝  ██║   ██║██╔══██╗ "
echo "                  ██║ ╚═╝ ██║███████╗   ██║   ███████╗╚██████╔╝██║  ██║ "
echo -e "                  ╚═╝     ╚═╝╚══════╝   ╚═╝   ╚══════╝ ╚═════╝ ╚═╝  ╚═╝ $nc $blue v1.0$nc"    
                                             
echo "                                                                                        "
echo "                                                                                        "
echo -e "	[+]              $red Coded By Daboussi Aymen$nc         		   [+]"
echo -e "	[+] 		 $red www.instagram.com/aymendaboussi$nc 		   [+]"
echo -e "	[+] 		 $red www.github.com/Ay-Da $nc 		           [+]"
echo -e "	[+] 		 $red Greetz To All Pentesters$nc          		   [+]"

echo ""
echo -e "$yellow Select From Menu : $nc"
echo ""
echo -e "           $Cyan 1 : SubFinder $nc enumerate subdomains of websites using Open Source Intelligence "
echo -e "	   $Cyan 2 : PortScanner $nc test whether ports of an IP address are open."
echo -e "	   $Cyan 3 : IP Geolocation $nc identification of the geographic location of a device by using an IP address."
echo -e "	   $Cyan 4 : DDos Attack $nc  is an attempt to make an online service unavailable."
echo -e "	   $Cyan 5 : Hash Identifier $nc identify the different types of hashes used to encrypt data and especially passwords."
echo -e "	   $Cyan 99: Exit$nc"
echo ""
read -p "Choice >  " ch

if [ $ch = 1 ]; then
echo -e "		                          	$Cyan SubFinder $nc"
echo -e "$green"
read -p " write Website : " dm
echo -e "$nc"
cd SubFinder
python3 SubFinder.py -d $dm

echo -e " 		               [+]$yellow SubFinder Complete $nc[$green✓$nc] $nc[+]"
echo -e "$red"
read -p "Wanna Back To Main Menu [ Y / n ] : " check
echo -e "$nc"
if [ $check = "Y" ]; then
cd .. && bash Meteor.sh
elif [ $check = "y" ]; then
cd .. && bash Meteor.sh
elif [ $check = "Yes" ]; then
cd .. && bash Meteor.sh
elif [ $check = "yes" ]; then
cd .. && bash Meteor.sh
elif [ $check = "YES" ]; then
cd .. && bash Meteor.sh
else
exit 1
fi
fi

if [ $ch = 2 ]; then
echo -e "		                          	$Cyan PortScanner $nc"
echo -e "$green"
read -p " write IP Address : " ip
echo -e "$nc"
echo -e "$green"
read -p " write StartPort : " startPort
echo -e "$nc"
echo -e "$green"
read -p " write EndPort: " endPort
echo -e "$nc"
cd PortScanner
python PortScanner.py $ip $startPort $endPort

echo -e " 		               [+]$yellow PortScanner Complete $nc[$green✓$nc] $nc[+]"
echo -e "$red"
read -p "Wanna Back To Main Menu [ Y / n ] : " check
echo -e "$nc"
if [ $check = "Y" ]; then
cd .. && bash Meteor.sh
elif [ $check = "y" ]; then
cd .. && bash Meteor.sh
elif [ $check = "Yes" ]; then
cd .. && bash Meteor.sh
elif [ $check = "yes" ]; then
cd .. && bash Meteor.sh
elif [ $check = "YES" ]; then
cd .. && bash Meteor.sh
else
exit 1
fi
fi

if [ $ch = 3 ]; then
echo -e "		                          	$Cyan IP Geolocation $nc"
echo -e "$green"
read -p " write IP Address : " ip1
echo -e "$nc"
cd IPGeolocation
python3 IPGeolocation.py $ip1 $startPort $endPort

echo -e " 		               [+]$yellow IP Geolocation Complete $nc[$green✓$nc] $nc[+]"
echo -e "$red"
read -p "Wanna Back To Main Menu [ Y / n ] : " check
echo -e "$nc"
if [ $check = "Y" ]; then
cd .. && bash Meteor.sh
elif [ $check = "y" ]; then
cd .. && bash Meteor.sh
elif [ $check = "Yes" ]; then
cd .. && bash Meteor.sh
elif [ $check = "yes" ]; then
cd .. && bash Meteor.sh
elif [ $check = "YES" ]; then
cd .. && bash Meteor.sh
else
exit 1
fi
fi

if [ $ch = 4 ]; then
echo -e "		                          	$Cyan DDos Attack $nc"

cd DDosAttack
python DDos-Attack.py

echo -e " 		               [+]$yellow DDos Attack Complete $nc[$green✓$nc] $nc[+]"
echo -e "$red"
read -p "Wanna Back To Main Menu [ Y / n ] : " check
echo -e "$nc"
if [ $check = "Y" ]; then
cd .. && bash Meteor.sh
elif [ $check = "y" ]; then
cd .. && bash Meteor.sh
elif [ $check = "Yes" ]; then
cd .. && bash Meteor.sh
elif [ $check = "yes" ]; then
cd .. && bash Meteor.sh
elif [ $check = "YES" ]; then
cd .. && bash Meteor.sh
else
exit 1
fi
fi

if [ $ch = 5 ]; then
echo -e "		                          	$Cyan Hash Identifier $nc"

cd HashIdentifier
python Hash-Identifier.py

echo -e " 		               [+]$yellow Hash Identifier Complete $nc[$green✓$nc] $nc[+]"
echo -e "$red"
read -p "Wanna Back To Main Menu [ Y / n ] : " check
echo -e "$nc"
if [ $check = "Y" ]; then
cd .. && bash Meteor.sh
elif [ $check = "y" ]; then
cd .. && bash Meteor.sh
elif [ $check = "Yes" ]; then
cd .. && bash Meteor.sh
elif [ $check = "yes" ]; then
cd .. && bash Meteor.sh
elif [ $check = "YES" ]; then
cd .. && bash Meteor.sh
else
exit 1
fi
fi

