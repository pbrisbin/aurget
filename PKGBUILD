# Author: Patrick Brisbin <pbrisbin@gmail.com>
pkgname=aurget
pkgver=4.0.0
pkgrel=1
pkgdesc="A simple Pacman-like interface to the AUR"
arch=('any')
url="https://github.com/pbrisbin/$pkgname"
license=('GPL')
install=$pkgname.install
source=($pkgname aurgetrc bash_completion)
optdepends=('customizepkg: for auto-customizing packages')

package() {
  install -Dm755 $pkgname "$pkgdir/usr/bin/$pkgname"

  install -Dm644 aurgetrc "$pkgdir/usr/share/aurget/config"

  install -Dm644 bash_completion "$pkgdir/etc/bash_completion.d/aurget"
}
md5sums=('801f5ba89647f5456f5660d2cf6287db'
         'c31c9904960fc1573787e11f002f0fe9'
         '6cf325e23026cb53f348a06e9c75cf09')
