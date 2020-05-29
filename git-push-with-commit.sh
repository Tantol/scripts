#!/bin/bash

if [ "$1" == "" ]; then
  echo "git-push-with-commit.sh: missing argument."
  echo "Try 'git-push-with-commit.sh --help' for more information."
  exit 0
fi

if [ "$1" == "--help" ]; then
  echo "Usage: git-push-with-commit.sh COMMIT_MESSAGE BRANCH_NAME"
  echo "Commits added changes with message: #BRANCH_NAME - COMMIT_MESSAGE, and pushes changes to BRANCH_NAME."
  echo "Argument BRANCH_NAME is optional, if not passed it will get current checked branch."
  exit 0
fi

branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
if [ "$2" != "" ]; then
  branch=$2
fi

git commit -m "#$branch - $1" && git push origin $branch || echo "ERROR"
