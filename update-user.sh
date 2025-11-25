#!/bin/bash

shopt -s dotglob

update_directory() {
  for f in "$1"*; do
    if [ -d "$f" ]; then 
      update_directory "$f/"
    else
      CHECK_PATH="${f/"./userdata"/$HOME}"
      if ! cmp -s "$CHECK_PATH" "$f"; then 
        echo "Updating $f"
        cp "$CHECK_PATH" "$f"
      fi
    fi
  done
}

update_directory "./userdata/"
