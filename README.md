**NOTE**: This project is not actively maintained. I'm happy to accept PRs and
cut releases, but I am no longer working on it. See https://github.com/pbrisbin/aurget/issues/66.

# Aurget

A safe and simple, pacman-like interface to the AUR.

## Installation

Study the Arch [wiki][], then manually build and install [aurget][].

[wiki]:   https://wiki.archlinux.org/index.php/AUR
[aurget]: https://aur.archlinux.org/packages/aurget/

## Usage

```console
aurget --help
man 1 aurget
man 5 aurgetrc
```

### Development & Testing

Install cram: https://aur.archlinux.org/packages/cram/

```
make test
```

---

[CHANGELOG](./CHANGELOG.md) | [LICENSE](./LICENSE)
