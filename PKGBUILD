# Author: Patrick Brisbin <pbrisbin@gmail.com>
pkgname=aurget
pkgver=4.0.3
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
md5sums=('44753ef3a08d4002fc46ae2729ecc3ef'
         '94e1873c566491f1bad3df3c11a404ca'
         '34d6d06117914d92d4c1c5572abb83e5')
