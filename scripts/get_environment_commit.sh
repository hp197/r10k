#! /bin/bash

BASEDIR=$(dirname "$0")
GITDIR=$(realpath "${BASEDIR}/../.git")

# check to make sure the env repo exists
if [ -d "${GITDIR}" ];
then
  git --git-dir "${GITDIR}" rev-parse --short HEAD
else
  date '+%s'
fi

