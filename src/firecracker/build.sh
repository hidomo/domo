#!/bin/bash

latest=$(curl -sD - https://github.com/firecracker-microvm/firecracker/releases/latest | grep ^Location | cut -d'/' -f 8)
latest=${latest%$'\r'}
curl -LOJ "https://github.com/firecracker-microvm/firecracker/releases/download/${latest}/firecracker-${latest}" && \
mv firecracker-${latest} firecracker && chmod +x firecracker

latest=$(curl -sD - https://github.com/Yelp/dumb-init/releases/latest | grep ^Location | cut -d'/' -f 8)
latest=${latest%$'\r'}
curl -LOJ "https://github.com/Yelp/dumb-init/releases/download/${latest}/dumb-init_${latest:1}_amd64" && \
mv dumb-init_${latest:1}_amd64 dumb-init && chmod +x dumb-init