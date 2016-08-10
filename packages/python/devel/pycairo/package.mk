PKG_NAME="pycairo"
PKG_VERSION="1.8.10"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-3"
PKG_SITE="http://cairographics.org/pycairo/"
PKG_URL="https://www.cairographics.org/releases/py2cairo-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python cairo expat"
PKG_PRIORITY="optional"
PKG_SECTION="python/devel"
PKG_SHORTDESC="Python bindings for the cairo library"
PKG_LONGDESC="Python bindings for the cairo library"

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX

unset LIBTOOL

unpack() {
  tar xf $ROOT/$SOURCES/$PKG_NAME/py2cairo-$PKG_VERSION.tar.gz -C $ROOT/$BUILD  
}

pre_configure_target() {
  cd $ROOT/$PKG_BUILD
  rm -rf .$TARGET_NAME
}
