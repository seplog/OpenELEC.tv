PKG_NAME="connman_dmenu"
PKG_VERSION="0595a144eb58c30b5c15fbf40e6410b497227927"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="GPL2"
PKG_SITE="http://github.com/taylorchu/connman_dmenu"
PKG_GIT_URL="https://github.com/march-linux/connman_dmenu.git"
PKG_DEPENDS_TARGET="dmenu"
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="dmenu configuration menu for connman"
PKG_LONGDESC="dmenu configuration menu for connman"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_KEEP_CHECKOUT="no"

make_target() {
  : # nop()
}

makeinstall_target() {
  make DESTDIR=$INSTALL
}
