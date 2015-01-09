  $ source "$TESTDIR/helper.sh"

Downloading the taurball for aurget

  $ aurget -Sd --builddir "$PWD" --noedit --nodeps --noconfirm aurget
  :: Searching AUR...
  
  Targets (1): aurget-4.0.12-1 
  
  Proceed with installation? [Y/n] Y
  :: Retrieving taurball from AUR...

  $ tar xf aurget.tar.gz
  > ls aurget
  PKGBUILD
  aurget
  aurget.1
  aurget.install
  aurgetrc
  aurgetrc.5
  bash_completion
  zsh_completion
