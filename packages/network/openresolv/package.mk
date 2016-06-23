PKG_NAME="openresolv"
PKG_VERSION="3.8.1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://roy.marples.name/projects/openresolv/"
PKG_URL="http://roy.marples.name/downloads/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="openresolv: A framework for managing DNS information"
PKG_LONGDESC="openresolv: A framework for managing DNS information"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--libexecdir=/lib/resolvconf"

pre_configure_target() {
  cd $ROOT/$PKG_BUILD
  rm -rf .$TARGET_NAME
}

post_makeinstall_target() {
  mkdir -p $INSTALL/usr/config
  cp $PKG_DIR/config/resolvconf.conf $INSTALL/usr/config

  rm -f $INSTALL/etc/resolvconf.conf

  mkdir -p $INSTALL/etc
  ln -sf /storage/.config/resolvconf.conf

  ln -sf /run/network/resolv.conf $INSTALL/etc/resolv.conf
}
