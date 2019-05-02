# xebmpi
Implementing MPI within a docker swarm - specifically aimed at raspberry pi clusters.


xebmpi-stack.yml
  - stack/compse file for creating the whole cluster

xebmpi-alice-dockerfile 
  - dockerfile for building the alice container that will act as interface to the cluster, exposes only ssh on port 23

xebmpi-doll-dockerfile
  - dockerfile for building the doll containers, these all listen on port 22 for ssh from alice and have keybased access configured
 
xebmpi-alice.sh
  - script alice will run at start-up - sorting keys and starting sshd
  
xebmpi-doll.sh
  - script each doll will run at start up - sorting keys, passing name and threadcount to consul and starting sshd

buildmachinefile.sh
  - present on alice - pulls from consul and creates mpich compatable machinefile
  
  
