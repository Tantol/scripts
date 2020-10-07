#! /bin/bash

if [ "$@" == "" ]; then
  echo "Missing filename"
  exit 0
fi

bash ~/bin/tools/install-package-if-not-installed.sh "xclip"
xclip -selection clipboard -i $@
