#!/bin/bash

if [ "$1" == "--help" ]; then
  echo "Usage: git-create-branch.sh CREATE_FROM_BRANCH_NAME NEW_BRANCH_NAME "
  echo "Switches to CREATE_FROM_BRANCH_NAME branch, pulls changes and creates new branch BRANCH_NAME."
  exit 0
fi

if [ "$1" == "" ]; then
  echo "git-create-branch.sh: missing argument - CREATE_FROM_BRANCH_NAME."
  echo "Try 'git-create-branch.sh --help' for more information."
  exit 0
fi

if [ "$2" == "" ]; then
  echo "git-create-branch.sh: missing argument - NEW_BRANCH_NAME."
  echo "Try 'git-create-branch.sh --help' for more information."
  exit 0
fi

git checkout $1 && git pull origin $1 && git checkout -b $2 && echo "Done" || echo "Error"
