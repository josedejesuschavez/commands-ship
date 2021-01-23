echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null
sudo apt update
sudo apt install python3-pip
pip3 install dotbot
dotbot -c symlinks/conf.yaml