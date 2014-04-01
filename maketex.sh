#!/bin/sh
# This gets the environment
#. /etc/bashrc



echo maketex: run latex for file $1

#latex $1 && dvips -t letter -o $1.ps $1
latex $1 && dvips  -o $1.ps $1
ps2pdf $1.ps
echo created files $1.ps and $1.pdf

