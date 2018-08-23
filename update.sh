#!/bin/bash
git pull
date=$(date +"%Y-%m-%d %H:%M:%S")
docker build -t pegasy/warframedrops .

docker run --rm -v $(pwd):/data pegasy/warframedrops
git commit -am "Update ${date}"
git push

