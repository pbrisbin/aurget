  $ source "$TESTDIR/helper.sh"

Searching for "aur helper"

  $ aurget -Ss --nocolor aur helper
  aur/aurget 4.5.0-1 
      A simple, Pacman-like AUR helper
  aur/burgaur-git 2.0-1 
      A delicious AUR helper. Made from cower.
  aur/burgaur 2.0-1 
      A delicious AUR helper. Made from cower.
  aur/gutaur 1.0.3-1 
      An AUR helper. PKGBUILD at https://github.com/gutenye/gutaur/tree/master/misc/aur
  aur/pacaur-git 4.2.27-1 
      A fast workflow AUR helper using cower as backend
  aur/pacaur 4.2.27-1 
      A fast workflow AUR helper using cower as backend
  aur/pkgbuilder-git 4.2.0.r1.gad86452-1 
      A Python AUR helper/library. (git version)
  aur/pkgbuilder 4.2.0-1 
      A Python AUR helper/library.
  aur/raur-git 27.21c9303-1 
      A simple AUR helper in Ruby
  aur/yaah 0.6.4-1 
      Yet another AUR helper

Searching quietly for "aur helper"

  $ aurget -Ssq --nocolor aur helper
  aurget
  burgaur-git
  burgaur
  gutaur
  pacaur-git
  pacaur
  pkgbuilder-git
  pkgbuilder
  raur-git
  yaah

Sorting by votes

  $ aurget -Ssq --nocolor --sort votes aur helper
  pacaur
  aurget
  pkgbuilder
  pacaur-git
  burgaur
  pkgbuilder-git
  gutaur
  raur-git
  yaah
  burgaur-git

Searching for info on chruby and aurget

  $ aurget -Ssi --nocolor chruby aurget
  Repository  : aur
  Name        : aurget
  Version     : 4.5.0-1
  URL         : https://github.com/pbrisbin/aurget
  Out of date : No
  Votes       : 140
  Description : A simple, Pacman-like AUR helper
  
  Repository  : aur
  Name        : chruby
  Version     : 0.3.9-1
  URL         : https://github.com/postmodern/chruby
  Out of date : No
  Votes       : 16
  Description : Changes the current ruby. Supports both zsh and bash.
  
