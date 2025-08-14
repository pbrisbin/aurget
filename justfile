# Run tests
test:
  FIXTURES_NO_RECORD=1 cram test

# Run tests while updating fixtures
fixtures-reset:
  cram test
  bin/clean-fixtures

# Build and package dist
dist version:
  just dist-manpages
  tar cvfz aurget-{{version}}.tar.gz \
    --transform 's/^dist/aurget-{{version}}/' dist

# Create dist/doc/ from doc/
dist-manpages:
  #TODO ronn --roff doc/*.ronn
  kramdown-man < doc/aurget.1.md > doc/aurget.1
  kramdown-man < doc/aurgetrc.5.md > doc/aurgetrc.5
  mkdir -p dist/doc
  find doc \
    -type f \
    -not -name '*.md' \
    -not -name '*.ronn' \
    -not -name 'index.txt' \
    -exec cp -v {} dist/doc \;

# Clean up from building dist
dist-clean:
  git clean -fdx dist doc
  rm -fv aurget-*.tar.gz
