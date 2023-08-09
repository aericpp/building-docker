#!/bin/bash
set -eu

export GITHUB="true"

echo "* $*"
echo "@ $@"
echo "depend_list $depend_list"
echo "script_file $script_file"

apt update
apt install -qy "$depend_list"
bash "$script_file"
