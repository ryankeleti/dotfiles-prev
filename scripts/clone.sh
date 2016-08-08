#!/bin/bash

# script for git cloning --- @ryankeleti

echo -en ":: Enter gituser: "
read gituser
echo -en ":: Enter gitrepo: "
read gitrepo
echo -en ":: Enter gitdir: "
read gitdir
echo     

echo -e "git clone https://github.com/$gituser/$gitrepo.git $gitdir\n"
echo -en ":: Continue? "
read confirm

if [[ $confirm == 'y' ]]; then
  git clone https://github.com/$gituser/$gitrepo.git $gitdir
else
  exit 1
fi

if [[ $? == 0 ]]; then
  echo -e ":: Done"
else
  echo -e ":: Error"
fi

