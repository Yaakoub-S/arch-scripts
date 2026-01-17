# Maintainer: Yaâkoub Saouti <yaakoubsaouti2001@gmail.com>
pkgname=arch-scripts
pkgver=1.b54f007
pkgrel=1
pkgdesc='My archlinux scripts'
arch=('any')
url='https://github.com/Yaakoub-S/arch-scripts'
license=('MIT')
depends=('bash')
makedepends=('git')
source=('git+https://github.com/Yaakoub-S/arch-scripts')
sha512sums=('SKIP')

pkgver() {
	cd $pkgname

	( set -o pipefail
		git describe --long --tags --abbrev=7 2>/dev/null |
		sed 's/\([^-]*-g\)/r\1/;s/-/./g' ||
		printf "%s.%s" "$(git rev-list --count HEAD)" \
		"$(git rev-parse --short=7 HEAD)"	
	)
}

package() {
	cd "$srcdir/$pkgname"
	make DESTDIR="$pkgdir" install
}
