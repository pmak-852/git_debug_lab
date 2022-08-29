#!/bin/bash

# No merge conflicts between branches
function create_basic_git_repo()
{
mkdir git_lab
cd git_lab
git init

touch file.txt
echo "main1" | tee file.txt
git add file.txt
git commit -m 'Commit 1'
echo "main2" | tee file.txt
git add file.txt
git commit -m 'Commit 2'
echo "main3" | tee file.txt
git add file.txt
git commit -m 'Commit 3'

git checkout -B Branch1
echo "Branch Commit 1" | tee Branch_file.txt
git add Branch_file.txt
git commit -m 'Branch Commit 1'
echo "Branch Commit 2" | tee Branch_file.txt
git add Branch_file.txt
git commit -m 'Branch Commit 2'
echo "Branch Commit 3" | tee Branch_file.txt
git add Branch_file.txt
git commit -m 'Branch Commit 3'

git checkout master
echo "main4" | tee file.txt
git add file.txt
git commit -m 'Commit 4'
echo "main5" | tee file.txt
git add file.txt
git commit -m 'Commit 5'
}

create_basic_git_repo