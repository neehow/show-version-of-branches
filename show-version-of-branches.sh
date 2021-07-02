#!/bin/sh
# TODO: there's a problem sorting results
echo "----"
for branch in $(git branch -a | grep "remotes" | grep -v ">");
  do git show $branch:package.json | grep \"version\" | xargs echo -n && echo " "$branch;
done | sort -n
echo "----"
