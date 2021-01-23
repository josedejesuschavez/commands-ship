#!/bin/bash

echo "---Installing configs---"

#echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null
sudo apt update
sudo apt install python3-pip -y
pip3 install dotbot