  $ source "$TESTDIR/helper.sh"

Available upgrades are found

  $ echo 'no' | aurget '-Syu' --nodeps
  :: Starting AUR upgrade...
  warning: underscorejs: local (1.8.2-1) is newer than aur (1.8.1-1)
  :: Searching AUR...
  
  Targets (1): docker-compose-1.3.3-1 
  
  Proceed with installation? [Y/n]  (no-eol)
