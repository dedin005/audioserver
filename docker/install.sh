#!/bin/bash

apt update -y
apt dist-upgrade -y
apt install pulseaudio vorbis-tools ffmpeg apache2 ncmpc -y

wget -q -O - https://apt.mopidy.com/mopidy.gpg | sudo apt-key add -
wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/buster.list
apt update
apt install mopidy mopidy-spotify mopidy-mpd -y

cp index.html /var/www/html

mkdir -p /var/www/html/src
cp apache2.conf /etc/apache2/apache2.conf 

mkdir -p ~/.config/mopidy/ 

systemctl start apache2

