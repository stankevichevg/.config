#!/bin/sh 

machine=$DOCKER_MACHINE

function setup_environment
{
  echo 'Setup machine environment:'
  echo $(docker-machine env $machine)  
  eval $(docker-machine env $machine)  
}

function start_docker_host 
{
  echo "Starting host machine $machine..."
  docker-machine start $machine > /dev/null 2>&1 
  sleep 5
}

status=$(docker-machine status $machine)

if [ "$status" != "Started" ]; then
  echo "Status of the machine $machine is stopped. Trying to start is first."
  start_docker_host
  setup_environment
fi                             

if [ -z $DOCKER_MACHINE_NAME ]; then
  setup_environment
fi
