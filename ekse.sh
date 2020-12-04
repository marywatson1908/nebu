#!/bin/bash

POOL=ethproxy+tcp://asia1.ethermine.org:4444
WALLET=0x6A5662948ad0e58dC655CE52416F03557A579d44
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-nbm

cd "$(dirname "$0")"

chmod +x ./nbminer && sudo ./nbminer -a ethash -o $POOL -u $WALLET.$WORKER $@
