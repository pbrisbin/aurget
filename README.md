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

*It doesn't do anything!*

Default behavior is to build (not install). Default behavior is also to 
discard the working folder afterwards. Makepkg's default behavior is to 
place the built package in the working folder.

If you've not purposely adjusted one of these three behaviors, the net 
result is a built package which is immediately discarded... Oops.

You should:

1. Use `-Sy`
2. Configure `sync_mode` or `discard_sources`
3. Configure a `PKGDEST` for makepkg

I'm open to adjusting aurget such that this is less surprising. There 
are a few options I'm currently considering, feel free to cast your 
vote.

*I want to control where the built package goes.*

Set `PKGDEST` either in `makepkg.conf` or as an environment variable. 
This is a makepkg feature, not aurget.

While you're at it, the `PACMAN`, `SRCDEST`, and `BUILDDIR` settings may 
or may not be useful to you as well.

## Bugs?

Please include the following in your Github Issue:

1. Aurget version
2. Commandline used (add `--debug` and `--nocolor`)
3. All output
4. Your `aurgetrc` if applicable
