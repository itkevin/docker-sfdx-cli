#!/bin/sh

git clone https://github.com/ChuckJonas/sfdx-git-packager.git packager
cd packager
git checkout 0.3.1
sfdx plugins:link