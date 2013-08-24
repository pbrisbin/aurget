  $ source "$TESTDIR/helper.sh"

Prints Usage and directions to the manpage

  $ aurget --help
  Usage: aurget [ -h | -S* [ --options ] [ -- ] <arguments> ]
  
    Options:
  
          -S  <package>   process <package> using your default sync_mode
  
          -Sd <package>   download <package>
          -Sb <package>   download and build <package>
          -Sy <package>   download, build, and install <package>
  
          -Su             process available upgrades using your default sync_mode
  
          -Sdu            download available upgrades
          -Sbu            download and build available upgrades
          -Syu            download, build, and install available upgrades
  
          -Ss  <term>     search aur for <term>
          -Ssq <term>     search aur for <term>, print only package names
          -Sp  <package>  print the PKGBUILD for <package>
          -Si  <package>  print extended info for <package>
  
          --builddir <directory>
                          build in <directory>
  
          --devel         only affects -Su, add all development packages
  
          --deps          resolve dependencies
          --nodeps        don't resolve dependencies
  
          --edit          prompt to edit all pkgbuilds
          --noedit        don't prompt to edit any pkgbuilds
  
          --discard       discard source files after building
          --nodiscard     don't discard source files after building
  
          --nocolor       disable coloring
  
          --noconfirm     auto-answer all prompts
  
          --ignore <package>
                          add additional packages to be ignored
  
          --config <file> source <file> for user configuration
  
          -h, --help      display this
  
    Any unrecognized options will be passed directly to makepkg.
  
