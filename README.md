# Aurget

A simple pacman-like interface to the AUR.

## Installation

Study the Arch [wiki][], then manually build and install [aurget][].

[wiki]:   https://wiki.archlinux.org/index.php/AUR
[aurget]: https://aur.archlinux.org/packages/aurget/

## Git installation

Copy `aurget` from this repository into any directory on your `$PATH`.

## Configuration

See `/usr/share/aurget/config`.

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

## Bugs?

Please include the following in your Github Issue:

1. Aurget version
2. Commandline used (add `--debug` and `--nocolor`)
3. All output
4. Your `aurgetrc` if applicable
