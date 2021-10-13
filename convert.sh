#!/usr/bin/env bash

for f in wykład/*.ipynb ; do
  if [[ ! -e ${f%ipynb}slides.html || $f -nt ${f%ipynb}slides.html ]] ; then
	  jupyter nbconvert $f --to slides
	  sed -i 's/automatic: true/automatic: false/' ${f%ipynb}slides.html
	else
	  echo $f did not change...
  fi
done
