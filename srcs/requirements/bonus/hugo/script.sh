#!/bin/sh
hugo new site inception
cd inception
git init
git clone https://github.com/vaga/hugo-theme-m10c themes/m10c
#git submodule add https://github.com/theNewDynamic/gohugo-theme-ananke themes/ananke
#echo "theme = 'ananke'" >> config.toml
add new posts/test.md
echo "This is a test page?" >> test.md
