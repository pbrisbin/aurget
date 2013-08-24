  $ source "$TESTDIR/helper.sh"

Available upgrades are found

  $ echo 'no' | aurget '-Syu' --nodeps
  :: Starting AUR upgrade...
  warning: cram: local (0.6-1) is newer than aur (0.5-2)
  :: Searching AUR...
  
  Targets (1): heroku-toolbelt-2.40.0-1 
  
  Proceed with installation? [Y/n]  (no-eol)
