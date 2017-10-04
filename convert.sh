#!/bin/sh

jupyter nbconvert Wykład.ipynb --to slides

sed "s|/theme/simple.css|/theme/blood.css|g" -i Wykład.slides.html
