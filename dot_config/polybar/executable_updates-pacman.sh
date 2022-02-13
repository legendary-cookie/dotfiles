#!/bin/bash
wget -q --tries=10 --timeout=20 --spider http://google.com
if [[ ! $? -eq 0 ]]; then
  echo "Offline"
  exit
fi

if ! updates=$(checkupdates 2> /dev/null | wc -l ); then
    updates=0
fi

echo "$updates"
