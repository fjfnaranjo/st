#!/bin/sh
docker build -t builder-st .
docker run --rm -ti -v "$HOME/.local:/host/local" -v "$(pwd):/host/src" -w /host/src -u "$UID:$GROUPS" builder-st
