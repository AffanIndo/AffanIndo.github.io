#!/bin/bash
# Run `./sitemap.sh > sitemap.md` to generate the sitemap, run `chmod +x sitemap.sh` if it doesn't have the permission

cat << EOF
---
layout: page
title: Article List
description:
---

EOF

for f in ./_posts/*.md
do
    echo -n "[";
    sed '2!d' $f | cut -c8- | tr -d '\n'; # Blog title
    echo -n "](";
    echo -n "https://affanindo.github.io/";
    echo $f | cut -c12- | rev | cut -c4- | rev | tr -d '\n'; # Somehow `echo -n` doesn't work, so had to use `tr -d '\n`
    echo ")  ";
done
