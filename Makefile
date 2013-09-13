NAME    = aurget
VERSION = 4.0.12
RELEASE = 1
AUTHOR  = pbrisbin
URL     = https://github.com/$(AUTHOR)/$(NAME)

PREFIX ?= /usr/local

pkgver:
	sed -i "s/^pkgver=.*/pkgver=$(VERSION)/" PKGBUILD
	sed -i "s/^pkgrel=.*/pkgrel=$(RELEASE)/" PKGBUILD

md5sums:
	sed -i '/^md5sums=.*/,$$d' PKGBUILD
	makepkg --geninteg --clean >> PKGBUILD

man: $(NAME).1 $(NAME)rc.5

$(NAME).1: doc/$(NAME).1.md
	kramdown-man doc/$(NAME).1.md > $(NAME).1

$(NAME)rc.5: doc/$(NAME)rc.5.md
	kramdown-man doc/$(NAME)rc.5.md > $(NAME)rc.5

distcheck: man pkgver md5sums
	makepkg --install --clean
	rm $(NAME)-$(VERSION)-$(RELEASE)-any.pkg.tar.xz

dist: man pkgver md5sums
	makepkg --source --clean
	git commit -am "Releasing $(VERSION)-$(RELEASE)"
	git tag -a -m v$(VERSION) v$(VERSION)

clean:
	rm -f $(NAME)-$(VERSION)-$(RELEASE).src.tar.gz

.PHONY: dist distcheck man md5sums pkgver clean
