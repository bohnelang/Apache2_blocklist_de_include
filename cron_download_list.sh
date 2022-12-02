#!/bin/bash

cd /etc/apache2/blockiplist/


cat <(curl -s https://lists.blocklist.de/lists/apache.txt)  <(curl -s https://lists.blocklist.de/lists/strongips.txt) <(curl -s https://lists.blocklist.de/lists/bruteforcelogin.txt)  | sort | uniq | sed s/"$"/" -"/g > badips.dat

/usr/sbin/httxt2dbm -i  badips.dat -o  badips.dbm

/usr/sbin/apachectl graceful
