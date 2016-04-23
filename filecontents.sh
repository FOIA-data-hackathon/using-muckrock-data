#!/bin/sh

# usage: ./filecontents.sh /path/to/muckrock-data
set -e

mkdir -p /tmp/muckrock-foia
cd ${1:-.}
find . -type f -print0 | xargs -0 file > /tmp/muckrock-foia/filetypes.txt
find . -type f -print0 | xargs -0 file -i > /tmp/muckrock-foia/mimetypes.txt
