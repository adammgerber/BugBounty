#!/bin/bash

while:
do
wget "https://chaos-data.projectdiscovery.io/starbucks.zip"
domains(){
    mkdir subdomains
    unzip -o "https://chaos-data.projectdiscovery.io/starbucks.zip" -d /root/$domain/subdomains
    rm -r "starbucks.zip"
}
domains

cat /root/subdomains/*.mil.* > subdomains_list.txt 
cat subdomains_list.txt | anew baseline_subdomains.txt > added-subdomains.txt
sleep 1m
cat added-subdomains.txt | notify

sleep 24h
done

