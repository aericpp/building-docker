#!/bin/sh
set -eu

apt update
apt install -qy $INPUT_DEPEND_LIST

bash "$INPUT_SCRIPT_FILE"