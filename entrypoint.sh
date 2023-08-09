#!/bin/bash
set -eu

apt update
apt install -qy "$depend_list"
bash "$script_file"
