#!/bin/bash

echo 'Building new version...'
cd ./projects/$1
new_version_number=$(npm version patch)
ng build $1

echo 'Copying the new version into library repo...'
cp -R ./../../dist/$1/* ./../../../$1
cd ./../../../$1

echo 'Uploading library to remote git repository...'
git add *
git commit -am $new_version_number
git push

echo 'Library version' $new_version_number 'successfully published! :)'
