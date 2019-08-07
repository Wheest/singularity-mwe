#!/bin/bash

echo "running some setup scripts"

echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'

mkdir /exper
mv /root/run /exper
mv /root/application /exper

# you may want to specify versions, or even have the actual package file saved
# and copied to the container.  Especially compilers
apt-get update
apt-get install -y cmake make gcc=4:8.3.0-1 g++=4:8.3.0-1
