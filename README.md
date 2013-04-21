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

Searching the AUR

~~~
$ aurget -Ss <search terms>
$ aurget -Si <package>
~~~

Processing packages:

~~~
$ aurget -S <package>
~~~

Processing available upgrades:

~~~
$ aurget -Su
~~~

For more information, see `aurget --help`.

## Aurget v4

Version 4 of aurget is a **significant** rewrite from version 3. In the 
course of that rewrite, some features were added, some removed, and some 
behavior may have changed.

### Notable changes

A sorely needed `--debug` option was added to increase verbosity of the 
script. *Please, if you're reporting an issue, include this debug 
output.*

Any unrecognized options are passed directly onto `makepkg`. This gives 
aurget many features for free: split package handling, package signing, 
building as root, etc.

Any installations are now done via `makepkg --install`.

If a target passed on the command-line is not available in the AUR, it 
will be ignored. This may result in a "no targets" error or installation 
will proceed for other (available) targets.

If a target found as a dependency is not available in the AUR, I assume 
it's a repository package to be picked up by makepkg. This may result in 
a makepkg error if that's not the case.

There is no longer a global `aurgetrc`. Please copy 
`/usr/share/aurget/config` to `$XDG_CONFIG_HOME/aurgetrc` and edit as 
needed. This is the only location configuration will be loaded from.

Some config values have changed names, please update any existing config 
to match the example.

The default options for `makepkg` have been changed from `--noconfirm` 
to `--syncdeps`. This can be adjusted in your config file.

Temporary files are left in place after aurget quits. They are cleared 
on startup only.

Aurget no longer uses a lock file to prevent multiple instances from 
being run at once. Don't hurt yourself.

Built packages are left wherever `makepkg` puts them. Feel free to tweak 
this behavior directly via `makepkg.conf`.

PKGBUILD editing uses `$EDITOR` or `$VISUAL` with a fallback of "vi".

Color is on by default and (at this time) cannot be turned off. I'll 
eventually (re-)add a `--nocolor` flag.

The `development_regex` is no longer configurable. If the one I'm using 
is not correct for your needs, simply let me know and I'll update it.

The ability to set any variable via `--foo=bar` on the command-line has 
been removed.
