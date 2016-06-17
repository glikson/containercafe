#!/bin/sh

# This script is called by ucarp when it becomes a backup.
#
# Params:
# 1 - interface, such as eth0
# 2 - vip ip address
# 3 - cidr prefix such as /24 for the vip network.  See the -x parm in the if-up.d/vip script

/sbin/ip addr del $2$3 dev $1
docker stop haproxy