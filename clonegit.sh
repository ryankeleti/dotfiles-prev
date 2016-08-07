#!/bin/bash

# script for git cloning --- @ryankeleti

echo -en ":: Enter gituser: "
read gituser
echo -en ":: Enter gitrepo: "
read gitrepo
echo     

echo -e "git clone https://github.com/$gituser/$gitrepo.git\n"
echo -en ":: Continue? "
read confirm

if [[ $confirm == 'y' ]]; then
  git clone https://github.com/$gituser/$gitrepo.git
else
  exit 1
fi

if [[ $? == 0 ]]; then
  echo -e ":: Done"
else
  echo -e ":: Error"
fi

