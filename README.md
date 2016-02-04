Scott Armit's ABC Field Drum Scores
==============

# Overview

Visit http://abcnotation.com/ for more information on the ABC notation system.

# EasyABC

While you can of course edit ABC files in an editor and use tools like abcm2ps to render into viewable format, you can also use [EasyABC](http://www.nilsliberg.se/ksp/easyabc/) to view the results of your edits in realtime.

# OSX

These steps rely on [Homebrew](http://brew.sh/).

## abcm2ps

ABC itself is just a standard that you use in a simple text file. To convert that to music you need a program to convert it. I use [```abcm2ps```](http://moinejf.free.fr/).

```$ brew install abcm2ps```

Then you can convert your ABC file to PS with:

```$ abcm2ps -O= -F smarmit_abc_format.fmt March_4-4_RowanTree.abc```

... note the format file which is explained below.

## Preview

The OSX application Preview, renders PostScript files. So you can convert ABC to PS, then open it in Preview and save as PDF.

## Automating PS to PDF with ```pstopdf```

Recent versions of OSX come with pstopdf which does the conversion for PS to, well PDF. To convert a PS file to PDF just:

```$ pstopdf March_4-4_OpenTheGates.ps```

... which results in a file in the same directory named ```March_4-4_OpenTheGates.pdf```

# Format File

As shown in examples above I use a file with common formatting options. These options could also be put directly in every score but these are standard and so to simplify, I keep them in that file: ```smarmit_abc_format.fmt```
