  $ source "$TESTDIR/helper.sh"

Available upgrades are found

(Note: this just happens to be the updates required at the time I last ran the
specs with real network.)

  $ echo 'no' | aurget '-Syu' --nodeps
  :: Starting AUR upgrade...
  :: Searching AUR...
  
  Targets (4): aws-cli-1.10.8-1 codeclimate-0.21.0-1 google-cloud-sdk-98.0.0-1 python-botocore-1.3.30-1 
  
  Proceed with installation? [Y/n]  (no-eol)
