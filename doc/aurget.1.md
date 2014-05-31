# aurget 1 "August 2013" aurget "User Manuals"

## SYNOPSIS

`aurget` [ACTION] [OPTION ...] [-- ARGUMENT ...]

## DESCRIPTION

A safe and simple, pacman-like interface to the AUR.

https://github.com/pbrisbin/aurget

## ACTIONS

One and only one action should be passed on the command-line. If 
multiple actions are passed, the last specified is used.

### INSTALLATIONS

`-S` *PACKAGE*
  Process the given package using the default action (install).

`-Sd` *PACKAGE*
  Download the given package.

`-Sb` *PACKAGE*
  Download and build the given package.

`-Sy` *PACKAGE*
  Download, build, and install the given package.

### UPGRADES

`-Su`
  Process available upgrades using the default action (install).

`-Sdu`
  Download available upgrades.

`-Sbu`
  Download and build available upgrades.

`-Syu`
  Download, build, and install available upgrades.

### SEARCHES

`-Ss` *SEARCH TERMS*
  Search the aur.

`-Ssq` *SEARCH TERMS*
  Search the aur, outputting only package names.

`-Sp` *PACKAGE*
  Print the PKGBUILD for the given package.

`-Si` *PACKAGE*
  Print information about the given package.

## OPTIONS

`--sort` *MODE*
  Set the mode for sorting of search results. When *name*, sort the 
  results by Name ascending. When *votes*, sort the results by Number of 
  Votes descending. Defaults to *name*.

`--builddir` *DIRECTORY*
  Set the build directory, default is current directory.

`--config` *FILE*
  Use an alternate config file. See `FILES`.

`--debug`
  Enable debug output.

`--[no]deps`
  Resolve AUR dependencies.

`--devel`
  Assume all development packages are available as upgrades. See `DEVELOPMENT PACKAGES`.

`--[no]edit`
  Always present PKGBUILDs for editing before sourcing. See `EDITING PKGBUILDS`.

`--ignore` *PACKAGE*
  Ignore the given package.

`--nocolor`
  Disable color. See `COLOR`.

`-h`, `--help`
  Print brief usage instructions.

## COLOR

By default `aurget` will colorize output unless not connected to a 
terminal. Use `--nocolor` to prevent this.

## DEVELOPMENT PACKAGES

Development packages are any package with a name matching the following 
regular expression:

  `-(git|hg|svn|darcs|csv|bzr)$`

Development packages are never included in available upgrades (unless 
`--devel` is passed, at which time they're always included). By default, 
source files are not discarded for development packages.

## EDITING PKGBUILDS

PKGBUILDs will be directly sourced by `aurget` as part of dependency 
resolution and indirectly sourced by `makepkg` when building.

By default, you are prompted to edit PKGBUILDs before they are sourced 
or built. This behavior can be changed in your `aurgetrc` or via the 
`--[no]edit` flag. See `aurgetrc(5)`.

## MAKEPKG

By default, `makepkg` is called with `--syncdeps` to install 
dependencies available in the official repositories. This can be 
adjusted in your `aurgetrc`. See `aurgetrc(5)`.

Additionally, any options not recognized by `aurget` will get passed 
directly through to `makepkg`. See `makepkg(8)`.

Features which can be accomplished by modifying the behavior of 
`makepkg` directly have been omitted from `aurget`. Please see 
`makepkg(8)` and `makepkg.conf(5)` before opening a feature request on 
`aurget`.

## EXAMPLES

Install packages `foo` and `bar`:

  `aurget -S foo bar`

Install available upgrades and package `baz`:

  `aurget -Su baz`

Build package `quix-git` in directory `~/src` even if a built package is 
already present. Also remove any installed makedepends:

  `aurget -Sb --builddir ~/src --force --rmdeps quix-git`

Find some of `aurget`'s competitors:

  `aurget -Ss aur helper`

## FILES

*/usr/share/doc/aurget/samples/aurgetrc*
  Sample configuration file.

*${XDG_CONFIG_HOME:-~/.config}/aurgetrc*
  Default location of user configuration file.

## AUTHOR

Patrick Brisbin <pbrisbin@gmail.com>

## SEE ALSO

aurgetrc(5), tar(1), curl(1), makepkg(8), makepkg.conf(5)
