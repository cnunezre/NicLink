#!/usr/bin/env bash

echo "NicLink GO!"

SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

. $SCRIPT_DIR/pyvenv_up.sh

python $SCRIPT_DIR/nicsoft/lichess

echo "starting NicLink Lichess"
