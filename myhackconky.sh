#!/bin/bash


cd "${0%/*}"
killall conky
cd conkyrss
./conky.AppImage -q -c rssfile &
sleep 3
cd ..
 ./conky.AppImage -q -c conkyrc &
 sleep 1
 ./conky.AppImage -q -c topfile &
 sleep 1
 ./conky.AppImage -q -c infofile &
 sleep 1




