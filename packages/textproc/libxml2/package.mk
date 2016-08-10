PKG_NAME="libxml2"
PKG_VERSION="2.9.3"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="MIT"
PKG_SITE="http://xmlsoft.org"
PKG_URL="ftp://xmlsoft.org/libxml2/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_HOST="toolchain zlib:host"
PKG_DEPENDS_TARGET="toolchain zlib Python"
PKG_PRIORITY="optional"
PKG_SECTION="textproc"
PKG_SHORTDESC="libxml: XML parser library for Gnome"
PKG_LONGDESC="The libxml package contains an XML library, which allows you to manipulate XML files. XML (eXtensible Markup Language) is a data format for structured document interchange via the Web."
PKG_IS_ADDON="no"

PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_ALL="ac_cv_header_ansidecl_h=no \
             --enable-static \
             --enable-shared \
             --disable-silent-rules \
             --enable-ipv6 \
             --with-zlib=$ROOT/$TOOLCHAIN \
             --without-lzma"

PKG_CONFIGURE_OPTS_HOST="$PKG_CONFIGURE_OPTS_ALL --with-zlib=$ROOT/$TOOLCHAIN --without-python"

PKG_CONFIGURE_OPTS_TARGET="$PKG_CONFIGURE_OPTS_ALL --with-zlib=$SYSROOT_PREFIX/usr --with-sysroot=$SYSROOT_PREFIX --with-python=$SYSROOT_PREFIX/usr/bin/python"

post_makeinstall_target() {
  $SED "s:\(['= ]\)/usr:\\1$SYSROOT_PREFIX/usr:g" $SYSROOT_PREFIX/usr/bin/xml2-config

  rm -rf $INSTALL/usr/bin
  rm -rf $INSTALL/usr/lib/xml2Conf.sh
}
