#!/usr/bin/env bash

for f in wykład/*.ipynb ; do
  if [[ ! -e ${f%ipynb}slides.html || $f -nt ${f%ipynb}slides.html ]] ; then
	  jupyter nbconvert $f --to slides
	else
	  echo $f did not change...
  fi
done