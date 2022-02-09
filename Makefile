PREFIX    ?= /usr/local
MANPREFIX ?= $(PREFIX)/share/man

PERC = '%'

doc/aurget.1: doc/aurget.1.md
	kramdown-man < doc/aurget.1.md > doc/aurget.1
	[ -s doc/aurget.1 ]

doc/aurgetrc.5: doc/aurgetrc.5.md
	kramdown-man < doc/aurgetrc.5.md > doc/aurgetrc.5
	[ -s doc/aurgetrc.5 ]

man: doc/aurget.1 doc/aurgetrc.5

test:
	FIXTURES_NO_RECORD=1 cram test

fixtures.reset:
	@echo "Running tests with fixture updates..."
	cram test
	@echo "Cleaning up any fixtures not recently accessed..."
	for x in test/fixtures/*/*/last-access; do \
	  now=$$(date +'$(PERC)s'); \
	  last_access=$$(date --date="$$(cat $$x)" +'$(PERC)s'); \
	  age=$$((now - $$last_access)); \
	  if ((age > 60)); then \
	    echo "$$x is $${age}s old, removing"; \
	    rm "$$x"; \
	  fi; \
	done


install:
	install -Dm755 aurget $(DESTDIR)/$(PREFIX)/bin/aurget
	install -Dm644 aurgetrc $(DESTDIR)/$(PREFIX)/share/doc/aurget/samples/aurgetrc
	install -Dm644 doc/aurget.1 $(DESTDIR)/$(MANPREFIX)/man1/aurget.1
	install -Dm644 doc/aurgetrc.5 $(DESTDIR)/$(MANPREFIX)/man5/aurgetrc.5
	install -Dm644 completion/bash $(DESTDIR)/$(PREFIX)/share/bash-completion/completions/aurget
	install -Dm644 completion/zsh $(DESTDIR)/$(PREFIX)/share/zsh/site-functions/_aurget

uninstall:
	$(RM) $(DESTDIR)/$(PREFIX)/bin/aurget \
	  $(DESTDIR)/$(MANPREFIX)/man1/aurget.1 \
	  $(DESTDIR)/$(MANPREFIX)/man5/aurgetrc.5 \
	  $(DESTDIR)/$(PREFIX)/share/doc/aurget/samples/aurgetrc \
	  $(DESTDIR)/$(PREFIX)/share/bash-completion/completions/aurget \
	  $(DESTDIR)/$(PREFIX)/share/zsh/site-functions/_aurget

RELEASE_BUMP ?= patch
RELEASE_TAG  ?= $(shell git tag | vbump $(RELEASE_BUMP))

release: test
	git tag -s -m "$(RELEASE_TAG)" "$(RELEASE_TAG)"
	git push --follow-tags
	aur-release aurget "$(RELEASE_TAG)"

.PHONY: test fixtures.reset install uninstall release
