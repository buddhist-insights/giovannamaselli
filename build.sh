#!/bin/sh

set -eu
cd "$(dirname "$0")"

rm -rf docs
mkdir -p docs
wget -mpE -nH -P docs http://gio.lndo.site/ || true
wget -O docs/404.html http://gio.lndo.site/404.html
echo -n gio.buddho.cloud > docs/CNAME
