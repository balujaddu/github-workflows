#!/bin/bash

git remote set-url origin https://github.com/balujaddu/devops-notes-app.git
git pull origin master
echo "Cloning repo completed"

cd devops-notes-app
git checkout -b test-abc
git checkout -b test-xyz
echo "Created new branches"

git checkout test-abc
touch abc.txt
git add .
git commit -m "adding a file"
git push origin test-abc
echo "commited to the branch"

git request-pull test-xyz https://github.com/balujaddu/devops-notes-app.git test-abc
echo "Pull reqiest raised"

git fetch origin
git checkout test-xyz
git merge --no-ff origin/text-xyz https://github.com/balujaddu/devops-notes-app.git origin/test-abc
echo "PR merged"

cd ..
rm -rf devops-notes-app
rm -rf github-worflows
