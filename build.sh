#!/bin/bash
for i in $(ls ./src); do
    echo "Building ${i}..."
    (pushd ./src/${i} && domoBuild ${i} && popd && \
    rsync -a ./src/${i}/bin/ ./bin/) || (exit 1)
done
# if ! (which docker-compose > /dev/null); then
#     URL=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep browser_download_url | grep run.sh | awk -F '"' '{print $4}')
#     curl -sL ${URL} > ./bin/docker-compose
#     chmod +x ./bin/docker-compose
# fi

docker volume create --driver local \
  --opt type=nfs --opt o=addr=host.docker.internal,rw,nolock,hard,nointr,nfsvers=3 \
  --opt device=":/Users" local