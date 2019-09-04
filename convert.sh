#!/bin/sh

for f in wykład/*.ipynb ; do
	jupyter nbconvert $f --to slides
done