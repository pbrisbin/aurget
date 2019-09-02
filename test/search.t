  $ source "$TESTDIR/helper.sh"

Searching for "aur helper"

  $ aurget -Ss --nocolor aur helper
  aur/aurget 4.6.0-1 
      A simple, Pacman-like AUR helper
  aur/burgaur-git 2.2-2 
      A delicious AUR helper. Made from cower.
  aur/burgaur 2.2-2 
      A delicious AUR helper. Made from cower.
  aur/gutaur 1.0.3-1 
      An AUR helper. PKGBUILD at https://github.com/gutenye/gutaur/tree/master/misc/aur
  aur/pacaur-git 4.5.4-1 
      An AUR helper that minimizes user interaction
  aur/pacaur 4.5.4-1 
      An AUR helper that minimizes user interaction
  aur/pkgbuilder-git 4.2.4.r1.gc797913-1 
      A Python AUR helper/library. (git version)
  aur/pkgbuilder 4.2.4-2 
      A Python AUR helper/library.
  aur/raur-git 27.21c9303-1 
      A simple AUR helper in Ruby
  aur/spinach 0.5.13-1 
      Another AUR helper written in Bash
  aur/vdr-api 2.2.0-1 
      Dummy package to fix dependency resolution with AUR helpers
  aur/yaah 1.1.1-1 
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
  spinach
  vdr-api
  yaah

Sorting by votes

  $ aurget -Ssq --nocolor --sort votes aur helper
  pacaur
  aurget
  pkgbuilder
  pacaur-git
  burgaur
  gutaur
  pkgbuilder-git
  vdr-api
  yaah
  raur-git
  spinach
  burgaur-git

Searching for info on chruby and aurget

  $ aurget -Ssi --nocolor chruby aurget
  Repository  : aur
  Name        : aurget
  Version     : 4.6.0-1
  URL         : https://github.com/pbrisbin/aurget
  Out of date : No
  Votes       : 147
  Description : A simple, Pacman-like AUR helper
  
  Repository  : aur
  Name        : chruby
  Version     : 0.3.9-1
  URL         : https://github.com/postmodern/chruby
  Out of date : No
  Votes       : 21
  Description : Changes the current ruby. Supports both zsh and bash.
  

Searching for info with "s

  $ aurget -Ssi --nocolor 3dsconv
  Repository  : aur
  Name        : 3dsconv
  Version     : 4.1-0
  URL         : https://github.com/ihaveamac/3dsconv
  Out of date : Yes
  Votes       : 2
  Description : Tool to convert Nintendo 3DS CTR Cart Image files (CCI, ".3ds") to the CTR Importable Archive format (CIA).
  
