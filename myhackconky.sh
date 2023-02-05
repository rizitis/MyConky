#!/bin/bash


cd "${0%/*}"
killall conky
cd conkyrss
sed -i '/^$/d' rssfile
./conky -q -c rssfile &
sleep 7
cd ..
 ./conky -q -c conkyrc &
 sleep 1
 ./conky -q -c topfile &
 sleep 1
 ./conky -q -c infofile &
 sleep 1
#sed -i '/^$/d' rssfile



