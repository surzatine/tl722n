#!/bin/bash

echo '*make sure to run sudo su '

echo '1. Download driver for TP-LINK TL-WN722N'
echo '2. Install driver for TP-LINK TL-WN722N'

echo
sudo echo

echo
read -p '=> ' a


case $a in
  1)
    echo 'Downloading Driver...'
      sudo apt install bc
    sudo apt install build-essential
    sudo apt install libelf-dev
    sudo apt install linux-headers-$(uname -r)
    sudo apt install dkms
    sudo rmmod r8188eu.ko
    git clone https://github.com/aircrack-ng/rtl8188eus
    cd rtl8188eus
    sudo echo "blacklist r8188eu" > "/etc/modprobe.d/realtek.conf"
    sudo reboot
    ;;


  2)
    echo 'Installing Driver...'
    cd rtl8188eus
    sudo make
    sudo make install
    sudo modprobe 8188eu
    ;;

  *)
    echo 'Incorrect option'
    ;;
esac
