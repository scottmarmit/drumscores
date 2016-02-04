#!/bin/bash

score=$1

abcm2ps -O= -F smarmit_abc_format.fmt $score
pstopdf "${score%.*}.ps"
open "${score%.*}.pdf"
