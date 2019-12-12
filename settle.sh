#!/bin/bash
mode=$1
if [[ $mode != "basic" ]] && [[ $mode != "soph" ]] && [[ $mode != "standard" ]]
then
  echo "No valid argument has been passed"
  exit
fi
if [[ $mode == "soph" ]]
then  
  mode="sophisticated"
fi
read -p "What components you wish to create?: " -a c
cur=$(pwd)
read -p "Path directory: (current is $cur) " p
for component in ${c[@]}
do
  new=$p/$component
  # make directory and put necessary files into it
  mkdir $new
  touch $new/$component.js $new/$component.css
  cp `dirname "$0"`/templates/$mode.js $new/$component.js
  # rename the class name
  sed -i "s/MyComponent/$component/g" $new/$component.js
  echo "$component template has been settled in $new"
done