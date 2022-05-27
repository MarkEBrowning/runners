#!/bin/bash

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

pip3 install --no-cache-dir -r requirements.txt

cp extract /usr/local/bin
cp pextract /usr/local/bin
chmod +x /usr/local/bin/extract
chmod +x /usr/local/bin/pextract

cp .netrc /root/.netrc
chmod 600 /usr/src/app/.netrc

chmod +x aria.sh

./aria.sh; python3 -m bot
