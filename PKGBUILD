# Author: Patrick Brisbin <pbrisbin@gmail.com>
pkgname=aurget
pkgver=4.0.11
pkgrel=1
pkgdesc="A simple Pacman-like interface to the AUR"
arch=('any')
url="https://github.com/pbrisbin/$pkgname"
license=('GPL')
install=$pkgname.install
source=(
  $pkgname
  ${pkgname}.1
  ${pkgname}rc.5
  ${pkgname}rc
  bash_completion
  zsh_completion
)
optdepends=('customizepkg: for auto-customizing packages')

package() {
  install -Dm755 $pkgname        "$pkgdir/usr/bin/$pkgname"
  install -Dm644 ${pkgname}.1    "$pkgdir/usr/share/man/man1/${pkgname}.1"
  install -Dm644 ${pkgname}rc.5  "$pkgdir/usr/share/man/man5/${pkgname}rc.5"
  install -Dm644 ${pkgname}rc    "$pkgdir/usr/share/doc/aurget/samples/${pkgname}rc"
  install -Dm644 bash_completion "$pkgdir/etc/bash_completion.d/aurget"
  install -Dm644 zsh_completion  "$pkgdir/usr/share/zsh/site-functions/_aurget"
}
md5sums=('b5136ba2f3f2d2d6034576aa2a73c4ac'
         '8630f2ca36bc0f4603c58f1f49bd9338'
         'aaaeaeb7169e14b807fbb29b346263d9'
         '1970f7841118c33a10aabe87eaf38f65'
         '2d33fc9c6d8b8c9219c7a91c90f328bc'
         'e8df58f145a7d487cccb0e7f6b1ec8aa')
