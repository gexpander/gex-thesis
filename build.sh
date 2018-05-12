#!/bin/bash

pdflatex -shell-escape thesis.tex
makeglossaries thesis
biber thesis
pdflatex -shell-escape thesis.tex
pdflatex -shell-escape thesis.tex
