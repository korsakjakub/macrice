#!/bin/sh

destination=$(find . -name "*" -type f | sed -e '/nvim\/plugged/d' -e '/git/d' -e '/README/d' -e '/LICENSE/d' -e '/FUNDING/d' -e '/update_config.sh/d')
yes | for d in $destination; do cp -rfT "${HOME}/${d#*/}" "$d"; done
