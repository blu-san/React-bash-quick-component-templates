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
if [ ! -d $p ] 
then
  echo "Directory does not exist"
  exit
fi
for component in ${c[@]}
do
  new=$p/$component
  # make directory and put necessary files into it
  mkdir $new
  if [[ $mode != "basic" ]]
  then  
    touch $new/$component.css
    cp `dirname "$0"`/templates/style.css $new/$component.css
  fi
  touch $new/$component.js
  cp `dirname "$0"`/templates/$mode.js $new/$component.js
  # rename the class name
  sed -i "s/MyComponent/$component/g" $new/$component.js $new/$component.css 2>/dev/null
  echo "$component template has been settled in $new"
done