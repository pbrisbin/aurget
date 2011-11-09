# Author: Patrick Brisbin <pbrisbin@gmail.com>
pkgname=aurget
pkgver=3.4.0
pkgrel=2
pkgdesc="A simple Pacman-like interface to the AUR"
arch=('any')
url="http://pbrisbin.com/posts/$pkgname/"
license="GPL" 
backup=(etc/aurgetrc)
conflicts=('aurget-git' 'aurget-jordz')
install=aurget.install
source=($pkgname aurgetrc bash_completion)
depends=('sudo' 'curl' 'ca-certificates')
optdepends=('customizepkg: for auto-customizing packages')

# todo: empty build(), use package()
build() { 
  # install script
  install -D -m755 ./$pkgname "$pkgdir/usr/bin/$pkgname" || return 1

  # add rc file
  mkdir -p "$pkgdir/etc/"
  install -m644 ./aurgetrc "$pkgdir/etc/aurgetrc"

  # add completion file
  mkdir -p "$pkgdir/etc/bash_completion.d/"
  install -m644 ./bash_completion "$pkgdir/etc/bash_completion.d/aurget"
}
md5sums=('6a00e20ad72e6c378b1ecde74112d0ff'
         '3374a830198c439af6b98c7b263f83dc'
         'c97eaedb6bfce0cc250da66348e83651')
