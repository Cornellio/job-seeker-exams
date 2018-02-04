#!/bin/bash

cd ~/code/exams/findz

ls data/* | while read file; do
  echo $file:
  grep 'app01.*' $file
  if [[ $? = 0 ]]; then
    perl -i -pe 's/app01/appserver01/g' "$file"
    mv $file archive/
  fi
done
