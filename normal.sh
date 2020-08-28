#!/bin/bash

git add .

read -p "Enter commit title: "  commit
git commit -m "$commit"

git push