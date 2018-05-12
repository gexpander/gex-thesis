#!/bin/bash

pdflatex thesis.tex
makeglossaries thesis
biber thesis
pdflatex thesis.tex
pdflatex thesis.tex
