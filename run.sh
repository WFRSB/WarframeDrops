#!/bin/bash
wget -qO warframe-drops.html "https://n8k6e2y6.ssl.hwcdn.net/repos/hnfvc0o3jnfvc873njb03enrf56.html"
tidy -config tidy_config.txt -o warframe-drops-pretty.html warframe-drops.html

