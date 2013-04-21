# Author: Patrick Brisbin <pbrisbin@gmail.com>
pkgname=aurget
pkgver=4.0.1
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
md5sums=('60ff1a106679a252c07787eb2371c8d4'
         'c31c9904960fc1573787e11f002f0fe9'
         '5955e71197018961ed61f89591e5e9b4')
