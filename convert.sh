#!/bin/sh

for f in wykład/*.ipynb ; do
  if [ $f -nt ${f%ipynb}slides.html ] ; then
	  jupyter nbconvert $f --to slides
	else
	  echo $f did not change...
  fi
done