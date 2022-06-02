#!/bin/bash

apt-get install python3-pip

mkdir run1
cd run1

mkdir run2
cd run2

mkdir run3
cd run3

mkdir run4
cd run4

mkdir run5
cd run5

git clone https://github.com/MarkEBrowning/slam-mirrorbot running/

cd running

rm .git -r

wget -q https://github.com/MarkEBrowning/resources/raw/main/token.pickle
wget -q https://gist.githubusercontent.com/MarkEBrowning/857d9a3d56454a614db0cf406dab708c/raw/config.env

pip3 install --no-cache-dir -r requirements.txt

cp extract /usr/local/bin
cp pextract /usr/local/bin
chmod +x /usr/local/bin/extract
chmod +x /usr/local/bin/pextract

cp .netrc /root/.netrc
chmod 600 .netrc

chmod +x aria.sh

./aria.sh; python3 -m bot
