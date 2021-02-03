  $ source "$TESTDIR/helper.sh"

Resolving dependencies for aws-cli

  $ echo n | aurget -Sb --builddir "$PWD" --noedit --deps aws-cli
  :: Resolving dependencies...
  warning: * (glob)
  :: Searching AUR...
  
  Targets (2): python-botocore-1.3.30-1 aws-cli-1.10.8-1 
  
  Proceed with installation? [Y/n]  (no-eol)
