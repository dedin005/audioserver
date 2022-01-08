#!/bin/bash

wget -q -O - https://apt.mopidy.com/mopidy.gpg | sudo apt-key add -
wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/buster.list

apt update -y
apt dist-upgrade -y
apt install mopidy mopidy-spotify mopidy-mpd pulseaudio vorbis-tools ffmpeg apache2 ncmpc -y

mkdir -p /var/www/html/src

cp hls.js /var/www/html/src
cp index.html /var/www/html

cp apache2.conf /etc/apache2/apache2.conf 

systemctl start apache2

