#!/bin/bash

if [ "$1" == "" ]; then
  echo "git-create-branch.sh: missing argument."
  echo "Try 'git-create-branch.sh --help' for more information."
  exit 0
fi

if [ "$1" == "--help" ]; then
  echo "Usage: git-create-branch.sh BRANCH_NAME"
  echo "Switches to develop branch, pulls changes and creates new branch feature/BRANCH_NAEM."
  exit 0
fi

git checkout develop && git pull origin develop && git checkout -b "feature/$1" || echo "Error"
