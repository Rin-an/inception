#!/bin/sh
hugo new site randomfacts
cd randomfacts
git clone https://github.com/vaga/hugo-theme-m10c themes/m10c
git clone https://github.com/theNewDynamic/gohugo-theme-ananke themes/ananke
hugo new posts/home.md
hugo -b https://localhost/randomfacts
mkdir -p /wut/content/about
