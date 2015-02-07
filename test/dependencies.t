  $ source "$TESTDIR/helper.sh"

Resolving dependencies for aws-cli

  $ echo n | aurget -Sb --builddir "$PWD" --noedit --deps aws-cli
  :: Resolving dependencies...
  :: Searching AUR...
  
  Targets (6): python-rsa-3.1.2-3.1.2-1 python-bcdoc-0.12.2-1 python-colorama-0.2.5-0.2.5-1 python-jmespath-0.5.0-1 python-botocore-0.76.0-1 aws-cli-1.7.1-1 
  
  Proceed with installation? [Y/n]  (no-eol)
