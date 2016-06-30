PKG_NAME="qemu"
PKG_VERSION="2.6.0"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="GPL"
PKG_SITE="http://www.qemu.org"
PKG_URL="http://wiki.qemu.org/download/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain SDL2 curl libgcrypt bzip2"
PKG_PRIORITY="optional"
PKG_SECTION="virtualization"
PKG_SHORTDESC="QEMU + Kernel-based Virtual Machine userland tools"
PKG_LONGDESC="QEMU + Kernel-based Virtual Machine userland tools"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

TARGET_CONFIGURE_OPTS="--prefix=/usr \
                       --bindir=/usr/bin \
                       --sbindir=/usr/sbin \
                       --sysconfdir=/etc \
                       --libexecdir=/usr/lib \
                       --localstatedir=/var"

PKG_CONFIGURE_OPTS_TARGET="--target-list=x86_64-softmmu \
                           --audio-drv-list=alsa \
                           --enable-gcrypt \
                           --enable-sdl \
                           --with-sdlabi=2.0 \
                           --enable-virtfs \
                           --enable-curl \
                           --enable-kvm \
                           --enable-attr \
                           --enable-vhost-net \
                           --enable-libusb \
                           --enable-lzo \
                           --enable-bzip2"

export CXXFLAGS="$CXXFLAGS -I$SYSROOT_PREFIX/usr/include"
export CFLAGS="$CFLAGS -I$SYSROOT_PREFIX/usr/include -I$SYSROOT_PREFIX/usr/include/SDL2"
export LDFLAGS="$LDFLAGS -I$SYSROOT_PREFIX/usr/lib -lbz2 -lSDL2"
