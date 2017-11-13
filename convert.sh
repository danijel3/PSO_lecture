#!/bin/sh

jupyter nbconvert 1_Wprowadzenie.ipynb --to slides
jupyter nbconvert 2_Sygnały.ipynb --to slides
jupyter nbconvert 3_Systemy.ipynb --to slides
jupyter nbconvert 4_Fourier.ipynb --to slides
jupyter nbconvert 5_Próbkowanie.ipynb --to slides
jupyter nbconvert 6_DFT.ipynb --to slides

sed "s|/theme/simple.css|/theme/blood.css|g" -i 1_Wprowadzenie.slides.html
sed "s|/theme/simple.css|/theme/blood.css|g" -i 2_Sygnały.slides.html
sed "s|/theme/simple.css|/theme/blood.css|g" -i 3_Systemy.slides.html
sed "s|/theme/simple.css|/theme/blood.css|g" -i 4_Fourier.slides.html
sed "s|/theme/simple.css|/theme/blood.css|g" -i 5_Próbkowanie.slides.html
sed "s|/theme/simple.css|/theme/blood.css|g" -i 6_DFT.html
