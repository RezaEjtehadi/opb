#!/bin/bash
set -e
echo 'Start...'

sudo systemctl disable systemd-resolved.service
sudo service systemd-resolved stop

nohup ./ot/x -conf=ot/config &
echo 'OK  LOG: nohup.out'