#!/bin/bash

VERSION=${VERSION:-3.6.6}
if [ -d "/arthas" ]; then
  echo "directory \"/arthas\" exists"
else
  echo "directory \"/arthas\" does not exist"
  mkdir /agent
fi

if [ -f "/arthas/arthas-agent.jar" ]; then
  echo "File \"/arthas/arthas-agent.jar\" exists"
  exit 0
else
  mkdir -p /arthas/conf
  cp /arthas.properties /arthas/conf/arthas.properties
  echo "Downloading Arthas Java Agent..."
  wget -O /arthas/arthas-bin.zip  https://ghproxy.com/https://github.com/alibaba/arthas/releases/download/arthas-all-"$VERSION"/arthas-bin.zip
  unzip -o /arthas/arthas-bin.zip
  rm -f /arthas/arthas.properties
  cp /arthas/conf/arthas.properties /arthas/arthas.properties
  echo "Downloaded Arthas Java Agent"
fi