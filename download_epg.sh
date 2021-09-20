#!/bin/bash

echo -e "\e[1;31m [INFO] Downloading Aria2 \e[0m"
wget https://github.com/P3TERX/Aria2-Pro-Core/releases/download/1.36.0_2021.08.22/aria2-1.36.0-static-linux-amd64.tar.gz

echo -e "\e[1;31m [INFO] Extracting Aria2 \e[0m"
tar -zxf aria2-1.36.0-static-linux-amd64.tar.gz
ls -a 

echo -e "\e[1;31m [INFO] Downloading EPG from weareblahs/epg \e[0m"
rm *.xml
chmod a+X aria2c
./aria2c -x 10 -s 10 https://github.com/weareblahs/epg/raw/master/rtmklik.xml

echo -e "\e[1;31m [INFO] Cleaning up \e[0m"
rm *.tar.gz
rm aria2c

echo -e "\e[1;31m [INFO] Generating Date & Time file in UTC+08 \e[0m"
echo "`env TZ=UTC-08 date`" > "Date & Time UTC +08.txt"

echo -e "\e[1;31m [INFO] Done \e[0m"
