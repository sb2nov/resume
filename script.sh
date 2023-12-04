#!/bin/bash

docker run --rm -i -v ${PWD}:/data mingc/latex pdflatex *.tex


