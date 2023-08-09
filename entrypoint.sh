#!/bin/bash
set -eu

export GITHUB="true"

ls /github/file_commands
cat /github/file_commands

echo "* $*"
echo "@ $@"
echo "@ $?"
echo "depend_list $depend_list"
echo "INPUT_DEPEND_LIST $INPUT_DEPEND_LIST"
echo "script_file $script_file"
echo "INPUT_SCRIPT_FILE $INPUT_SCRIPT_FILE"

apt update
apt install -qy "$depend_list"
bash "$script_file"
