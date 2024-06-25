#!/bin/bash
set -e

# Get the IDs of all running containers
container_ids=$(docker ps -q)

# Check if there are any running containers
if [ -n "$container_ids" ]; then
  # Stop and remove all running containers
  docker container rm -f $container_ids
  echo "Stopped and removed the following containers: $container_ids"
else
  echo "No running containers to stop."
fi
