#!/bin/bash

rm Packages*
./dpkg-scanpackages -m . /dev/null > Packages
bzip2 -c9 Packages > Packages.bz2
gzip -c9 Packages > Packages.gz

git add .

read -p "Enter commit title: "  commit
git commit -m "$commit"

git push