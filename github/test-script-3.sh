#!/bin/bash

# Set the repository URL
REPO_URL="git@github.com:balujaddu/devops-notes-app.git"

# Clone the repository
git clone $REPO_URL
cd devops-notes-app

# Set the origin URL
git remote set-url origin $REPO_URL

# Pull the master branch
git checkout master
git pull origin master

# Create and push new branches
git checkout -b test-abc
git push -u origin test-abc

git checkout master
git checkout -b test-xyz
git push -u origin test-xyz

# Make changes and commit to test-abc branch
git checkout test-abc
echo "Some changes" >> changes.txt
git add changes.txt
git commit -m "Made some changes in test-abc branch"
git push origin test-abc

# Raise a pull request between test-xyz and test-abc using git request-pull
git request-pull test-xyz origin/test-abc

# Merge the pull request
git checkout test-xyz
git merge test-abc
git push origin test-xyz