#!/bin/bash
read -p 'What components you wish to create?: ' -a c
cur=$(pwd)
read -p "Path directory: (Current is $cur) " p
for component in ${c[@]}
do
  new=$p/$component
  # Make directory and put necessary files into it
  mkdir $new
  touch $new/$component.js $new/$component.css
  cp `dirname "$0"`/templates/jstemp.js $new/$component.js
  # Rename the class name
  sed -i "s/MyComponent/$component/g" $new/$component.js
  echo "$component template has been settled in $new"
done
