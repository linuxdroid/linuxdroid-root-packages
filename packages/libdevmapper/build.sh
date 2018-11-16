LINUXDROID_PKG_HOMEPAGE=http://sourceware.org/lvm2/
LINUXDROID_PKG_DESCRIPTION="A device-mapper library from LVM2 package"
LINUXDROID_PKG_DEPENDS="libandroid-support"
LINUXDROID_PKG_VERSION=2.02.177
LINUXDROID_PKG_SRCURL=https://mirrors.kernel.org/sourceware/lvm2/releases/LVM2.${LINUXDROID_PKG_VERSION}.tgz
LINUXDROID_PKG_SHA256=4025a23ec9b15c2cb7486d151c29dc953b75efc4d452cfe9dbbc7c0fac8e80f2
LINUXDROID_PKG_BUILD_IN_SRC=yes

linuxdroid_step_make() {
    make -j"${LINUXDROID_MAKE_PROCESSES}" lib.device-mapper
}

linuxdroid_step_make_install() {
    cd libdm
    make install
}

