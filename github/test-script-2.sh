#!/bin/bash

# Variables
REPO_URL="https://github.com/balujaddu/devops-notes-app.git"
BRANCH1="feature-branch1"
BRANCH2="feature-branch2"
FILE_NAME="newfile.txt"
COMMIT_MESSAGE="Add new file to feature-branch1"
PR_TITLE="Merge feature-branch1 into feature-branch2"
PR_BODY="This PR merges feature-branch1 into feature-branch2"

# Clone the repository
git clone $REPO_URL
cd devops-notes-app

# Create two branches
git checkout -b $BRANCH1
git checkout -b $BRANCH2

# Add a file and commit it to the first branch
git checkout $BRANCH1
echo "This is a new file" > $FILE_NAME
git add $FILE_NAME
git commit -m "$COMMIT_MESSAGE"
git push origin $BRANCH1

# Raise a PR between the created branches
# Note: This step requires GitHub CLI (gh) to be installed and authenticated
gh pr create --base $BRANCH2 --head $BRANCH1 --title "$PR_TITLE" --body "$PR_BODY"

# Merge the PR
gh pr merge --auto --squash

# Clean up
cd ..
rm -rf your-repo
