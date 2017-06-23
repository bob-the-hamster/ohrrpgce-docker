#!/bin/sh

cd /ohrrpgce

if [ ! -d "wip" ] ; then
  echo "Check out a fresh working copy of the ohrrpgce wip branch"
  svn co http://rpg.hamsterrepublic.com/source/wip wip
  if [ ! -d "wip" ] ; then
    echo "Unable to check out ohrrpgce wip branch"
    exit 1
  fi
else
  echo "Update existing working copy of the ohrrpgce wip branch"
  svn cleanup wip
  svn update wip
fi

cd wip
scons

