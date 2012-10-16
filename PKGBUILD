# Author: Patrick Brisbin <pbrisbin@gmail.com>
pkgname=aurget
pkgver=3.4.1
pkgrel=1
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
md5sums=('da42c106cb47ad747d56a64973aac79c'
         '3374a830198c439af6b98c7b263f83dc'
         'c97eaedb6bfce0cc250da66348e83651')
