## [v4.7.2](https://github.com/pbrisbin/aurget/compare/v4.7.0...v4.7.2)

- [FIX] Don't use `--pkg` option (@FernandoBasso)

  This argument was removed from makepkg with the release of Pacman 5.0. When a
  PKGBUILD containing a split package is built, all packages contained therein
  are built.

  - https://lists.archlinux.org/pipermail/pacman-dev/2015-September/020353.html
  - https://projects.archlinux.org/pacman.git/commit/scripts/makepkg.sh.in?id=169287e494a5348687260a00697be06b36ba4434

  Note: when --install is used, all packages are installed. Users that don't
  want this are advised to build with aurget -Sb and install what they want with
  pacman -U directly.

  We could potentially simplify further, but removing this option should fix the
  current bug of aurget not working at all with the latest Pacman version.

## [v4.7.0](https://github.com/pbrisbin/aurget/compare/v4.6.0...v4.7.0)

- [FIX] URL for AUR RPCv5 (@inalelbeyli)

## [v4.6.0](https://github.com/pbrisbin/aurget/compare/v4.5.0...v4.6.0)

- [REMOVED] Deprecated `--aur4` option

## [v4.5.0](https://github.com/pbrisbin/aurget/compare/v4.4.5...v4.5.0)

- [FIX] Various bug-fixes for AUR RPCv4

## [v4.4.5](https://github.com/pbrisbin/aurget/compare/v4.4.4...v4.4.5)

- [FIX] Documentation of sample `aurgetrc` (@regdoug)

## [v4.4.4](https://github.com/pbrisbin/aurget/compare/v4.4.3...v4.4.4)

- [FIX] Transitive dependency bug

  Dependency resolution would add transitive dependencies after direct ones in
  the argument list, and so could fail to install.

## [v4.4.3](https://github.com/pbrisbin/aurget/compare/v4.4.2...v4.4.3)

- [FIX] Track package bases and names to ensure correct installation order

## [v4.4.2](https://github.com/pbrisbin/aurget/compare/v4.4.1...v4.4.2)

- [FIX] Install bash completion correctly

## [v4.4.1](https://github.com/pbrisbin/aurget/compare/v4.4.0...v4.4.1)

- [FIX] Installation order bug

## [v4.4.0](https://github.com/pbrisbin/aurget/compare/v4.3.3...v4.4.0)

- [NEW] Request sudo up front and cache throughout operation

  This allows users to initiate and installation, enter their password, and walk
  away while the build completes.

## [v4.3.3](https://github.com/pbrisbin/aurget/compare/v4.3.2...v4.3.3)

## [v4.3.2](https://github.com/pbrisbin/aurget/compare/v4.3.1...v4.3.2)

## [v4.3.1](https://github.com/pbrisbin/aurget/compare/v4.3.0...v4.3.1)

## [v4.3.0](https://github.com/pbrisbin/aurget/compare/v4.2.2...v4.3.0)

## [v4.2.2](https://github.com/pbrisbin/aurget/compare/v4.2.1...v4.2.2)

## [v4.2.1](https://github.com/pbrisbin/aurget/compare/v4.2.0...v4.2.1)

## [v4.2.0](https://github.com/pbrisbin/aurget/compare/v4.1.0...v4.2.0)

## [v4.1.0](https://github.com/pbrisbin/aurget/compare/v4.0.9...v4.1.0)

## [v4.0.9](https://github.com/pbrisbin/aurget/compare/v4.0.8...v4.0.9)

## [v4.0.8](https://github.com/pbrisbin/aurget/compare/v4.0.7...v4.0.8)

## [v4.0.7](https://github.com/pbrisbin/aurget/compare/v4.0.6...v4.0.7)

## [v4.0.6](https://github.com/pbrisbin/aurget/compare/v4.0.5...v4.0.6)

## [v4.0.5](https://github.com/pbrisbin/aurget/compare/v4.0.4...v4.0.5)

## [v4.0.4](https://github.com/pbrisbin/aurget/compare/v4.0.3...v4.0.4)

## [v4.0.3](https://github.com/pbrisbin/aurget/compare/v4.0.2...v4.0.3)

## [v4.0.2](https://github.com/pbrisbin/aurget/compare/v4.0.16...v4.0.2)

## [v4.0.16](https://github.com/pbrisbin/aurget/compare/v4.0.15...v4.0.16)

## [v4.0.15](https://github.com/pbrisbin/aurget/compare/v4.0.14...v4.0.15)

## [v4.0.14](https://github.com/pbrisbin/aurget/compare/v4.0.13...v4.0.14)

## [v4.0.13](https://github.com/pbrisbin/aurget/compare/v4.0.12...v4.0.13)

## [v4.0.12](https://github.com/pbrisbin/aurget/compare/v4.0.11...v4.0.12)

## [v4.0.11](https://github.com/pbrisbin/aurget/compare/v4.0.10...v4.0.11)

## [v4.0.10](https://github.com/pbrisbin/aurget/compare/v4.0.1...v4.0.10)

## [v4.0.1](https://github.com/pbrisbin/aurget/compare/v4.0.0...v4.0.1)

## [v4.0.0](https://github.com/pbrisbin/aurget/compare/v3.4.2...v4.0.0)

## [v3.4.2](https://github.com/pbrisbin/aurget/compare/v3.4.1...v3.4.2)

## [v3.4.1](https://github.com/pbrisbin/aurget/compare/v3.4.0...v3.4.1)

## [v3.4.0](https://github.com/pbrisbin/aurget/compare/v3.3.0...v3.4.0)

## [v3.3.0](https://github.com/pbrisbin/aurget/compare/v3.2.9...v3.3.0)

## [v3.2.9](https://github.com/pbrisbin/aurget/compare/v3.2.8...v3.2.9)

## [v3.2.8](https://github.com/pbrisbin/aurget/ompare/v3.2.7...v3.2.8)

## [v3.2.7](https://github.com/pbrisbin/aurget/ompare/v3.2.6...v3.2.7)

## [v3.2.6](https://github.com/pbrisbin/aurget/ompare/v3.2.5...v3.2.6)

## [v3.2.5](https://github.com/pbrisbin/aurget/ompare/v3.2.4...v3.2.5)

## [v3.2.4](https://github.com/pbrisbin/aurget/ompare/v3.2.13...v3.2.4)

## [v3.2.13](https://github.com/pbrisbin/aurget/compare/v3.2.12...v3.2.13)

## [v3.2.12](https://github.com/pbrisbin/aurget/compare/v3.2.11...v3.2.12)

## [v3.2.11](https://github.com/pbrisbin/aurget/compare/v3.2.10...v3.2.11)

## [v3.2.10](https://github.com/pbrisbin/aurget/tree/v3.2.10)

This is the first version where we begin tracking changes.
