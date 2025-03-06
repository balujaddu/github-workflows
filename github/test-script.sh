#!/bin/bash

git remote add origin https://github.com/balujaddu/github-workflows.git
git pull origin master:master
echo "Cloning repo completed"

git checkout -b test-abc && git push origin test-abc
git checkout -b test-xyz && git push origin test-xyz
echo "Created new branches"
pwd

cd devops-notes-app
git checkout test-abc
touch abc.txt
git add .
git commit -m "adding a file"
echo "commited to the branch"

git request-pull origin/test-xyz https://github.com/balujaddu/devops-notes-app.git origin/test-abc
echo "Pull reqiest raised"

git merge --no-ff origin/text-xyz https://github.com/balujaddu/devops-notes-app.git origin/test-abc
echo "PR merged"
