#!/bin/bash

echo -en ":: enter gituser    "
read gituser
echo -en ":: enter gitrepo    "
read gitrepo
echo -en ":: enter gitdir   "
read gitdir
echo     

echo -e "git clone https://github.com/$gituser/$gitrepo.git $gitdir\n"
echo -en ":: continue   "
read confirm

if [[ $confirm == 'y' ]]; then
  git clone https://github.com/$gituser/$gitrepo.git $gitdir
else
  exit 1
fi

if [[ $? == 0 ]]; then
  echo -e ":: done"
  exit 0
else
  echo -e ":: error"
  exit 1
fi

