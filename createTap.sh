#! /bin/bash

 ifconfig
 sudo ip tuntap add dev tap0 mode tap
 sudo ip link set dev tap0 up
 sudo ip address add dev tap0 192.168.1.128/24
 ifconfig
