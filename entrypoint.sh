#!/bin/sh
set -eu

export GITHUB="true"

apt update
apt install -qy "$depend_list"
bash "$script_file"
