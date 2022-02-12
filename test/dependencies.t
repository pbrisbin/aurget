  $ source "$TESTDIR/helper.sh"

Resolving dependencies for aws-cli-v2

  $ echo n | aurget -Sb --builddir "$PWD" --noedit --deps aws-cli-v2
  warning: * (glob)
  :: Resolving dependencies...
  :: Searching AUR...
  
  Targets (2): python-botocore-v2-git-r7659.1a4caa8d1-1 aws-cli-v2-2.0.60-1 
  
  Proceed with installation? [Y/n]  (no-eol)
