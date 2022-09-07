#!/bin/bash

VERSION=${VERSION:-3.6.6}
if [ -d "/agent" ]; then
  echo "directory \"/agent\" exists"
else
  echo "directory \"/agent\" does not exist"
  mkdir /agent
fi

if [ -d "/agent/arthas" ]; then
  echo "directory \"/agent/arthas\" exists"
  exit 0
else
  echo "Downloading Arthas Java Agent..."
  wget https://github.com/alibaba/arthas/releases/download/arthas-all-"$VERSION"/arthas-bin.zip -O /agent/arthas-bin.zip
  unzip /agent/arthas-bin.zip -d /agent/arthas
  rm -f /agent/arthas/arthas.properties
  mv /arthas.properties /agent/arthas/arthas.properties
  echo "Downloaded Arthas Java Agent"
fi