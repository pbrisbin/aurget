# aurgetrc 5 "November 2013" aurgetrc "User Manuals"

## NAME

aurgetrc - aurget configuration file

## SYNOPSIS

${XDG_CONFIG_HOME:-~/.config}/aurgetrc

## DESCRIPTION

The `aurgetrc` configuration file is sourced as `bash` and provides the 
ability to persistently set variables used by `aurget`.

It is read from `$XDG_CONFIG_HOME/aurgetrc`. The `--config` flag can be 
used to override this default. See `aurget(1)`.

An example can be found at `/usr/share/aurget/samples/aurgetrc`.

## VARIABLES

`build_directory` *DIRECTORY*
  The directory within which to build. Default is current directory.

`discard_sources` *true*|*false*
  Remove the extracted source directory after successful processing. 
  Default is `true`.

`edit_pkgbuilds` *prompt*|*always*|*never*
  When to present PKGBUILDs for editing. Default is `prompt`.

`ignore_packages` *PACKAGE PACKAGE ...*
  Packages to ignore. Default is unset

`keep_devels` *true*|*false*
  If you choose to discard sources, you can separately choose to NOT 
  discard sources for development packages. Default is `true`.

`keep_source_packages` *PACKAGE PACKAGE ...*
  Space separated list of packages for which sources will be kept 
  regardless of discard_sources. Default is unset.

`makepkg` *COMMAND*
  The command used to build packages. Default is `makepkg`.

`makepkg_options` *OPTION OPTION ...*
  The options always passed to `$makepkg`. Default is `--syncdeps`. The 
  options `--asdeps` and `--install` will be added when appropriate.

`resolve_dependencies` *true*|*false*
  Source PKGBUILDs and attempt to resolve dependencies. Default is 
  `false`.

`sort_mode` *name*|*votes*
  How to sort search results. Default is `name`.

`sync_mode` *download*|*build*|*install*
  How to process packages. Default is `install`.

`temp_directory` *DIRECTORY*
  Where to place temporary files. Default is `/tmp/aurget`.

## COLORS

`colorR` *ANSI ESCAPE*
  The color for elements which are usually `red`. Default is 
  `\\e[1;31m`.

`colorG` *ANSI ESCAPE*
  The color for elements which are usually `green`. Default is 
  `\\e[1;32m`.

`colorY` *ANSI ESCAPE*
  The color for elements which are usually `yellow`. Default is 
  `\\e[1;33m`.

`colorB` *ANSI ESCAPE*
  The color for elements which are usually `blue`. Default is 
  `\\e[1;34m`.

`colorM` *ANSI ESCAPE*
  The color for elements which are usually `magenta`. Default is 
  `\\e[1;35m`.

`colorC` *ANSI ESCAPE*
  The color for elements which are usually `cyan`. Default is 
  `\\e[1;36m`.

`colorW` *ANSI ESCAPE*
  The color for elements which are usually `white`. Default is 
  `\\e[1;37m`.

`nocolor` *ANSI ESCAPE*
  Reset color. Don't change this unless you know what you're doing. 
  Default is `\\e[0m`.

## SPECIAL VARIABLES

The following variables are not officially supported, but can still be 
useful in certain scenarios.

`debug` *true*|*false*
  When *true*, acts as if `--debug` had been passed except that messages 
  printed before configuration is sourced are not seen. When *false*, 
  prevents `--debug` from having any effect.

`disable_color` *true*|*false*
  When *true*, acts as if `--nocolor` had been passed except that 
  messages printed before configuration is sourced are still colorized. 
  When *false*, prevents `--nocolor` from having any effect.

## AUTHOR

Patrick Brisbin <pbrisbin@gmail.com>

## SEE ALSO

aurget(1), makepkg(8)
