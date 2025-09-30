> [!NOTE]
> All of my GitHub repositories have been **archived** and will be migrated to
> Codeberg as I next work on them. This repository either now lives, or will
> live, at:
>
> https://codeberg.org/pbrisbin/aurget
>
> If you need to report an Issue or raise a PR, and this migration hasn't
> happened yet, send an email to me@pbrisbin.com.

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
just test
```

### Release

To trigger automated release, push a [conventionally-formatted commit][cc] to
`main`. In short,

- `fix: ...` to trigger a patch release
- `feat: ...` to trigger a minor release
- `<type>!:` or a `BREAKING CHANGE: ...` footer to trigger a major release

[cc]: https://www.conventionalcommits.org/en/v1.0.0/#summary

---

[CHANGELOG](https://github.com/pbrisbin/aurget/releases) | [LICENSE](./LICENSE)
