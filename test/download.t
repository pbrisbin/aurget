  $ source "$TESTDIR/helper.sh"

Downloading the taurball for aurget

  $ aurget -Sd --builddir "$PWD" --noedit --nodeps --noconfirm aurget
  warning: * (glob)
  :: Searching AUR...
  
  Targets (1): aurget-4.6.0-1 
  
  Proceed with installation? [Y/n] Y
  :: Retrieving taurball from AUR...

  $ tar xf aurget.tar.gz
  > ls aurget
  Makefile
  PKGBUILD

Downloading a taurball with special characters

  $ aurget -Sd --builddir "$PWD" --noedit --nodeps --noconfirm bisonc++
  warning: * (glob)
  :: Searching AUR...
  
  Targets (1): bisonc++-4.13.00-1 
  
  Proceed with installation? [Y/n] Y
  :: Retrieving taurball from AUR...

  $ tar xf bisonc++.tar.gz
  > ls bisonc++
  PKGBUILD
  manual_license.patch
