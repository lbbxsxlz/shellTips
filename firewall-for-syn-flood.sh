#!/bin/bash

#modprobe xt_recent ip_list_tot=16384 ip_pkt_list_tot=50

# Variable
LOCAL_TPORTS=20,21,22,23,80,443,554,8800,5000
SYN_BURST=360

# DEFAULT Rule
iptables -F
iptables -P INPUT ACCEPT
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

# SYN_FLOOD
iptables -N SYN_FLOOD
iptables -A SYN_FLOOD -m recent --name SYN --update --second 60 --hitcount 1 -j ACCEPT
iptables -A SYN_FLOOD -m recent --name SYN --set -j DROP
#iptables -A SYN_FLOOD -p tcp -j DROP

# INPUT chain Rule
iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -p all -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -p tcp --syn -m multiport --dports $LOCAL_TPORTS -m limit --limit 1/m --limit-burst $SYN_BURST -j ACCEPT
iptables -A INPUT -p tcp --syn -m multiport --dports $LOCAL_TPORTS -j SYN_FLOOD