#!/bin/bash
#
# Bootstraps a CEPH monitor, and launches the services.
#

sh ./ceph.conf.sh `hostname -i`

sh ./mon.sh `hostname -i`

sh ./osd.sh 0
sh ./osd.sh 1

ceph osd tree


ps -ef |grep ceph

# create a pool for kube test
ceph osd pool create kube 24
# create an image inside kube pool
rbd create foo --size 10 --pool kube

ceph -w
