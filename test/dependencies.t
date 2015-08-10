  $ source "$TESTDIR/helper.sh"

Resolving dependencies for aws-cli

  $ echo n | aurget -Sb --builddir "$PWD" --noedit --deps aws-cli
  :: Resolving dependencies...
  :: Searching AUR...
  
  Targets (2): python-bcdoc-0.12.2-1 aws-cli-1.7.44-1 
  
  Proceed with installation? [Y/n]  (no-eol)
