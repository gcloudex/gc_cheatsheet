#!/bin/bash

MAX=20

function fail()
{
  echo $1 >&2
  exit 1
}

function retry()
{
  local i=0
  local thecmd=$@
  while true; do
    "$@" && break || {
      if [[ $i -lt $MAX ]]; then
        ((i++))
        echo "**** FAIL '$thecmd'. Retry $i/$MAX"
      else
        fail "**** The command '$thecmd' failed after $i attempts."
      fi
    }
  done
}

# USAGE:
#retry apt-get hello
