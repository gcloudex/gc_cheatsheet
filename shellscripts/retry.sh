#!/bin/bash

MAX=20

function fail()
{
  echo -e $1 >&2
  exit 1
}

function retry()
{
  local i=0
  local thecmd=$@
  local status=-1
  while true; do
    "$@"
    status=$?
    [ $status -eq 0 ] && break || {
      if [[ $i -lt $MAX ]]; then
        ((i++))
        echo "**** FAIL '$thecmd'; Status: '$status'; Retry $i/$MAX"
      else
        fail "**** The command '$thecmd' failed after $i attempts.\n"
      fi
    }
  done
  return $status
}

# USAGE:
#retry apt-get hello
#echo $?
