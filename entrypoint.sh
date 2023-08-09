#!/bin/sh
set -eu

export GITHUB="true"

echo "INPUT_DEPEND_LIST $INPUT_DEPEND_LIST"
echo "INPUT_SCRIPT_FILE $INPUT_SCRIPT_FILE"

echo $*
echo $@
echo $#
echo $?
echo $depend_list
echo $script_file

apt update
apt install -qy "$depend_list"
bash "$script_file"
