#!/bin/sh

latest=$(curl -sD - https://github.com/firecracker-microvm/firecracker/releases/latest | grep ^Location | cut -d'/' -f 8)
latest=${latest%$'\r'}
curl -LOJ https://github.com/firecracker-microvm/firecracker/releases/download/${latest}/firecracker-${latest} && \
mv firecracker-${latest} firecracker && chmod +x firecracker