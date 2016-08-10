PKG_NAME="libxslt"
PKG_VERSION="1.1.28"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="MIT"
PKG_SITE="http://xmlsoft.org/xslt/"
PKG_URL="ftp://xmlsoft.org/libxml2/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_HOST="toolchain libxml2:host"
PKG_DEPENDS_TARGET="toolchain libxml2"
PKG_PRIORITY="optional"
PKG_SECTION="textproc"
PKG_SHORTDESC="libxslt"
PKG_LONGDESC="libxslt"

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_HOST="  ac_cv_header_ansidecl_h=no \
                           --enable-static \
                           --disable-shared \
                           --without-python \
                           --with-libxml-prefix=$ROOT/$TOOLCHAIN \
                           --without-crypto"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_header_ansidecl_h=no \
                           --enable-static \
                           --disable-shared \
                           PYTHON_INCLUDES=$ROOT/$TOOLCHAIN/include/python2.7 \
                           --with-python=$SYSROOT_PREFIX/usr/bin/python \
                           --with-libxml-prefix=$SYSROOT_PREFIX/usr \
                           --without-crypto"

pre_make_target() {
  find ./ -type f -name Makefile -exec sed -i "s|/usr/include/python2.7|$ROOT/$TOOLCHAIN/include/python2.7|g" {} \;
}

post_makeinstall_target() {
  $SED "s:\(['= ]\)/usr:\\1$SYSROOT_PREFIX/usr:g" $SYSROOT_PREFIX/usr/bin/xslt-config

  rm -rf $INSTALL/usr/bin/xsltproc
  rm -rf $INSTALL/usr/lib/xsltConf.sh
}
