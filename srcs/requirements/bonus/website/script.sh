#!/bin/sh
hugo new site randomfacts
cd randomfacts
git init
git clone https://github.com/vaga/hugo-theme-m10c themes/m10c
hugo new posts/home.md
