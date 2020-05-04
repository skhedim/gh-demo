#!/bin/bash -l

set -euo pipefail

main() {

  local path
  local result
  local step
  path="$1"
  step="$2"

  echo "path to version-file: $path"
  result=$(cat $path)
  echo "current version: $result"
  
  RE='[^0-9]*\([0-9]*\)[.]\([0-9]*\)[.]\([0-9]*\)\([0-9A-Za-z-]*\)'

  MAJOR=`echo $result | sed -e "s#$RE#\1#"`
  MINOR=`echo $result | sed -e "s#$RE#\2#"`
  PATCH=`echo $result | sed -e "s#$RE#\3#"`

  case "$step" in
    major)
      let MAJOR+=1
      ;;
    minor)
      let MINOR+=1
      ;;
    patch)
      let PATCH+=1
      ;;
  esac

  echo "new version: $MAJOR.$MINOR.$PATCH"

  echo ::set-output name=value::"$MAJOR.$MINOR.$PATCH"
}

main "$1" "$2"
