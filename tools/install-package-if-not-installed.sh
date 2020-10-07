#! /bin/bash

if [ "$1" == "" ]; then
  echo "Missing pkg name"
  exit 0
fi

check=$(dpkg-query -W --showformat='${Status}\n' $1|grep "install ok installed")
if [ "" = "$check" ]; then
  echo "No $1. Setting up $1."
  sudo apt-get install $1
fi
