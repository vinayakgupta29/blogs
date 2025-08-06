#!/bin/bash

DATE="_"
TITLE="_"

if [[ $# -eq 0 ]]; then
   echo -e "Usage use it with \n --title to give title \n and \n --date to give it date \n"
exit 0
fi

while [[ $# -gt 0 ]]; do

  case "$1" in
    --title)
      TITLE="$2"
      echo $TITLE
      shift 2
      ;;
    --date)
      DATE="$2"
      echo $DATE
      shift 2
      ;;
    *)
      echo "Usage use it with\n --title to give title \n and \n --date to give it date \n"
      exit 1
      ;;
  esac
done

NAME="$DATE-$TITLE"
FILE="./_posts/$NAME.md"

HEADER="--- 
layout: post 
title:  $TITLE 
date:   $DATE 
author: Vinayak Gupta 
categories: []
---"

echo -e "$HEADER" > "$FILE" 
