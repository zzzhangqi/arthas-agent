#!/bin/bash

if [ -z "$(ls -A /arthas)" ]; then
  echo "Copying Arthas agent file to arthas directory·····················"
  cp -vR /opt/arthas/* /arthas
  echo "Copy Arthas agent file to arthas directory successful····················"
else
  echo "Directory Arthas file already exists····················"
fi