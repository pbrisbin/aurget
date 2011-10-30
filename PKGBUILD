# Author: Patrick Brisbin <pbrisbin@gmail.com>
pkgname=aurget
pkgver=3.3.0
pkgrel=1
pkgdesc="A simple Pacman-like interface to the AUR"
arch=('any')
url="http://pbrisbin.com/posts/$pkgname/"
license="GPL" 
backup=(etc/aurgetrc)
conflicts=('aurget-git' 'aurget-jordz')
install=aurget.install
source=($pkgname aurgetrc bash_completion)
depends=('sudo' 'curl')
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
md5sums=('0940103c67a46df1c12e858e3378b025'
         '3374a830198c439af6b98c7b263f83dc'
         '5d80c86dab678cef416e079b6fe4b0a8')
