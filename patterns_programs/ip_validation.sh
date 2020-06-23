#!/bin/bash -x

function ip_validation()
{
	if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]];
	then
		echo "IPv4 IP address"
	elif [[ $ip =~ ^[A-Fa-f0-9:]+$ ]];
	then
		echo "may be IPv6 IP adress"
	else
		echo "oops"
	fi
}
read -p "enter ip adress " ip
ip_validation $ip
