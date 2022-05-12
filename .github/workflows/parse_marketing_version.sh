#!/bin/bash

set -x
set -e

VERSION=${1}
# full_version
# semver
# sufix
FORMAT=${2}

if [[ $VERSION =~ ((v[0-9]+_)([0-9]+\.[0-9]+\.[0-9]+))-?(.*$) ]]
then
  case $FORMAT in
    full_version)
    echo "${BASH_REMATCH[1]}"
    ;;
    semver)
    echo "${BASH_REMATCH[3]}"
    ;;
    sufix)
    echo "${BASH_REMATCH[4]}"
    ;;
    *)
    echo "Format $FORMAT unknown" >&2
    exit 1
    ;;
  esac
else
  echo "$VERSION doesn't match" >&2
  exit 1;
fi