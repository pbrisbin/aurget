# Author: Patrick Brisbin <pbrisbin@gmail.com>
pkgname=aurget
pkgver=3.4.1
pkgrel=2
pkgdesc="A simple Pacman-like interface to the AUR"
arch=('any')
url="http://pbrisbin.com/posts/$pkgname/"
license=('GPL')
backup=(etc/aurgetrc)
install=$pkgname.install
source=($pkgname aurgetrc bash_completion)
depends=('sudo')
optdepends=('customizepkg: for auto-customizing packages')

package() {
  # install script
  install -Dm755 $pkgname "$pkgdir/usr/bin/$pkgname"

  # add rc file
  install -Dm644 aurgetrc "$pkgdir/etc/aurgetrc"

  # add completion file
  install -Dm644 bash_completion "$pkgdir/etc/bash_completion.d/aurget"
}
md5sums=('1c803746be10ee8d3c73231dfef53d5e'
         '3374a830198c439af6b98c7b263f83dc'
         '4f6eab247b38a7a019b5d2b6bea28252')
