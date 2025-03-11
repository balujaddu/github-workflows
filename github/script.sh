git remote set-url origin https://github.com/balujaddu/devops-notes-app.git
git pull origin master
echo "Cloning repo completed"

sudo cd devops-notes-app
git remote -v
git fetch origin
git checkout -b test-abc origin/master
git remote -v
git fetch origin
git checkout -b test-xyz origin/test-abc
echo "Created new branches"

sudo touch xyz.txt
git add .
git commit -m "adding a file"
git push origin test-xyz
echo "commited to the branch"

git request-pull test-abc https://github.com/balujaddu/devops-notes-app.git test-xyz
echo "Pull reqiest raised"

git checkout test-abc
git merge --no-ff origin/test-abc
echo "PR merged"

cd ..
rm -rf devops-notes-app
rm -rf github-worflows