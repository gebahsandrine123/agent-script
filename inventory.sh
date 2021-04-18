
#!bin/bash
#Description:systen inventory
#Author: san
echo -e "\nnumber of cpus\n"
nproc

echo -e "\nfirst digit of the kernel version\n"
uname -r |awk -F"." '{print $1}'

echo -e "\nos running and version\n"
cat /etc/*release

echo -e "\nsize of memory\n"
free -m

echo -e "\ncpu speed\n"
lscpu

echo -e "\nkernel version\n"
uname -r

echo -e "\n system bits\n"
arch

echo -e "\nchecking hostname\n"
hostname

echo -e "\nipaddress\n"
ip addr

echo -e "\nchecking all opening opened ports\n"
lsof -i

echo -e "\nchecking dns\n"
dig

echo -e "\nchecking the manufacturer\n"
dmidecode system-manufacturer

echo -e "\nchecking if the system is physical or virtual\n"
dmidecode

echo -e "\nchecking the mac address\n"
ifconfig -a

echo -e "\ntotal number of memory\n"
free -m |grep Mem |awk -F" " '{print $1}

if [ -f /etc/group ] && [ -f /etc/passwd ] && [ -f /etc/httpd ] && [ -f /etc/kubernetes ]
then
echo -e "\nchecked passed\n"
else
echo -e "\nchecked failed\n"
fi
