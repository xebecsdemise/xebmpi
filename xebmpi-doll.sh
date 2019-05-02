#!/bin/bash

cp /swarm/mpi/ssh/* /home/mpi/.ssh/ 
cp /home/mpi/.ssh/id_rsa.pub /home/mpi/.ssh/authorized_keys

THREADCOUNT=$(nproc)
REPLY=""

until [[ $REPLY == "true" ]]
do
	REPLY=$(curl -s -XPUT mpiconsul:8500/v1/kv/mpidolls/$HOSTNAME -d "$THREADCOUNT")
	echo $REPLY
done
	echo "GREAT SUCCESS"
/usr/sbin/sshd -D


