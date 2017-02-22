#!/bin/bash

# reset all counters and iptables rules
iptables -Z && iptables -F
# measure incoming traffic to 10.11.0.37
iptables -I INPUT 1 -s 10.11.0.37 -j ACCEPT
# measure outgoing traffic to 10.11.18.47
iptables -I OUTPUT 1 -d 10.11.18.47 -j ACCEPT

