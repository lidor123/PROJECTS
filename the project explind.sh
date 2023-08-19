#!/bin/bash

#main manu

echo "WELLCOME TO PT PROJECT"
echo "HERE IS THE WORK MENU"
echo "PRESS 1 FOR SERCHSPLOIT"
echo "PRESS 2 FOR NSE VULNSCAN SERCH"
echo "PRESS 3 FOR NMAP INPUT & FOURCE" 
echo "PRESS 4 FOR EXIT"
echo "|" 
echo "|"
echo "|"
echo "|"
echo "|"
read input
if [[ "$input" == "1" ]]
then
	function searchsploit1 () {


echo "SUDO ARP SCAN ON!"
sudo arp-scan -l
sleep 5
echo "GIVE ME IP ADDERSS"
read var
sudo nmap  -sV $var
sleep 3
echo "WHET VERSION DO YOU WANT CHECK?"
read vbr
searchsploit $vbr
echo "|"
echo "|"
echo "|"
echo "|"
echo "|"
./pt2.sh

$var

#in this part we doing searchsploit.
#first  the aviliable ip address for scan automaticly been check and presented .
#secend you will be ask to input one of the ip adress for nmap service check.
#third the program will ask you whet service from the input of nmap you want to searchsploit. 

}
searchsploit1
elif [[ "$input" == "2" ]]
then
	function NCE () {

sudo arp-scan -l
sleep 3 
echo "GIVE ME IP ADDERSS"
read var
sudo nmap  -sV $var
cd  /usr/share/nmap/scripts/vulscan/  
pwd
sleep 2
echo "GIVE ME IP ADDRESS YOU WANT TO CHECK"
read  omg
echo "GIVE ME PORT NUMBER"
read  omg1
sudo nmap -sV --script=vulscan.nse $omg -p$omg1
echo "|"
echo "|"
echo "|"
echo "|"
echo "|"
echo "DONE!"
./pt2.sh

$var

#in this part we use nse scripts for find weekneses
#first after the script is doing auto arp scan we insurt the ip address we want to check.
#secend, after  the script doing auto nmap -sV search to the ip address you will be past to  
#/usr/share/nmap/scripts/vulscan/  automaticly and the script will ask you for the wanted ip add once more
#and the port number you whold want to check - in the end of thet you will get a list of Vulnerabilities if there  are any knowen.

}
NCE
elif [[ "$input" == "3" ]]
then
	function BRUTE () {

echo "LETS BRUTE THINGS UP!"
sudo arp-scan -l
echo "GIVE ME IP ADDRESS"
read var
sudo nmap  -sV $var
cd  /usr/share/nmap/scripts/
pwd
sleep 2
ls *brute*
echo "GIVE ME THE KIND OF SCRIPT YOU WANNA TRY"
read omg
echo "GIVE ME PORT NUMBER"
read omg2
echo "GIVE ME THE IP ADD"
read omg3
echo "GIVE ME THE PATH TO THE USER FILE (FOR EXMPLE: /usr/share/metasploit-framework/data/wordlists/unix_users.txt) "
read omg4
echo "GIVE ME THE PATH TO THE PASSWORD FILE (FOR EXMPLE:  /usr/share/wordlists/rockyou.txt.gz)"
read omg5
sudo nmap --script=$omg -p$omg2 $omg3 --script-args userdb=$omg4,passdb=$omg5

./pt2.sh

#in this part we will use NSE script to brute force.
#1.after auto network scan we need to input the wanted ip add.
#2. the script will get us to the nmap script file and will present us only the brute force options.
#3.the script will ask us to input - the kind of brute script we will want to use , the number of port, the ip add
# the path for the user name file , and  the path to the passwords file we need.
#4. the script will check for week password true brutefource.
 




}
BRUTE
elif  [[ "$input" == "4" ]]
then
 	function byebye () {

#exit menu panel

exit




}
byebye

fi



1.1 -

















 
