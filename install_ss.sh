#!/bin/bash


read -p "Enter your passwd:" passwd

apt-get install python3-pip > install.log

pip3 install shadowsocks >> install.log

ssserver -p 443 -k $passwd -m aes-256-cfb & >>install.log
