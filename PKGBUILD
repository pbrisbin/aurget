# Author: Patrick Brisbin <pbrisbin@gmail.com>
pkgname=aurget
pkgver=4.0.10
pkgrel=1
pkgdesc="A simple Pacman-like interface to the AUR"
arch=('any')
url="https://github.com/pbrisbin/$pkgname"
license=('GPL')
install=$pkgname.install
source=($pkgname aurgetrc bash_completion zsh_completion)
optdepends=('customizepkg: for auto-customizing packages')

package() {
  install -Dm755 $pkgname "$pkgdir/usr/bin/$pkgname"

  install -Dm644 aurgetrc "$pkgdir/usr/share/aurget/config"
  install -Dm644 bash_completion "$pkgdir/etc/bash_completion.d/aurget"
  install -Dm644 zsh_completion  "$pkgdir/usr/share/zsh/site-functions/_aurget"
}
md5sums=('f1955f79769dbdb534b5fd3bc01d3d1a'
         '74ba392bc565e9eee8d5ea4eec3b671e'
         '34d6d06117914d92d4c1c5572abb83e5'
         '039cf1997cce9e9b7616a8bb96b66f81')
