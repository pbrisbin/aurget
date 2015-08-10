  $ source "$TESTDIR/helper.sh"

Downloading the taurball for aurget

  $ aurget -Sd --builddir "$PWD" --noedit --nodeps --noconfirm aurget
  :: Searching AUR...
  
  Targets (1): aurget-4.5.0-1 
  
  Proceed with installation? [Y/n] Y
  :: Retrieving taurball from AUR...

  $ tar xf aurget.tar.gz
  > ls aurget
  Makefile
  PKGBUILD
