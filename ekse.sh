#!/bin/bash

POOL=stratum+tcp://asia1-etc.ethermine.org:4444
WALLET=0x01b0abc6097e8c270396784de24f86f9f5daa510
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-nbm

cd "$(dirname "$0")"

chmod +x ./nbminer && sudo ./nbminer -a etchash -o $POOL -u $WALLET.$WORKER $@
