#!/bin/bash

DATE="_"
TITLE="_"
DESC="_"

if [[ $# -eq 0 ]]; then
   echo -e "Usage use it with \n --title to give title \n and \n --date to give it date \n"
exit 0
fi

while [[ $# -gt 0 ]]; do

  case "$1" in
    --title)
      TITLE="$2"
      #echo $TITLE
      shift 2
      ;;
    --date)
      DATE="$2"
      #echo $DATE
      shift 2
      ;;
    --desc)
      DESC="$2"
      shift 2
      ;;
    *)
      echo "Usage use it with\n --title to give title \n and \n --date to give it date \n"
      exit 1
      ;;
  esac
done

NAME="${DATE}-${TITLE}" # Concatenates date and title to make the file name
NAME="${NAME,,}" # Converts the name string to lowercase using bash Builtins
NAME="${NAME// /_}" # Replces all the spcace `\s` with `_`

FILE="./_posts/$NAME.md"

HEADER="--- 
layout: post 
title:  $TITLE
description : \"$DESC\"
date:   $DATE 
author: Vinayak Gupta 
categories: []
---"

echo -e "$HEADER" > "$FILE"
echo "created new blog in $FILE : with title $TITLE and date $DATE"
