# Aurget

A simple pacman-like interface to the AUR.

## Installation

Study the Arch [wiki][], then manually build and install [aurget][].

[wiki]:   https://wiki.archlinux.org/index.php/AUR
[aurget]: https://aur.archlinux.org/packages/aurget/

## Git installation

Copy `aurget` from this repository into any directory on your `$PATH`.

## Configuration

See `/usr/share/aurget/config`. The highlights:

1. Where to build? (defaults to `.`)
2. Download, build or install? (defaults to `install`)
3. Edit PKGBUILDs? (defaults to `prompt`)
4. Discard build files after? (defaults to `true`)

## Usage

### Searching

~~~
$ aurget -Ss <search terms>
$ aurget -Si <package>
~~~

### Downloading, Building, and/or Installing

~~~
$ aurget -S <package>
~~~

### Upgrades

~~~
$ aurget -Su
~~~

For detailed usage, see `aurget --help`.

## Gotchas

*I want to control where the built package goes.*

Set `PKGDEST` either in `makepkg.conf` or as an environment variable. 
This is a makepkg feature, not aurget.

While you're at it, the `PACMAN`, `SRCDEST`, and `BUILDDIR` settings may 
or may not be useful to you as well.

*It's erroring with package not found, but it's in the repos.*

This can sometimes occur when a package was recently moved from the AUR 
to [community]. The PKGBUILD still exists in the AUR and this tricks 
aurget into adding it as a target during dependency resolution. When 
installation proceeds, it validates the target and (correctly) errors.

Simply install the repository package (using `--asdeps`) before retrying 
your AUR installation.

## Bugs?

Please include the following in your Github Issue:

1. Aurget version
2. Commandline used (add `--debug` and `--nocolor`)
3. All output
4. Your `aurgetrc` if applicable
