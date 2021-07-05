#!/bin/sh

git clone https://github.com/ChuckJonas/sfdx-git-packager.git packager
cd packager
npm install
sfdx plugins:link