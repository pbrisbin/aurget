  $ source "$TESTDIR/helper.sh"

Available upgrades are found

(Note: this just happens to be the updates required at the time I last ran the
specs with real network.)

  $ echo 'no' | aurget '-Syu' --nodeps
  warning: * (glob)
  :: Starting AUR upgrade...
  :: Searching AUR...
  
  Targets (18): aurget-4.7.3-0 chruby-0.3.9-3 codeclimate-0.34.1-1 cram-0.7-2 csslint-1.0.5-1 downgrade-9.0.0-1 google-cloud-sdk-326.0.0-1 laptop-mode-tools-1.74-1 lnav-0.9.0-1 neovim-symlinks-4-1 python-bcdoc-0.16.0-1 python-behave-1.2.7.dev1-1 python-parse_type-0.5.6-1 python2-notify2-0.3.1-2 rcm-1.3.4-1 ruby-install-0.8.1-1 rxvt-unicode-patched-9.22-11 xrectsel-0.3.2-1 
  
  Proceed with installation? [Y/n]  (no-eol)

Upgrades with some additional packages

  $ echo 'no' | aurget '-Syu' --nodeps cram
  warning: * (glob)
  :: Starting AUR upgrade...
  :: Searching AUR...
  
  Targets (18): aurget-4.7.3-0 chruby-0.3.9-3 codeclimate-0.34.1-1 cram-0.7-2 csslint-1.0.5-1 downgrade-9.0.0-1 google-cloud-sdk-326.0.0-1 laptop-mode-tools-1.74-1 lnav-0.9.0-1 neovim-symlinks-4-1 python-bcdoc-0.16.0-1 python-behave-1.2.7.dev1-1 python-parse_type-0.5.6-1 python2-notify2-0.3.1-2 rcm-1.3.4-1 ruby-install-0.8.1-1 rxvt-unicode-patched-9.22-11 xrectsel-0.3.2-1 
  
  Proceed with installation? [Y/n]  (no-eol)
