PKG_NAME="virt-manager"
PKG_VERSION="1.3.2"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="GPL-2"
PKG_SITE="http://www.virt-manager.org/"
PKG_URL="https://fedorahosted.org/released/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain libvirt-python libvirt-glib libxml2 ipaddr pygobject libosinfo gtk+ gtk-vnc spice-gtk intltool" # dconf gnome-icon-theme
PKG_PRIORITY="optional"
PKG_SECTION="virtualization"
PKG_SHORTDESC="A graphical tool for administering virtual machines"
PKG_LONGDESC="A graphical tool for administering virtual machines"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_make_target() {
  export PYTHONXCPREFIX="$SYSROOT_PREFIX/usr"
  export LDSHARED="$CC -shared"
}

configure_target() {
  python setup.py configure \
    --qemu-user=root \
    --default-graphics=spice \
    --prefix=/usr
}

make_target() {
  python setup.py build
}

makeinstall_target() {
  python setup.py install --root=$INSTALL --prefix=/usr
}
