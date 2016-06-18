PKG_NAME="bash"
PKG_VERSION="4.3.30"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://tiswww.case.edu/php/chet/bash/bashtop.html"
PKG_URL="http://ftp.hosteurope.de/mirror/ftp.gnu.org/gnu/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain readline"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="bash: The standard GNU Bourne again shell"
PKG_LONGDESC="bash: The standard GNU Bourne again shell"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--prefix=/usr \
                           --docdir=/usr/share/doc/$PKG_NAME-$PKG_VERSION \
                           --without-bash-malloc \
                           --with-installed-readline"
post_makeinstall_target() {
  ln -sf $SYSROOT_PREFIX/usr/bin/bash $ROOT/$TOOLCHAIN/bin/bash
}
