#!/bin/bash

cp /swarm/mpi/ssh/* /home/mpi/.ssh/ 
cp /home/mpi/.ssh/id_rsa.pub /home/mpi/.ssh/authorized_keys

/usr/sbin/sshd -D


