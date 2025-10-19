#!/bin/bash
containerIDs=$(docker ps -q)

if [ -z "$containerIDs" ]; then
  echo "No running containers to remove."
else
  docker rm -f $containerIDs
  echo "Removed all running containers."
fi

