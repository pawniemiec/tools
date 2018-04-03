#!/bin/bash

DIR=$(dirname "$0")
echo "Starting in ${DIR}"

git add .
git commit -m "Automatic push at $(date +%Y%m%d-%H%M%S)"
git secrets --install -f && git secrets --scan && git push origin master


