#!/bin/bash


set -e

sudo mke2fs -t ext4 /dev/xvdf
sudo mkdir /mnt/music
sudo mount /dev/xvdf /mnt/music
sudo aws s3 cp --recursive s3://music-sourcebucket-1si6irtpk3shn/schtiel-scans /mnt/music
sudo umount /mnt/music