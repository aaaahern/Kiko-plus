#!/bin/sh

echo "=== Regenerate Jekyll static page ==="
jekyll build
echo "=== Depoly _site to EC2 ==="
rsync --compress --recursive --checksum --delete _site/ EC2:/var/www/html/yuhengzhan.com/public_html/
