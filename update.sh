#!/bin/bash
git pull
date=$(date +"%Y-%m-%d %H:%M:%S")
url="https://n8k6e2y6.ssl.hwcdn.net/repos/hnfvc0o3jnfvc873njb03enrf56.html"
wget -qO warframe-drops.html "$url"
git commit -am "Update ${date}"
git push

