  $ source "$TESTDIR/helper.sh"

Available upgrades are found

(Note: this just happens to be the updates required at the time I last ran the
specs with real network.)

  $ echo 'no' | aurget '-Syu' --nodeps
  :: Starting AUR upgrade...
  :: Searching AUR...
  
  Targets (17): aurget-4.7.2-1 chruby-0.3.9-3 codeclimate-0.34.1-1 csslint-1.0.5-1 downgrade-6.2.1-0 google-cloud-sdk-259.0.0-1 google-talkplugin-5.41.3.0-1 laptop-mode-tools-1.72.2-4 lnav-0.8.5-1 neovim-symlinks-3-1 python-behave-1.2.6-1 python-parse_type-0.5.2-1 python2-notify2-0.3.1-2 rcm-1.3.3-1 ruby-install-0.7.0-1 rxvt-unicode-patched-9.22-11 xrectsel-0.3.2-1 
  
  Proceed with installation? [Y/n]  (no-eol)

Upgrades with some additional packages

  $ echo 'no' | aurget '-Syu' --nodeps cram vips
  :: Starting AUR upgrade...
  :: Searching AUR...
  
  Targets (19): aurget-4.7.2-1 chruby-0.3.9-3 codeclimate-0.34.1-1 csslint-1.0.5-1 downgrade-6.2.1-0 google-cloud-sdk-261.0.0-1 google-talkplugin-5.41.3.0-1 laptop-mode-tools-1.72.2-4 lnav-0.8.5-1 neovim-symlinks-3-1 python-behave-1.2.6-1 python-parse_type-0.5.2-1 python2-notify2-0.3.1-2 rcm-1.3.3-1 ruby-install-0.7.0-1 rxvt-unicode-patched-9.22-11 xrectsel-0.3.2-1 cram-0.6-1 vips-8.8.2-1 
  
  Proceed with installation? [Y/n]  (no-eol)
