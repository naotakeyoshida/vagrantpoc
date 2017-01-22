#!/bin/bash

## Check execution 
test -f /home/vagrant/ok && exit

## Add node list to hosts
sudo -- sh -c "echo '192.168.33.11   node1.local node1' >> /etc/hosts"
sudo -- sh -c "echo '192.168.33.12   node2.local node2' >> /etc/hosts"
sudo -- sh -c "echo '192.168.33.13   node3.local node3' >> /etc/hosts"
sudo -- sh -c "echo '192.168.33.14   node4.local node4' >> /etc/hosts"
sudo -- sh -c "echo '192.168.33.15   node5.local node5' >> /etc/hosts"

## Set timezone
sudo cp /usr/share/zoneinfo/Japan /etc/localtime

## Fingerprint for next boot
date > /home/vagrant/ok
