# $Id$
# Maintainer: Chris Fordham <chris [at] fordham-nagy [dot] id [dot] au> aka flaccid
# Package Source: https://github.com/flaccid/archlinux-packages/blob/master/python-colorama-0.2.5/PKGBUILD

pkgname=python-colorama-0.2.5
_pkgname=python-colorama
pkgver=0.2.5
pkgrel=1
pkgdesc="Python API for cross-platform colored terminal text."
arch=('any')
url="http://pypi.python.org/pypi/colorama"
license=('BSD')
depends=('python')
source=(https://pypi.python.org/packages/source/c/colorama/colorama-$pkgver.tar.gz)
md5sums=('c76f67ead9dc7c83700c57695ebb741e')
conflicts=('python-colorama')
replaces=('python-colorama')

build() {
  cd "$srcdir/colorama-$pkgver"

  python setup.py build
}

package() {
  cd "$srcdir/colorama-$pkgver"

  python setup.py install --root=$pkgdir --optimize=1
}

# vim:set ts=2 sw=2 et:

