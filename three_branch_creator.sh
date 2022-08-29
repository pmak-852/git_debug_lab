#!/bin/bash

# No merge conflicts between branches
function create_basic_git_repo()
{
mkdir git_lab_subBranches
cd git_lab_subBranches
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
echo "Branch1 Commit 1" | tee Branch_file.txt
git add Branch_file.txt
git commit -m 'Branch1 Commit 1'

git checkout -B Branch2
echo "Branch2 Commit 1" | tee Branch2_file.txt
git add Branch2_file.txt
git commit -m 'Branch2 Commit 1'
echo "Branch2 Commit 2" | tee Branch2_file.txt
git add Branch2_file.txt
git commit -m 'Branch2 Commit 2'
echo "Branch2 Commit 3" | tee Branch2_file.txt
git add Branch2_file.txt
git commit -m 'Branch2 Commit 3'
echo "Branch2 Commit 4" | tee Branch2_file.txt
git add Branch2_file.txt
git commit -m 'Branch2 Commit 4'

git checkout Branch1
echo "Branch1 Commit 2" | tee Branch_file.txt
git add Branch_file.txt
git commit -m 'Branch1 Commit 2'
echo "Branch1 Commit 3" | tee Branch_file.txt
git add Branch_file.txt
git commit -m 'Branch1 Commit 3'
echo "Branch1 Commit 4" | tee Branch_file.txt
git add Branch_file.txt
git commit -m 'Branch1 Commit 4'

git checkout master
echo "main4" | tee file.txt
git add file.txt
git commit -m 'Commit 4'
echo "main5" | tee file.txt
git add file.txt
git commit -m 'Commit 5'
}

create_basic_git_repo