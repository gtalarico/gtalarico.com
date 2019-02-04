#!/usr/bin/env bash

# commit="$(git rev-parse --verify HEAD)"
# echo "Commit: $commit"

# mkdir temp
# cp -r ./public/ ./temp
# cd temp
# echo "www.recordbin.co" > CNAME
# echo "See [gtalarico](https://github.com/gtalarico/gtalarico)" > README.md
# git init
# git add .
# git commit -m "$commit" --allow-empty
# git remote add origin git@github.com:gtalarico/gtalarico.com.git
# git push -f origin master
# cd ..
# rm -rdf ./temp

# git_branch="$(git status | head -1)"
# if [[ "$git_branch" =~ "master" ]]
# then
#     git checkout -b master
#     git checkout master README.md
#     echo -e "---\nlayout: index\n---\n" > index.md.temp
#     cat index.md.temp README.md >index.md
#     rm index.md.temp
#     git commit -am "Sync gh-pages with master"
#     git checkout master
# fi

#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public
# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back up to the Project Root
cd ..
