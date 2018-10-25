#!/bin/bash
git --version
git fetch
changes=$(git diff master origin/master) 
if [ -z "$changes" ]
then
   echo No changes detected
else
   git pull origin master
fi
