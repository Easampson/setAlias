#!/bin/bash


  filerc=$1
  if grep -q "# # # # # ALIASES # # # # #" ~/$1 ; then
      echo "ALIASES ALREADY SET"
  else
      cp ~/$1 ~/$1.backup
      cat aliases.rc >> ~/$1
      echo "ALIASES SET"
      echo "remember to source your .rc file"
  fi
