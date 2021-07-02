#!/bin/sh
echo "----"
for branch in $(git branch -a | grep "remotes" | grep -v ">");
  do git show $branch:package.json | grep \"version\" | xargs echo -n && echo " "$branch;
done | sort -rn
echo "----"
