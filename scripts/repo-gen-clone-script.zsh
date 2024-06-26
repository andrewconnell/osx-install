#!/bin/zsh

# This is intended to be run from the root folder where repos are located (ie: ~/repos).
#   It outputs to the console commands used to clone repos and, if defined, add the
#   remote `upstream` to the repo. For example...
#
# > Run this on the machine where the repos are located....
# cd ~/repos
# ~/repos/osx-install/scripts/repo-gen-clone-script.zsh
# > take the results of the above command and run on the new machine...para

ROOT_DIR=$PWD
for REPO_DIR in */; do
  cd $REPO_DIR

  # get origin url
  echo "git clone $(git config --get remote.origin.url)"

  # get upstream if present
  UPSTREAM_REMOTE="$(git config --get remote.upstream.url)"
  if [ ! -z "$UPSTREAM_REMOTE" ]
  then
    echo "cd $REPO_DIR"
    echo "git remote add upstream $(git config --get remote.upstream.url)"
  fi

  echo "cd $ROOT_DIR"
  cd $ROOT_DIR
  echo ""
done
