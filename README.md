Scott Armit's ABC Field Drum Scores
==============

# Overview

ABC Notation is a text-based music notation system: http://abcnotation.com/

In order to actually render the text into music, you use implementation software to convert it. I use [```abcm2ps```](http://moinejf.free.fr/)

# OSX Installation

First install [Homebrew](http://brew.sh/) if you haven't already. If you're a developer, you likely have it already.

Now you can install abcm2ps:

```$ brew install abcm2ps```

Then you can convert your ABC file to PS with:

```$ abcm2ps -O= -F monolinear_abc_format.fmt My_Awesome_Tune.abc```

... note the format file which is explained below.

## Compilation

There's a chance the binary file `abcm2ps` does not work and throws errors on OSX. I've had this issue and had to follow the instructions for compiling from source, https://github.com/leesavide/abcm2ps/blob/master/INSTALL

# EasyABC

While you can of course edit ABC files in an editor and use tools like abcm2ps to render into viewable format, you can also use [EasyABC](http://www.nilsliberg.se/ksp/easyabc/) to view the results of your edits in realtime.

## Settings

If you want to use my format file for monolinear composing:

* Start EasyABC
* Open "ABC Settings..." under Settings
* Fill in ```abcm2ps executable:``` with ```/usr/local/bin/abcm2ps``` if you installed with ```brew``` above
* Fill in ```abcm2ps format file:``` with ```<path to this git clone>/monolinear_abc_format.fmt```

# Monolinear Format File

In order to display some of the more common decorations used in Dr. Berger's monolinear drum notation, a customized format file is needed.

```monolinear_abc_format.fmt``` contains some of these customizations.
