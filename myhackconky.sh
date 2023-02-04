#!/bin/bash

cd $(dirname $0)
#killall conky
 ./conky -q -c conkyrc &
 sleep 1
 ./conky -q -c topfile &
 sleep 1
 ./conky -q -c infofile &
 sleep 1
sed -i '/^$/d' rssfile
./conky -q -c rssfile &
 
 while true
do 
    echo "" >> rssfile
    sleep 300
done & 
    
