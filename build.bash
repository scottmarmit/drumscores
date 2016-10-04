#!/bin/bash

[ -d output ] || mkdir output

filename=$1

filebasename="${filename%.*}"

abcm2ps -F monolinear_abc_format.fmt "$filename" -O "${filebasename}.ps"
ps2pdf "${filebasename}.ps" "./output/${filebasename}.pdf"
rm "${filebasename}.ps"
open "./output/${filebasename}.pdf"

