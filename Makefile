NAME=aurget
VERSION=4.0.9
AUTHOR=pbrisbin
URL=https://github.com/$(AUTHOR)/$(NAME)

DIRS=bin share
INSTALL_DIRS=`find $(DIRS) -type d 2>/dev/null`
INSTALL_FILES=`find $(DIRS) -type f 2>/dev/null`

PREFIX?=/usr/local

tag:
	echo "update pkgver in PKGBUILD"
	echo "git tag -a v$(VERSION)"

md5:
	echo "update md5 in PKGBUILD"

release:
	echo "tag, md5, makepkg in pkg"

man:
	kramdown-man doc/man/aurget.1.md > share/man/man1/aurget.1
	kramdown-man doc/man/aurgetrc.5.md > share/man/man5/aurgetrc.5

install:
	for dir in $(INSTALL_DIRS); do mkdir -p $(PREFIX)/$$dir; done
	for file in $(INSTALL_FILES); do cp $$file $(PREFIX)/$$file; done

uninstall:
	for file in $(INSTALL_FILES); do rm -f $(PREFIX)/$$file; done
	rm -rf $(DOC_DIR)

.PHONY: man install uninstall
