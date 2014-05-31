NAME    = aurget
VERSION = 4.2.1
RELEASE = 1
AUTHOR  = pbrisbin
URL     = https://github.com/$(AUTHOR)/$(NAME)

pkgver:
	sed -i "s/^pkgver=.*/pkgver=$(VERSION)/" PKGBUILD
	sed -i "s/^pkgrel=.*/pkgrel=$(RELEASE)/" PKGBUILD

md5sums:
	sed -i '/^md5sums=.*/,$$d' PKGBUILD
	makepkg --geninteg --clean >> PKGBUILD

man: $(NAME).1 $(NAME)rc.5

$(NAME).1: doc/$(NAME).1.md
	kramdown-man < doc/$(NAME).1.md > $(NAME).1

$(NAME)rc.5: doc/$(NAME)rc.5.md
	kramdown-man < doc/$(NAME)rc.5.md > $(NAME)rc.5

test:
	cram test

release_aur:
	mkaurball
	aur-submit $(NAME)-$(VERSION)-$(RELEASE).src.tar.gz

release_git:
	git add PKGBUILD \
		aurget \
		aurget.1 \
		aurgetrc.5 \
		aurgetrc \
		bash_completion \
		zsh_completion
	git commit -m "Releasing $(VERSION)-$(RELEASE)"
	git tag -a -m v$(VERSION) v$(VERSION)
	git push
	git push --tags

release: test man pkgver md5sums release_aur release_git clean

clean:
	rm -f $(NAME)-$(VERSION)-$(RELEASE).src.tar.gz
	rm -f $(NAME)-$(VERSION)-$(RELEASE)-any.pkg.tar.xz

.PHONY: release release_aur release_git test man clean
