#!/bin/sh
hugo new site wut
cd wut
git clone https://github.com/vaga/hugo-theme-m10c themes/m10c
hugo -b https://localhost/wut
