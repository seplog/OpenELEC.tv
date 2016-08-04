PKG_NAME="dnsmasq"
PKG_VERSION="2.75"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2"
PKG_SITE="http://www.thekelleys.org.uk/dnsmasq/doc.html"
PKG_URL="http://www.thekelleys.org.uk/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain dbus"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="Small forwarding DNS server"
PKG_LONGDESC="Small forwarding DNS server"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  make \
    LDFLAGS="-Wl,-O1 -Wl,--as-needed" \
    COPTS="-DNO_AUTH -DNO_CONNTRACK -DHAVE_DBUS -DNO_IDN -DNO_LUASCRIPT -DHAVE_SCRIPT -DNO_TFTP -DNO_DNSSEC -DNO_DNSSEC_STATIC" \
    CONFFILE="/etc/dnsmasq.conf" \
    all
}

makeinstall_target() {
  make \
    PREFIX=$INSTALL/usr \
    install
}
