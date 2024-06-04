#!/bin/bash

# Exit script if any command fails
set -e

#build project on local environment
read -r -p "Do you want to BUILD project locally? [y/n]:" user_local_build_agg

if [[ "$user_local_build_agg" = "y" ]]; then
    docker-compose down
    docker-compose build --no-cache
fi;

read -r -p "Do you want to RUN project locally? [y/n]:"  user_local_aggrement_input

if [[ "$user_local_aggrement_input" = "y" ]]; then
    docker-compose up -d --remove-orphans
fi;

echo "---!- Local build completed -!---"