#!/bin/bash

git remote add origin https://github.com/balujaddu/devops-notes-app.git
git pull origin master:master
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

git request-pull origin/test-xyz https://github.com/balujaddu/devops-notes-app.git origin/test-abc
echo "Pull reqiest raised"

git merge --no-ff origin/text-xyz https://github.com/balujaddu/devops-notes-app.git origin/test-abc
echo "PR merged"
