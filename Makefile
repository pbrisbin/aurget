NAME    = aurget
VERSION = 4.0.11
AUTHOR  = pbrisbin
URL     = https://github.com/$(AUTHOR)/$(NAME)

PREFIX ?= /usr/local

pkgver:
	sed -i "s/^pkgver=.*/pkgver=$(VERSION)/" PKGBUILD

md5sums:
	sed -i '/^md5sums=.*/,$$d' PKGBUILD
	makepkg --geninteg --clean >> PKGBUILD

man: aurget.1 aurget.5

aurget.1: doc/aurget.1.md
	kramdown-man doc/aurget.1.md > aurget.1

aurget.5: doc/aurgetrc.5.md
	kramdown-man doc/aurgetrc.5.md > aurgetrc.5

distcheck: man pkgver md5sums
	makepkg --install --clean

dist: man pkgver md5sums
	makepkg --source --clean

.PHONY: dist distcheck man md5sums pkgver
