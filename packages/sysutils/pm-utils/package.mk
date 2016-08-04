PKG_NAME="pm-utils"
PKG_VERSION="1.4.1"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="GPL-2"
PKG_SITE="https://pm-utils.freedesktop.org/"
PKG_URL="https://pm-utils.freedesktop.org/releases/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain dbus util-linux alsa-utils hdparm ethtool wireless_tools"
PKG_PRIORITY="optional"
PKG_SECTION="sysutils"
PKG_SHORTDESC="Suspend and hibernation utilities"
PKG_LONGDESC="Suspend and hibernation utilities"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

post_makeinstall_target() {
  mkdir -p $INSTALL/usr/config/
  cp $INSTALL/etc/pm $INSTALL/usr/config/ -Rf
  rm -Rf $INSTALL/etc/pm
  ln -sf /storage/.config/pm $INSTALL/etc/

  # Install wireless-tools its a unofficial plugin...
  mkdir -p $INSTALL/bin
  cp -P $(get_build_dir wireless_tools)/iwmulticall $INSTALL/bin/iwspy
  cp -P $(get_build_dir wireless_tools)/iwmulticall $INSTALL/bin/iwlist
  cp -P $(get_build_dir wireless_tools)/iwmulticall $INSTALL/bin/iwpriv
  cp -P $(get_build_dir wireless_tools)/iwmulticall $INSTALL/bin/iwgetid
  cp -P $(get_build_dir wireless_tools)/iwmulticall $INSTALL/bin/iwconfig
}
